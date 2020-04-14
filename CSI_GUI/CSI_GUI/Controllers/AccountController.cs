using System.Linq;
using System.Web.Mvc;
using CSI_GUI.Models;
using CSI_GUI.Code;

namespace CSI_GUI.Controllers
{
    public class AccountController : Controller
    {

        [AllowAnonymous]
        public ActionResult Login()
        {
            return View(new LoginViewModel());
        }

        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginViewModel model)
        {
            if (!ModelState.IsValid) return View(model);

            using (var siteContext = new SiteContext())
            {
                //Get user from database
                var user = siteContext.Users.FirstOrDefault(x => x.useUserName == model.UserName);

                //Validate user
                if (user == null || user.useUserStatus != 1 || !PasswordHelper.VerifyHashedPassword(user.usePassword, model.Password))
                {
                    //Keep error message generic to help prevent hacking
                    model.Message = "Invalid User name or password";
                    return View(model);
                }

                //Store current user in session manger
                SessionManager.CurrentUser = user;
            }

            // Redirect to home page
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Logout()
        {
            //Drop users session.
            SessionManager.CurrentUser = null;

            // Redirect to home page
            return RedirectToAction("Index", "Home");
        }
    }
}
