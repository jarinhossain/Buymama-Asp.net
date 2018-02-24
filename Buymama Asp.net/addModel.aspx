<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addModel.aspx.cs" Inherits="Buymama_Asp.net.addModel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
           <tr><h2>Add Model</h2></tr>
            <tr>
                 <td>Category Name</td>
                <td>
                   
                    <asp:DropDownList ID="category" runat="server" AutoPostBack="True" OnSelectedIndexChanged="category_SelectedIndexChanged"></asp:DropDownList>

                </td>

            </tr>
            <tr>
                 <td>Sub Category Name</td>
                <td>
                    <asp:DropDownList ID="subCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="subCategory_SelectedIndexChanged"></asp:DropDownList></td>
            </tr>
            <tr>
                 <td>Sub Sub Category Name</td>
                <td>
                    <asp:DropDownList ID="subSubCategory" runat="server"></asp:DropDownList>

                </td>
            </tr>
             <tr>
                <td>Model </td>
                <td>
                    <asp:TextBox ID="model" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>Unit Price</td>
                <td>
                    <asp:TextBox ID="unitPrice" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td>Selling Price</td>
                <td>
                    <asp:TextBox ID="sellingPrice" runat="server"></asp:TextBox>

                </td>
            </tr>
         
             <tr>
                 <td>
                
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Back_Button2_Click" />
                 </td>
                <td>
                 
                    <asp:Button ID="Button1" runat="server" Text="clear" OnClick="clear_Button1_Click" />
                   
               
                
                    <asp:Button ID="SaveButton1" runat="server" Text="Save" OnClick="SaveButton1_Click" />
                 </td>
                 
            </tr>
            <tr>
                <td>
                    <asp:Label ID="msg" runat="server" Text=""></asp:Label>

                </td>

            </tr>
        </table>
    </form>
</body>
</html>
