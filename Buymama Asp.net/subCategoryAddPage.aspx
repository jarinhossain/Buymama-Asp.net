<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subCategoryAddPage.aspx.cs" Inherits="Buymama_Asp.net.subCategoryAddPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table>
       
      <tr>
        <h2>Sub-Category Add page</h2>
    </tr>
          <tr>
            <td>Catagory Name</td>
             <td>

                 <asp:DropDownList ID="category" runat="server"></asp:DropDownList>
             </td>
        </tr>
          <tr>
            <td>SubCatagory Name</td>
             <td>

                 <asp:TextBox ID="subCatagoryName" runat="server"></asp:TextBox>
             </td>
        </tr>
         <tr>
            <td>  <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" /></td></td>
              
             <td>
                 <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
               
             </td>
        </tr>
          <tr>
               <td></td>
            <td>
                <asp:Label ID="msg" runat="server" Text=""></asp:Label>

            </td>
              
            
        </tr>
    </table>
    </form>
</body>
</html>
