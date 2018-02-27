using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Buymama_Asp.net
{
    public class ConnectionString
    {
        //public static string connectionString =  @"server=DESKTOP-JAP561I\SQLEXPRESS;database=Buymama;integrated security=true";
        //public static string connectionString = @"server=Robin\SQLEXPRESS;database=Buymama;integrated security=true";
        public static string connectionString = @"Server=tcp:buymama.database.windows.net,1433;Initial Catalog=buymama;Persist Security Info=False;User ID=robinabdullah;Password=45659123iN;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
    }
}