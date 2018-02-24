using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class catagoryAddPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
             
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            String insert = String.Format("insert into Category(Name) values ('{0}')", catagoryname.Text);

            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(insert, conn);
            conn.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                msg.Text = "successfully Category added";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String address = "Insertproduct.aspx";
            Response.Redirect(address);
        }
    }
}