using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class addModel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
             
                String select = "select Id, Name from Category";
                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(select, conn);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                category.DataSource = reader;
                category.DataValueField = "Id";
                category.DataTextField = "Name";
                category.DataBind();
                category.Items.Insert(0, new ListItem("Select Category", "0"));
                subCategory.Items.Insert(0, new ListItem("Select Sub Category", "0"));
                subSubCategory.Items.Insert(0, new ListItem("Select Sub SubCategory", "0"));

            }
            // select = "select Id, Name from Sub_Category";
            //conn = new SqlConnection(cons);
            // cmd = new SqlCommand(select, conn);
            //conn.Open();

            // reader = cmd.ExecuteReader();
            //subCategory.DataSource = reader;
            //subCategory.DataValueField = "Id";
            //subCategory.DataTextField = "Name";
            //subCategory.DataBind();
            //subCategory.Items.Insert(0, new ListItem("Select Sub Category", "0"));

            //select = "select Id, Name from Sub_Sub_Category";
            //conn = new SqlConnection(cons);
            //cmd = new SqlCommand(select, conn);
            //conn.Open();

            //reader = cmd.ExecuteReader();
            //subSubCategory.DataSource = reader;
            //subSubCategory.DataValueField = "Id";
            //subSubCategory.DataTextField = "Name";
            //subSubCategory.DataBind();
            //subSubCategory.Items.Insert(0, new ListItem("Select Sub Sub Category", "0"));
        }

        protected void category_SelectedIndexChanged(object sender, EventArgs e)
        {
          
              
                String select = "Select Sub_Category.Id, Sub_Category.Name from Category, Sub_Category where Category.Id = Sub_Category.Category_Id and Category.Id = " + category.SelectedItem.Value;
                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(select, conn);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                subCategory.DataSource = reader;
                subCategory.DataValueField = "Id";
                subCategory.DataTextField = "Name";
                subCategory.DataBind();
                subCategory.Items.Insert(0, new ListItem("Select Sub Category", "0"));
            
        }

        protected void subCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            String select = "Select Sub_Sub_Category.Id, Sub_Sub_Category.Name from Sub_Category,Sub_Sub_Category where Sub_Category.Id = Sub_Sub_Category.Sub_Category_Id and Sub_Category.Id = " + subCategory.SelectedItem.Value;
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(select, conn);
            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            subSubCategory.DataSource = reader;
            subSubCategory.DataValueField = "Id";
            subSubCategory.DataTextField = "Name";
            subSubCategory.DataBind();
            subSubCategory.Items.Insert(0, new ListItem("Select Sub Sub Category", "0"));
        }

        protected void SaveButton1_Click(object sender, EventArgs e)
        {
            msg.Text = "";
            float flt = 0;
           if(category.SelectedIndex == 0)
            {
                msg.Text = "pls enter valid category";
            }
           else if (subCategory.SelectedIndex == 0)
            {
                msg.Text = "pls enter valid SubCategory";
            }
          else  if (subSubCategory.SelectedIndex == 0)
            {
                msg.Text = "pls enter valid subSubCategory";
            }
            else if (model.Text =="")
            {
                msg.Text = "pls enter valid model";
            }
          
           else  if (float.TryParse(unitPrice.Text,out flt) == false)
            {
                msg.Text = "pls enter valid unitPrice";
            }
            else if (float.TryParse(sellingPrice.Text, out flt) == false)
            {
                msg.Text = "pls enter valid sellingPrice";
            }
         
            else
            {
               
                String insert = String.Format("insert into Product(Category_ID,Sub_Category_ID,Sub_Sub_Category_ID,Model ,Unit_Price, Selling_Price) values ({0},{1},{2},'{3}',{4},{5})", category.SelectedItem.Value, subCategory.SelectedItem.Value, subSubCategory.SelectedItem.Value,model.Text, unitPrice.Text, sellingPrice.Text);
                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(insert,conn);
                conn.Open();
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {
                    msg.Text = "successfully inserted";
                }
               
               

            }
        }

        protected void Back_Button2_Click(object sender, EventArgs e)
        {
            String address;
            if (msg.Text == "successfully inserted")
            {
                address = "Insertproduct.aspx?Category=" + category.SelectedItem.Value + "&Sub_Category=" + subCategory.SelectedItem.Value + "&sub_Sub_Category=" + subSubCategory.SelectedItem.Value + "&Model=" + model.Text;
               
            }
            else
            {
                address = "Insertproduct.aspx?Category=" + category.SelectedItem.Value + "&Sub_Category=" + subCategory.SelectedItem.Value + "&sub_Sub_Category=" + subSubCategory.SelectedItem.Value;
               

            }
            Response.Redirect(address);
        }
        private void ClearAll()
        {
            category.SelectedIndex = 0;
            subCategory.SelectedIndex = 0;
            subSubCategory.SelectedIndex = 0;
            model.Text = "";
            unitPrice.Text = "";
            sellingPrice.Text = "";
           
        }

        protected void clear_Button1_Click(object sender, EventArgs e)
        {
            ClearAll();
        }
    }
}