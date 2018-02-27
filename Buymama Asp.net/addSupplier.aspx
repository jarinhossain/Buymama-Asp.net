<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addSupplier.aspx.cs" Inherits="Buymama_Asp.net.addSupplier" %>

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
            <h1>Add Supplier</h1>
            <div class="form-group form-group-sm">
                <asp:Label ID="Label1" runat="server" CssClass="label-control col-md-2" Text="Company Name"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="company" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label2" runat="server" CssClass="label-control col-md-2" Text="Contact Name"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="contact" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label3" runat="server" CssClass="label-control col-md-2" Text="Designation"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:DropDownList ID="designation" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Designation</asp:ListItem>
                        <asp:ListItem Value="3">Salesman</asp:ListItem>
                        <asp:ListItem Value="4">Executive</asp:ListItem>
                        <asp:ListItem Value="1">Manager</asp:ListItem>
                        <asp:ListItem Value="2">Director</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label4" runat="server" CssClass="label-control col-md-2" Text="Email"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label5" runat="server" CssClass="label-control col-md-2" Text="City"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="city" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label6" runat="server" CssClass="label-control col-md-2" Text="Address Line"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="address" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label7" runat="server" CssClass="label-control col-md-2" Text="Postal Code"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="postal" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>


            <div class="form-group form-group-sm">
                <asp:Label ID="Label8" runat="server" CssClass="label-control col-md-2" Text="Country"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:DropDownList ID="country" runat="server" CssClass="form-control">
                        <asp:ListItem Value="0">Select Country</asp:ListItem>
                        <asp:ListItem Value="1">Bangladesh</asp:ListItem>
                        <asp:ListItem Value="2">Canada</asp:ListItem>
                    </asp:DropDownList>

                </div>
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label9" runat="server" CssClass="label-control col-md-2" Text="Phone"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label10" runat="server" CssClass="label-control col-md-2" Text="Home Phone"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="home" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>



            <div class="form-group form-group-sm">
                <asp:Label ID="Label11" runat="server" CssClass="label-control col-md-2" Text="Fax"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="fax" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group form-group-sm">
                <asp:Label ID="Label12" runat="server" CssClass="label-control col-md-2" Text="Website"></asp:Label>
                <div class="col-sm-3" style="margin-left: 1px">
                    <asp:TextBox ID="website" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>


            <div class="form-group form-group-sm">
                <div class="col-md-2"></div>
                <asp:Button ID="saveButton1" Style="margin-left: 15px" runat="server" Text="Save" OnClick="saveButton1_Click" CssClass="btn btn-info" />
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <asp:Label ID="msg" runat="server" Text=""></asp:Label>
            </div>
        </form>
    </div>
</body>
</html>
