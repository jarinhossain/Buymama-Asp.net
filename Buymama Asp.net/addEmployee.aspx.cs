using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buymama_Asp.net
{
    public partial class addEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String insert = String.Format("insert into Address(Address,Postal_Code,Fax,Website,Country) values ('{0}','{1}','{2}','{3}','{4}')SELECT id FROM Address WHERE id = SCOPE_IDENTITY();", address.Text, postal.Text, fax.Text, website.Text, country.SelectedItem.Value);

            SqlConnection conn = new SqlConnection(ConnectionString.connectionString);
            SqlCommand cmd = new SqlCommand(insert, conn);
            conn.Open();
            int address_ID = (int)cmd.ExecuteScalar();

            insert = String.Format("insert into Employees(Name,Email,Designation,PhoneNo1,PhoneNo2, Address_Id) values ('{0}','{1}','{2}','{3}','{4}',{5})", name.Text, email.Text, designation.SelectedItem.Value, Phone1.Text, Phone2.Text, address_ID);
            conn = new SqlConnection(ConnectionString.connectionString);
            cmd = new SqlCommand(insert, conn);
            conn.Open();
            address_ID = cmd.ExecuteNonQuery();
            

        }
    }
}