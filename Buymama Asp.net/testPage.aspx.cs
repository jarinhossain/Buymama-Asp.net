using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class testPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Electronics => HomeAppliance => Air Conditioner, Air Cooler
            //Kitchen Appliance => MicroWaave
            //Computers => Laptop => Asos, ..
            //Desktop => gigabyte
          
            String select = "select Id,Name from Category";

            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(select, conn);
            conn.Open();

            SqlDataReader categoryReader = cmd.ExecuteReader();

            while (categoryReader.Read())
            {
               
                Response.Write(categoryReader["Name"].ToString() + "=>");
                select = "Select  Sub_Category.Id,Sub_Category.Name from  Category,Sub_Category where Category.Id = Sub_Category.Category_Id and Category.Id = " + categoryReader["Id"].ToString();
                conn = new SqlConnection(ConnectionString.connectionString);
                cmd = new SqlCommand(select, conn);
                conn.Open();
                SqlDataReader subreader = cmd.ExecuteReader();
                while (subreader.Read())
                {
                    Response.Write(subreader["Name"].ToString() +"=> ");
                    select = "Select Sub_Sub_Category.Id,Sub_Sub_Category.Name from Sub_Category,Sub_Sub_Category where Sub_Category.Id = Sub_Sub_Category.Sub_Category_Id and Sub_Category.Id =" + subreader["Id"].ToString();


                  
                    conn = new SqlConnection(ConnectionString.connectionString);
                    cmd = new SqlCommand(select, conn);
                    conn.Open();

                    SqlDataReader subsubreader = cmd.ExecuteReader();
                    while(subsubreader.Read())
                    {
                        Response.Write(subsubreader["Name"].ToString() + ", ");
                    }

                    Response.Write("<br>");
                }
                Response.Write("<br>");



            }
            


            

          

         
          
           
            
        }
    }
}