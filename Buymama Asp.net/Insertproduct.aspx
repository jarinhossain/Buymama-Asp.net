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
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">

        <form id="form1" runat="server" class="form-horizontal">

            <h1 style="margin-left: 100px; margin-bottom: 20px">Insert Product</h1>
            <asp:HiddenField ID="id" runat="server" />
            <div class="form-group form-group-sm">
                <asp:Label ID="Label1" CssClass="control-label col-md-2" runat="server" Text="Ref No"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:TextBox ID="refe" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label2" CssClass="control-label col-md-2" runat="server" Text="Supplier Name"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="supplier" runat="server" CssClass="form-control" AutoPostBack="True"></asp:DropDownList>
                </div>

            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label3" CssClass="control-label col-md-2" runat="server" Text="Category"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="category" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="category_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <asp:Button ID="Button3" runat="server" CssClass="btn btn-info" Text="add" OnClick="categoryButton3_Click" />
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label4" CssClass="control-label col-md-2" runat="server" Text="Sub Category"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="subCategory" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="subCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="add" OnClick="subCategoryButton2_Click" />
            </div>




            <div class="form-group form-group-sm">
                <asp:Label ID="Label5" CssClass="control-label col-md-2" runat="server" Text="Sub Sub Category"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="subSubCategory" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="subSubCategory_SelectedIndexChanged1"></asp:DropDownList>
                </div>
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="add" OnClick="subSubCategoryButton1_Click1" />
            </div>




            <div class="form-group form-group-sm">
                <asp:Label ID="Label6" CssClass="control-label col-md-2" runat="server" Text="Model"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="model" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="model_SelectedIndexChanged"></asp:DropDownList>
                </div>

                <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="add" OnClick="modelButton4_Click" />
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label7" CssClass="control-label col-md-2" runat="server" Text="Quantity Available"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:TextBox ID="quantity" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <asp:Label ID="quantitymsg" runat="server" Text=""></asp:Label>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label8" CssClass="control-label col-md-2" runat="server" Text="Unit Price"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:TextBox ID="unitPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>

                <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label10" CssClass="control-label col-md-2" runat="server" Text="Selling Price"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:TextBox ID="sellingPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>



            <div class="form-group form-group-sm">
                <asp:Label ID="Label11" CssClass="control-label col-md-2" runat="server" Text="Description"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:TextBox ID="description" CssClass="form-control" runat="server"></asp:TextBox>
                </div>


            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label12" CssClass="control-label col-md-2" runat="server" Text="Is Active"></asp:Label>
                <div class="col-md-3" style="margin-left: 1px">
                    <asp:DropDownList ID="active" CssClass="form-control" runat="server">

                        <asp:ListItem Value="0">Yes</asp:ListItem>
                        <asp:ListItem Value="1">No</asp:ListItem>
                    </asp:DropDownList>
                </div>


            </div>



            <div class="form-group form-group-sm">
                <div class="col-md-2"></div>

                <asp:Button ID="Button5" Style="margin-left: 15px" runat="server" CssClass="btn btn-info" Text="Clear" OnClick="ClearButton5_Click" />
                <asp:Button ID="saveButton" runat="server" CssClass="btn btn-info" Text="Save" OnClick="save_Button1_Click" />
            </div>


            <div class="form-group">
                <div class="col-md-2"></div>
                <asp:Label ID="msg" runat="server" Text=""></asp:Label>
            </div>


        </form>
    </div>
</body>
</html>
