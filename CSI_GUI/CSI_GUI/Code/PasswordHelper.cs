
using Microsoft.AspNetCore.Cryptography.KeyDerivation;
using System;
using System.Runtime.CompilerServices;
using System.Security.Cryptography;

namespace CSI_GUI.Code
{
    public static class PasswordHelper
    {
        public static string HashPassword(string password)
        {
            //Gate Keeper: No password to hash...
            if (string.IsNullOrWhiteSpace(password)) throw new ArgumentNullException(nameof(password));

            // Salt size in bits
            var saltSize = 256 / 8;
            // PRF
            var prf = KeyDerivationPrf.HMACSHA512;
            // Iterations of generation
            var iterationsCount = 10000;
            // Salt buffer
            var salt = new byte[saltSize];
            // Fill with cryptographicly secure bytes
            var rngCryptoServiceProvider = new RNGCryptoServiceProvider();
            rngCryptoServiceProvider.GetBytes(salt);
            // Hash password
            var subkey = KeyDerivation.Pbkdf2(password, salt, prf, iterationsCount, 512 / 8);

            // Output buffer
            var outputBytes = new byte[13 + salt.Length + subkey.Length];
            outputBytes[0] = 0x01;
            // Store Prf on buffer
            WriteNetworkByteOrder(outputBytes, 1, (uint)prf);
            // Store iterations count on buffer
            WriteNetworkByteOrder(outputBytes, 5, (uint)iterationsCount);
            // Store salt size on buffer
            WriteNetworkByteOrder(outputBytes, 9, (uint)saltSize);
            // Copy salt to buffer
            Buffer.BlockCopy(salt, 0, outputBytes, 13, salt.Length);
            // Copy hash to buffer
            Buffer.BlockCopy(subkey, 0, outputBytes, 13 + saltSize, subkey.Length);

            //return in string format.
            return Convert.ToBase64String(outputBytes);
        }

        public static bool VerifyHashedPassword(string hashedPassword, string password)
        {
            // Convert from string to byte array
            byte[] decodedHashedPassword = Convert.FromBase64String(hashedPassword);

            try
            {
                // Read prf
                var prf = (KeyDerivationPrf)ReadNetworkByteOrder(decodedHashedPassword, 1);
                // Read iterations
                var iterationsCount = (int)ReadNetworkByteOrder(decodedHashedPassword, 5);
                // Read Salt length
                int saltLength = (int)ReadNetworkByteOrder(decodedHashedPassword, 9);

                // Fill salt buffer
                byte[] salt = new byte[saltLength];
                Buffer.BlockCopy(decodedHashedPassword, 13, salt, 0, salt.Length);

                // Read the subkey (the rest of the payload): must be >= 128 bits
                int subkeyLength = decodedHashedPassword.Length - 13 - salt.Length;

                // Fill orignial has buffer
                byte[] expectedSubkey = new byte[subkeyLength];
                Buffer.BlockCopy(decodedHashedPassword, 13 + salt.Length, expectedSubkey, 0, expectedSubkey.Length);

                // Hash the incoming password and verify it
                byte[] actualSubkey = KeyDerivation.Pbkdf2(password, salt, prf, iterationsCount, subkeyLength);

                // Check if byte arrays are equal
                return ByteArraysEqual(actualSubkey, expectedSubkey);
            }
            catch
            {
                // If an invalid string is passed it we where get here
                return false;
            }
        }

        // Compares two byte arrays for equality.
        [MethodImpl(MethodImplOptions.NoInlining | MethodImplOptions.NoOptimization)]
        private static bool ByteArraysEqual(byte[] a, byte[] b)
        {
            if (a == null && b == null)
            {
                return true;
            }

            if (a == null || b == null || a.Length != b.Length)
            {
                return false;
            }
            var areSame = true;

            for (var i = 0; i < a.Length; i++)
            {
                areSame &= (a[i] == b[i]);
            }

            return areSame;
        }

        // Write int in big-endian format.
        private static void WriteNetworkByteOrder(byte[] buffer, int offset, uint value)
        {
            buffer[offset + 0] = (byte)(value >> 24);
            buffer[offset + 1] = (byte)(value >> 16);
            buffer[offset + 2] = (byte)(value >> 8);
            buffer[offset + 3] = (byte)(value >> 0);
        }

        // Read int from big-endian format.
        private static uint ReadNetworkByteOrder(byte[] buffer, int offset)
        {
            return ((uint)(buffer[offset + 0]) << 24)
                | ((uint)(buffer[offset + 1]) << 16)
                | ((uint)(buffer[offset + 2]) << 8)
                | ((uint)(buffer[offset + 3]));
        }
    }
}