<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="catagoryAddPage.aspx.cs" Inherits="Buymama_Asp.net.catagoryAddPage" %>

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


        <div class="row">
            <form class="form-horizontal" id="form1" runat="server">
                <h2 style="margin-left: 70px">Category Add page</h2>

                <div class="form-group">
                    <asp:Label ID="label" CssClass="control-label col-md-2" runat="server" Text="Catagory Name"></asp:Label>
                    <div class="col-sm-3">
                        <asp:TextBox ID="catagoryname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>
                    <asp:Button ID="Button1" runat="server" Style="margin-left: 20px" Text="Save" OnClick="Button1_Click" CssClass="btn btn-info" />
                    <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click" CssClass="btn btn-info" />

                </div>



                <div class="form-group">
                    <asp:Label ID="msg" runat="server" Text=""></asp:Label>
                </div>

            </form>
        </div>
    </div>
</body>
</html>
