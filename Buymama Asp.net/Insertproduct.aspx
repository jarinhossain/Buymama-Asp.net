<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertproduct.aspx.cs" Inherits="Buymama_Asp.net.Insertproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <tr>
            <td>
                <asp:HiddenField ID="id" runat="server" />
            </td>
        </tr>
         <tr> 
            <td>Ref No </td> 
            <td>
                <asp:TextBox ID="refe" runat="server"></asp:TextBox>

            </td>
              
        </tr>
         <tr> 
            <td>Supplier Name</td> 
            <td>
                <asp:DropDownList ID="supplier" runat="server" AutoPostBack="True" OnSelectedIndexChanged="category_SelectedIndexChanged"></asp:DropDownList>

            </td>
              
        </tr>
          <tr> 
            <td>Category</td> 
            <td>
                <asp:DropDownList ID="category" runat="server" AutoPostBack="True" OnSelectedIndexChanged="category_SelectedIndexChanged"></asp:DropDownList>

            </td>
               <td>
               
                   <asp:Button ID="Button3" runat="server" Text="add" OnClick="categoryButton3_Click" />
                </td>
        </tr>
          <tr> 
            <td>Sub Category</td> 
            <td>
                <asp:DropDownList ID="subCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="subCategory_SelectedIndexChanged"></asp:DropDownList>

            </td>
               <td>
                <asp:Button ID="Button2" runat="server" Text="add" OnClick="subCategoryButton2_Click" />
                </td>
        </tr>
          <tr> 
            <td class="auto-style1">Sub Sub Category</td> 
            <td class="auto-style1">
                <asp:DropDownList ID="subSubCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="subSubCategory_SelectedIndexChanged1"></asp:DropDownList>

            </td>
               <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" Text="add" OnClick="subSubCategoryButton1_Click1" />
                </td>
        </tr>
     <tr>
         <td>Model</td>
         <td>
             <asp:DropDownList ID="model" runat="server" AutoPostBack="True" OnSelectedIndexChanged="model_SelectedIndexChanged"></asp:DropDownList>

         </td>
         <td>
                <asp:Button ID="Button4" runat="server" Text="add" OnClick="modelButton4_Click" />
                </td>
     </tr>
            <tr>
                <td>Quantity Available</td>
                <td>
                    <asp:TextBox ID="quantity" runat="server"></asp:TextBox>

                </td>
                <td>
                   
                    <asp:Label ID="quantitymsg" runat="server" Text=""></asp:Label>

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
                <td>Description</td>
                <td>
                    <asp:TextBox ID="description" runat="server"></asp:TextBox>

                </td>
            </tr>
          <tr>
                <td>Is Active</td>
                <td>
                    <asp:DropDownList ID="active" runat="server">
                      
                        <asp:ListItem Value="0">Yes</asp:ListItem>
                        <asp:ListItem Value="1">No</asp:ListItem>
                    </asp:DropDownList>

                </td>
            </tr>
        <tr>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Clear" OnClick="ClearButton5_Click" />

            </td>
            <td>
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="save_Button1_Click" />
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
