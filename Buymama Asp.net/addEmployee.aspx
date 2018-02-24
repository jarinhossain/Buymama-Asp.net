<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addEmployee.aspx.cs" Inherits="Buymama_Asp.net.addEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table>
        <tr>
            <td>Employee Name</td>
            <td>
                <asp:TextBox ID="name" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Employee Email</td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Designation</td>
            <td>
                <asp:DropDownList ID="designation" runat="server">
                    <asp:ListItem Value="0">Select Designation</asp:ListItem>
                    <asp:ListItem Value="3">Salesman</asp:ListItem>
                    <asp:ListItem Value="4">Executive</asp:ListItem>
                    <asp:ListItem Value="1">Manager</asp:ListItem>
                    <asp:ListItem Value="2">Director</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>
         <tr>
            <td>PhoneNo1</td>
            <td>
                <asp:TextBox ID="Phone1" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>PhoneNo2</td>
            <td>
                <asp:TextBox ID="Phone2" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Address Line</td>
            <td>
                <asp:TextBox ID="address" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Postal Code</td>
            <td>
                <asp:TextBox ID="postal" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Country</td>
            <td>
                <asp:DropDownList ID="country" runat="server">
                    <asp:ListItem Value="0">Select Country</asp:ListItem>
                    <asp:ListItem Value="1">Bangladesh</asp:ListItem>
                    <asp:ListItem Value="2">Canada</asp:ListItem>
                </asp:DropDownList>

            </td>
        </tr>
        
         <tr>
            <td>Fax</td>
            <td>
                <asp:TextBox ID="fax" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Website</td>
            <td>
                <asp:TextBox ID="website" runat="server"></asp:TextBox>

            </td>
        </tr>
       <tr>
           <td></td>
           <td>
               <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" /> 

           </td>
       </tr>
         <tr>
            <td>
                <asp:Label ID="msg" runat="server" Text=""></asp:Label></td>
           
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
