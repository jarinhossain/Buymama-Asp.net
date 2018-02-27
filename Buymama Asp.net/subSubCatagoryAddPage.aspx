<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="subSubCatagoryAddPage.aspx.cs" Inherits="Buymama_Asp.net.subSubCatagoryAddPage" %>

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

            <h2 style="margin-left: 70px; margin-bottom: 20px">Sub-Sub-Category Add page</h2>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Style="margin-left: 30px" CssClass="control-label col-md-2" Text="SubCatagory Name"></asp:Label>
                <div class="col-sm-3" style="margin-left: 40px">
                    <asp:DropDownList ID="subCategory" CssClass="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="Label2" runat="server" Style="margin-left: 50px" CssClass="control-label col-md-2" Text="SubSubCatagory Name"></asp:Label>
                <div class="col-md-3" style="margin-left: 20px">
                    <asp:TextBox ID="subSubCatagoryName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>



            <div class="form-group">
                <div class="col-md-2"></div>
                <asp:Button ID="Button1" Style="margin-left: 85px" runat="server" Text="Save" OnClick="Button1_Click" CssClass="btn btn-info" />
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
