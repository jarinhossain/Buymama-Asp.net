<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addSupplier.aspx.cs" Inherits="Buymama_Asp.net.addSupplier" %>

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
            <td>Company Name</td>
            <td>
                <asp:TextBox ID="company" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Contact Name</td>
            <td>
                <asp:TextBox ID="contact" runat="server"></asp:TextBox>

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
            <td>Email</td>
            <td>
                <asp:TextBox ID="email" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>City</td>
            <td>
                <asp:TextBox ID="city" runat="server"></asp:TextBox>

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
            <td>Phone</td>
            <td>
                <asp:TextBox ID="phone" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Home Phone</td>
            <td>
                <asp:TextBox ID="home" runat="server"></asp:TextBox>

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
                <asp:Button ID="saveButton1" runat="server" Text="Save" OnClick="saveButton1_Click" />

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
