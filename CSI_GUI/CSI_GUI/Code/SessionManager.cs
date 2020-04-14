using CSI_GUI.Models;
using System.Web;

namespace CSI_GUI.Code
{
    public static class SessionManager
    {
        private static readonly string _USERACCOUNTKEY = "User";

        public static Users CurrentUser
        {
            get
            {
                return GetSessionItem<Users>(_USERACCOUNTKEY);
            }
            set
            {
                SetSessionItem(_USERACCOUNTKEY, value);
            }
        }

        private static type GetSessionItem<type>(string key)
        {
            if (HttpContext.Current.Session[key] == null)
                return default(type);

            return (type)HttpContext.Current.Session[key];
        }

        private static void SetSessionItem(string key, object value)
        {
            HttpContext.Current.Session[key] = value;
        }
    }
}