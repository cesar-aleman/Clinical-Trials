using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace CSI_GUI.Code
{
    public sealed class UserAuthorizationAttribute : FilterAttribute, IAuthorizationFilter
    {
        public List<int> UserTypes { get; set; } = new List<int>();

        public UserAuthorizationAttribute() : base()
        {
        }

        public UserAuthorizationAttribute(params int[] userTypes) : base()
        {
            UserTypes.AddRange(userTypes);
        }

        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (filterContext == null) throw new ArgumentNullException(nameof(filterContext));

            if (filterContext.ActionDescriptor.IsDefined(typeof(AllowAnonymousAttribute), inherit: true) || filterContext.ActionDescriptor.ControllerDescriptor.IsDefined(typeof(AllowAnonymousAttribute), inherit: true)) return;

            if (Authorize(filterContext.HttpContext)) return;
            else HandleUnauthorizedRequest(filterContext);
        }

        private bool Authorize(HttpContextBase httpContext)
        {
            var user = SessionManager.CurrentUser;

            if (user == null) return false;

            if (UserTypes == null || UserTypes.Count == 0) return true;

            if (!UserTypes.Contains(user.useUserType.Value)) return false;

            return true;
        }

        private void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {
            filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Account", action = "Login", area = "" }));
        }
    }
}