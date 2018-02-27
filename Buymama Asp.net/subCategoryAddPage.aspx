<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subCategoryAddPage.aspx.cs" Inherits="Buymama_Asp.net.subCategoryAddPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <div class="container">


        <form id="form1" runat="server" class="form-horizontal">

            <h2 style="margin-left: 70px; margin-bottom: 20px">Sub-Category Add page</h2>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-2" Text="Catagory Name"></asp:Label>
                <div class="col-sm-3" style="margin-left: 30px">
                    <asp:DropDownList ID="category" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group" style="margin-left: 20px">
                <asp:Label ID="Label2" runat="server" CssClass="control-label col-md-2" Text="SubCatagory Name"></asp:Label>
                <div class="col-sm-3">
                    <asp:TextBox ID="subCatagoryName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <div class="col-md-2"></div>
                <asp:Button ID="Button1" Style="margin-left: 45px" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn btn-info" />
                <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-info" />

            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <asp:Label ID="msg" runat="server" Style="margin-left: 45px" Text=""></asp:Label>

            </div>

        </form>

    </div>
</body>
</html>
