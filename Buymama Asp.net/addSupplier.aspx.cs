using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class addSupplier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton1_Click(object sender, EventArgs e)
        {

            if (company.Text == "")
            {
                msg.Text = "please enter valid company name";
            }
           else if (contact.Text == "")
            {
                msg.Text = "please enter valid contact nbr";
            }
           else if (designation.SelectedItem.Value == "0")
            {
                msg.Text = "please enter valid designation";
            }
          else  if (email.Text == "")
            {
                msg.Text = "please enter valid email";
            }
            else if (city.Text == "")
            {
                msg.Text = "please enter valid city";
            }
            else if (address.Text == "")
            {
                msg.Text = "please enter valid address";
            }
            else if (country.SelectedItem.Value == "0")
            {
                msg.Text = "please enter valid country";
            }
            else if (phone.Text == "" || phone.Text.Length != 11)
            {
                msg.Text = "please enter valid phone";
            }
            else if (fax.Text == "")
            {
                msg.Text = "please enter valid fax";
            }
            else if (website.Text == "")
            {
                msg.Text = "please enter valid website";
            }

            else
            {
               

                String insert = String.Format("insert into Address(Address,Postal_Code,Fax,Website,Country) values ('{0}','{1}','{2}','{3}','{4}') SELECT id FROM Address WHERE id = SCOPE_IDENTITY(); ", address.Text, postal.Text, fax.Text, website.Text, country.SelectedItem.Value);
                SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
                SqlCommand cmd = new SqlCommand(insert, conn);
                conn.Open();
                int address_ID = (int)cmd.ExecuteScalar();


                insert = String.Format("insert into Supplier(Company_Name,Contact_Name,Contact_Designation,Email,Phone,Home_Phone, Address_Id) values ('{0}','{1}','{2}','{3}','{4}','{5}', {6})", company.Text, contact.Text, designation.SelectedItem.Value, email.Text, phone.Text, home.Text, address_ID);
                conn = new SqlConnection(ConnectionString.connectionString);
                cmd = new SqlCommand(insert, conn);
                conn.Open();
                address_ID = cmd.ExecuteNonQuery();

                company.Text = "";
                contact.Text = "";
                designation.SelectedIndex = 0;
                email.Text = "";
                city.Text = "";

                postal.Text = "" ;
                address.Text = "";
                country.SelectedIndex = 0;
                phone.Text = "";
                home.Text = "";
                fax.Text = "";

                website.Text = "";
              

            }
          
        }
    }
}