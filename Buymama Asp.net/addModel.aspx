<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addModel.aspx.cs" Inherits="Buymama_Asp.net.addModel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Model</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">

        <form id="form1" runat="server" class="form-horizontal">

            <h2 style="margin-left: 70px; margin-bottom: 20px">Add Model</h2>


            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-2" Text="Catagory Name"></asp:Label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="category" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="category_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>


            <div class="form-group">

                <asp:Label ID="Label7" runat="server" CssClass="control-label col-md-2" Text="Sub Category Name"></asp:Label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="subCategory" CssClass="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="subCategory_SelectedIndexChanged"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">

                <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="Sub Sub Category Name"></asp:Label>
                <div class="col-sm-3">
                    <asp:DropDownList ID="subSubCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>




            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-2" Text="Model"></asp:Label>

                <div class="col-sm-3">
                    <asp:TextBox ID="model" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-2" Text="Unit Price"></asp:Label>

                <div class="col-sm-3" style="margin-left: 2px">
                    <asp:TextBox ID="unitPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-2" Text="Selling Price"></asp:Label>
                <div class="col-sm-3">
                    <asp:TextBox ID="sellingPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-3">
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Back_Button2_Click" CssClass="btn btn-info" />
                    <asp:Button ID="SaveButton1" runat="server" Style="margin-left: .1px" Text="Save" OnClick="SaveButton1_Click" CssClass="btn btn-info" />
                    <asp:Button ID="Button1" runat="server" Text="clear" OnClick="clear_Button1_Click" CssClass="btn btn-info" />
                </div>


            </div>



            <div class="form-group">
                <div class="col-md-2"></div>

                <asp:Label ID="msg" runat="server" Text=""></asp:Label>

            </div>

        </form>
    </div>
</body>
</html>
