<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home_admin.aspx.cs" Inherits="SalesManagementSystem.home_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home | Admin</title>
    <style>
        .navbar:hover {
            background-color:#131A22;
        }
        .header {
            position:fixed;
            width:100%;
        }
        .auto-style1 {
            color: #000000;
        }
        .alert-info {
            color:#3A87AD;
        }
        .btn {
            background-color:#37475A;
            color:#ffffff;
            width:100%;
        }
        .label:hover {
            text-size-adjust:150%;
        }
    </style>
</head>
<body style="margin:auto; height:auto; background-image:url(img/back.jpg); background-repeat:no-repeat; background-size:100% 100%;">
    <form id="form1" runat="server">
    <div class="header">
    <div style="background-color:  #131A22; padding:1px; width:auto;">
       <p style="font-size:xx-large; text-align:center; font-weight:bolder; color:#ffffff;" class="auto-style1">SALES MANAGEMENT SYSTEM</p>
   </div>
    <div class="nav" style="height: 15px; text-align: center; background-color:#37475A; padding-top:10px; padding-bottom:15px; width:auto;">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Home" NavigateUrl="home_admin.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" Text="Manager" NavigateUrl="manager.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" Text="Product" NavigateUrl="product.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" Text="Sales" NavigateUrl="sales.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" Text="Report" NavigateUrl="report.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
       
        <asp:HyperLink ID="HyperLink6" runat="server" Text="Logout" NavigateUrl="logout.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
        </div>
        </div>

        
     <div style="padding-top:149px;height:480px;">
         <asp:Label ID="Label1" class="label" runat="server" Text="Welcome Admin: " style="position:absolute; top: 370px; left: 610px; font-weight: 700; font-size: xx-large; color: #000000;border-bottom:solid #000000; border-radius:8px;  animation: mymove 3s infinite; text-shadow: 2px 2px 5px #f01717;"><asp:Label ID="Label3" runat="server"  style="font-weight: 700; font-size: xx-large; color: #000000;">!</asp:Label></asp:Label>
         
         </div>
    <div style="height: 76px; background-color: #131A22">
        <p style="color: #FFFFFF; text-align:center; padding-top:15px;">
            Copyright © Sales Management. All Rights Reserved.</p>
        <p style="color: #FFFFFF; text-align:center; padding-bottom:5px;">
           Design & Developed By Ayaz - 18103621 & Harsh - 18103627</p>
         
    </div>
    </form>
</body>
</html>
