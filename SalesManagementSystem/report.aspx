<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report.aspx.cs" Inherits="SalesManagementSystem.report" %>


<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin | Report</title>
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
        .charts {
            padding-top:150px;
        }
    </style>
</head>
<body style="margin:auto; height:auto;">
    <form id="form1" runat="server">
    <div class="header">
    <div style="background-color:  #131A22; padding:1px; width:auto;">
       <p style="font-size:xx-large; text-align:center; font-weight:bolder; color:#ffffff;" class="auto-style1">SALES MANAGEMENT SYSTEM</p>
   </div>
    <div class="nav" style="height: 15px; text-align: center; background-color:#37475A; padding-top:10px; padding-bottom:15px; width:auto;">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Home" NavigateUrl="home_admin.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" Text="Manager" NavigateUrl="#" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" Text="Product" NavigateUrl="product.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" Text="Sales" NavigateUrl="#" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" Text="Report" NavigateUrl="report.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
       
        <asp:HyperLink ID="HyperLink6" runat="server" Text="Logout" NavigateUrl="logout.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
        </div>
        </div>
        <div class="charts">
        <table style="width:100%; padding:10px;">
            <tr style="background-color:#D9EDF7; color:#1727AE;">
                <td><h1 style="text-align:center; font-style:normal;">Stock Capacity &lt; 35</h1></td>
                <td><h1 style="text-align:center; font-style:normal;">Day Wise Total Sales</h1></td>
            </tr>
            <tr style="background-color:#f2f9fc;">
                <td style="text-align:center;">
                     <asp:SqlDataSource ID="Stock" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productname], [stock] FROM [product] WHERE ([stock] &lt; @stock)">
                         <SelectParameters>
                             <asp:Parameter DefaultValue="35" Name="stock" Type="Int32" />
                         </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:Chart ID="Chart3" runat="server" DataSourceID="Stock" Height="450px" Width="650px">
                        <series>
                            <asp:Series Name="Series1" XValueMember="productname" YValueMembers="stock">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td style="text-align:center; ">
                    <asp:Chart ID="Chart2" runat="server" DataSourceID="Sales" Width="650px" Height="450px">
                        <Series>
                            <asp:Series ChartType="Spline" Name="Series1" XValueMember="date" YValueMembers="total">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="Sales" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT date, SUM(total) AS total FROM sales GROUP BY date"></asp:SqlDataSource>
                </td>
            </tr>
             <tr style="background-color:#D9EDF7; color:#1727AE;">
                <td><h1 style="text-align:center; font-style:normal;">Category Wise Stock</h1></td>
                <td><h1 style="text-align:center; font-style:normal;">Product Wise Stock and Price</h1></td>
            </tr>
            <tr style="background-color:#f2f9fc;">
                <td style="text-align:center;">
                     <asp:Chart ID="Chart4" runat="server" Height="450px" Width="650px" DataSourceID="SqlDataSource1">
                         <Series>
                             <asp:Series Name="Series1" ChartType="Doughnut" XValueMember="category" YValueMembers="stock" YValuesPerPoint="4">
                             </asp:Series>
                         </Series>
                         <ChartAreas>
                             <asp:ChartArea Name="ChartArea1">
                             </asp:ChartArea>
                         </ChartAreas>
                     </asp:Chart>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT category, SUM(stock) AS stock FROM product GROUP BY category"></asp:SqlDataSource>
                </td>
                <td style="text-align:center; ">
                    <asp:Chart ID="Chart5" runat="server" Height="450px" Width="650px" DataSourceID="SqlDataSource2">
                        <Series>
                            <asp:Series Name="Series1" ChartType="Spline" XValueMember="productname" YValueMembers="priceperunit">
                            </asp:Series>
                            <asp:Series Name="Series2" ChartType="Spline" XValueMember="productname" YValueMembers="stock">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productname], [priceperunit], [stock] FROM [product]"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
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

