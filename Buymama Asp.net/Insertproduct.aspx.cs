using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class Insertproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


         

            //jdi ei page er e kno button click kora hoi tahole IsPostBack true hoi.
            
            if (IsPostBack == false)
            {
                  
              
                String select = "select Id,Company_Name from Supplier";

                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(select, conn);
                conn.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                supplier.DataSource = reader;
                supplier.DataValueField = "Id";
                supplier.DataTextField = "Company_Name";
                supplier.DataBind();
                supplier.Items.Insert(0, new ListItem("Select SupplierName", "0"));

                select = "select Id,Name from Category";

                 conn = new SqlConnection(ConnectionString.connectionString);
                 cmd = new SqlCommand(select, conn);
                conn.Open();

                 reader = cmd.ExecuteReader();
                category.DataSource = reader;
                category.DataValueField = "Id";
                category.DataTextField = "Name";
                category.DataBind();
                category.Items.Insert(0, new ListItem("Select Catagory", "0"));
                subCategory.Items.Insert(0, new ListItem("Select Sub Catagory", "0"));
                subSubCategory.Items.Insert(0, new ListItem("Select Sub Sub Catagory", "0"));
                model.Items.Insert(0, new ListItem("Select Model", "0"));

                if (Request.QueryString["Category"] != null)
                {
                    category.SelectedValue = Request.QueryString["Category"];

                    ///category chaged code
                    sub_categoryLoad_function();
                    // subCategory.Items.Insert(0, new ListItem("Select Sub Category", "0"));
                    ///

                    subCategory.SelectedValue = Request.QueryString["Sub_Category"];

                    sub_sub_Categoryload_Function();

                    subSubCategory.SelectedValue= Request.QueryString["sub_Sub_Category"];

                    model_Categoryload_function();
                    model.SelectedValue = model.Items.FindByText(Request.QueryString["Model"]).Value;
                    
                }

            }
        }

        protected void save_Button1_Click(object sender, EventArgs e)
        {
            //antity.Text + quantitymsg.Text;e 
            int q = int.Parse(quantity.Text) + int.Parse(quantitymsg.Text);
            //10000000%  hmbmmi bitshsiask  na hoiel dekho ami aschi deikha voi e thik hoia gese 
           
         
            String update = String.Format("update  Product set Quantity_Available={0},Unit_Price={1},Selling_Price={2},Description='{3}' where Id='{4}'",q,unitPrice.Text, sellingPrice.Text, description.Text, model.SelectedItem.Value);
            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(update, conn);
          
            conn.Open();
          

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                msg.Text = "successfully updated";
               
            }
           
            string insert = String.Format("Insert into Product_Supplier(Ref_No,Supplier_Id,Product_Id,Quantity,Unit_Price,Selling_Price) values ('{0}',{1},{2},{3},{4},{5})", refe.Text,  supplier.SelectedItem.Value, model.SelectedItem.Value, q, unitPrice.Text, sellingPrice.Text);
            conn = new SqlConnection(ConnectionString.connectionString);
            cmd = new SqlCommand(insert, conn);
            conn.Open();

             a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                msg.Text = "Successfully insert";

            }

        }

        protected void addModelButton_Click(object sender, EventArgs e)
        {

          

        }

        protected void category_SelectedIndexChanged(object sender, EventArgs e)
        {
            sub_categoryLoad_function();
        }

        protected void subCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            sub_sub_Categoryload_Function();
        }

     

        protected void subSubCategory_SelectedIndexChanged1(object sender, EventArgs e)
        {
            model_Categoryload_function();
        }

        protected void categoryButton3_Click(object sender, EventArgs e)
        {
            String address = "catagoryAddPage.aspx";
            Response.Redirect(address);
        }

        protected void subCategoryButton2_Click(object sender, EventArgs e)
        {
            String address = "subCategoryAddPage.aspx";
            Response.Redirect(address);
        }

        protected void subSubCategoryButton1_Click1(object sender, EventArgs e)
        {
            String address = "subSubCatagoryAddPage.aspx";
            Response.Redirect(address);
            
        }

        protected void modelButton4_Click(object sender, EventArgs e)
        {
            String address = "addModel.aspx";
            Response.Redirect(address);
        }

        protected void ClearButton5_Click(object sender, EventArgs e)
        {

            clearAll();
        }
        private  void clearAll()
        {
            refe.Text = "";
            supplier.SelectedIndex = 0;
            category.SelectedIndex = 0;
            subCategory.SelectedIndex = 0;
            subSubCategory.SelectedIndex = 0;
            model.SelectedIndex = 0;
            quantity.Text = "";
            quantitymsg.Text = "";
            unitPrice.Text = "";
            sellingPrice.Text = "";
            description.Text = "";
            active.SelectedIndex = 0;
        }

        protected void model_SelectedIndexChanged(object sender, EventArgs e)
        {

            price_detailsload_function();

        }
        private void sub_categoryLoad_function()
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

        private void sub_sub_Categoryload_Function()
        {
          

            String select = "select Sub_Sub_Category.Id,Sub_Sub_Category.Name from Sub_Category,Sub_Sub_Category where Sub_Category.Id = Sub_Sub_Category.Sub_Category_Id and Sub_Category.Id = " + subCategory.SelectedItem.Value;



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
        private void model_Categoryload_function()
        {
          

            String select = "select Product.Id,Product.Model from Sub_Sub_Category,Product where Sub_Sub_Category.Id = Product.Sub_Sub_Category_ID and Sub_Sub_Category.Id = " + subSubCategory.SelectedItem.Value;



            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(select, conn);
            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            model.DataSource = reader;
            model.DataValueField = "Id";
            model.DataTextField = "Model";
            model.DataBind();
            model.Items.Insert(0, new ListItem("Select Model", "0"));
        }
        private void price_detailsload_function()
        {
           
            String select = "select Quantity_Available,Unit_Price,Selling_Price from Product where  Id=" + model.SelectedItem.Value;



            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(select, conn);
            conn.Open();

            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                quantitymsg.Text = reader[0].ToString();
                unitPrice.Text = reader[1].ToString();
                sellingPrice.Text = reader[2].ToString();

            }

            if (reader.HasRows == false)
            {
                msg.Text = "not found";
            }
        }
    }
}