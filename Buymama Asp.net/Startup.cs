using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Buymama_Asp.net.Startup))]
namespace Buymama_Asp.net
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
