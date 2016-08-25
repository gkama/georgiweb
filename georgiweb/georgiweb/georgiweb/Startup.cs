using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(georgiweb.Startup))]
namespace georgiweb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
