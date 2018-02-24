using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class subSubCatagoryAddPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
              
                String select = "select Id,Name from Sub_Category";

                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(select, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                subCategory.DataSource = reader;
                subCategory.DataValueField = "Id";
                subCategory.DataTextField = "Name";
                subCategory.DataValueField = "Id";
                subCategory.DataBind();
                subCategory.Items.Insert(0, new ListItem("Sub_Category", "0"));
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            String insert = String.Format("insert into Sub_Sub_Category(Sub_Category_Id,Name) values ({0},'{1}')", subCategory.SelectedItem.Value, subSubCatagoryName.Text);
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(insert, conn);
            conn.Open();
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                msg.Text = "successfully Sub_Sub_Category added";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String address = "Insertproduct.aspx";
            Response.Redirect(address);
        }
    }
}