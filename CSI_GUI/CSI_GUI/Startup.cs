using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CSI_GUI.Startup))]
namespace CSI_GUI
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
