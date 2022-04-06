<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_sales.aspx.cs" Inherits="SalesManagementSystem.m_sales" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager | Sales</title>
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
        .form-control {}
        .auto-style2 {
            width: 249px;
        }
        .auto-style3 {
            width: 235px;
        }
        .auto-style4 {
            height: 37px;
            width: 251px;
        }
        .auto-style5 {
            height: 37px;
            width: 206px;
        }
        .auto-style6 {
            width: 206px;
        }
        .auto-style7 {
            height: 37px;
            width: 208px;
        }
        .auto-style8 {
            width: 208px;
        }
        .auto-style11 {
            width: 251px;
        }
        .auto-style12 {
            height: 37px;
            width: 204px;
        }
        .auto-style13 {
            width: 204px;
        }
        .auto-style14 {
            height: 117px;
            margin-top: 191px;
        }
        .auto-style15 {
            position: absolute;
            left: 86px;
            top: 545px;
            width: 1212px;
            height: 118px;
        }
        .auto-style16 {
            width: 21px;
        }
        .auto-style17 {
            width: 19px;
        }
    </style>
</head>
<body style="margin:auto; height:auto;">
      <div class="header">
    <div style="background-color:  #131A22; padding:1px; width:auto;">
       <p style="font-size:xx-large; text-align:center; font-weight:bolder; color:#ffffff;" class="auto-style1">SALES MANAGEMENT SYSTEM</p>
   </div>
    <div class="nav" style="height: 15px; text-align: center; background-color:#37475A; padding-top:10px; padding-bottom:15px; width:auto;">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Home" NavigateUrl="home_manager.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" Text="Product" NavigateUrl="m_product.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" Text="Sales" NavigateUrl="m_sales.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink5" runat="server" Text="Logout" NavigateUrl="logout.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
        </div>
      
        </div>
   
    <div style="padding-top:149px;">
<center>
    <form id="form1" runat="server">
<div class="input-group">
                <div class="form-inline">    
                    <h2 style="background-color: #97BAEC; width:75%; color:#1727AE; height:40px; padding-top:10px;">Sales Management</h2>          
                
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive" style="width:76%; top: 237px; left: 687px; height: 104px;">
                         <tr class="alert-info" style="background-color:#D9EDF7;">
                            <td >
                                <asp:Label ID="Label1" runat="server" Text="Customer" ></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label>
                            </td>
                             <td >
                                <asp:Label ID="Label3" runat="server" Text="Date" class="tlabel"></asp:Label>
                            </td>
                            
                            </tr>
                        
                        <tr>
                            <td >
                                <asp:TextBox runat="server" ID="Customer"  placeholder="Customer" required  CssClass="form-control"/>
                            </td>
                            <td >
                                 <asp:TextBox runat="server" ID="Contact"  placeholder="Contact" required CssClass="form-control"/>
                            </td>
                            <td >
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
                            </td>
                            
                            
                             </tr>
                       <tr class="alert-info" style="background-color:#D9EDF7;">
                            <td >
                                <asp:Label ID="Label4" runat="server" Text="Select Product" ></asp:Label>
                            </td>
                            <td >
                                <asp:Label ID="Label5" runat="server" Text="Quantity"></asp:Label>
                            </td>
                            <td style="background-color:#ffffff">
                                <asp:Button Text="Add Sales/Order" runat="server" ID="Button1" class="btn btn-sm btn-primary" OnClientClick="Addproduct_Click" style="width:60%" OnClick="Button1_Click" />
                            </td>
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" DataSourceID="SqlDataSource1" DataTextField="productname" DataValueField="productname" Width="126px">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [productname] FROM [product]"></asp:SqlDataSource>
                            </td>
                            <td >
                                 <asp:TextBox runat="server" ID="TextBox2"  placeholder="Quantity" required CssClass="form-control" Width="124px"/>
                            </td>
                             <td >
                                <asp:Button Text="Add item" runat="server" ID="Button2" class="btn btn-sm btn-primary" OnClientClick="Addproduct_Click"  OnClick="Button2_Click" style="width:60%"/>
                            </td>
                             </tr>
                    </table>
            </div>
            </div>
            <br />
            <br />
    
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" style="width:75%; text-align:center; text-decoration:none;" ClientIDMode="AutoID" Font-Overline="False" DataKeyNames="Sr">
                    <Columns>
                        <asp:BoundField DataField="Sr" HeaderText="Sr" SortExpression="Sr" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="ItemId" HeaderText="ItemId" SortExpression="ItemId" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="PricePerUnit" HeaderText="PricePerUnit" SortExpression="PricePerUnit" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                        
        <asp:CommandField ShowDeleteButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE">
<ControlStyle Font-Underline="False" ForeColor="#1727AE"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
              <HeaderStyle BackColor="#97BAEC" BorderStyle="None" Font-Underline="False" ForeColor="#1727AE" />
             <FooterStyle BackColor="#97BAEC" Font-Bold="True" ForeColor="#1727AE" />
             <EditRowStyle BackColor="#97BAEC" ForeColor="#1727AE" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#EFF3FB" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F5F7FB" />
              <SortedAscendingHeaderStyle BackColor="#6D95E1" />
              <SortedDescendingCellStyle BackColor="#E9EBEF" />
              <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:HiddenField ID="xyz" runat="server" />
                <asp:HiddenField ID="pqr" runat="server" />
        <asp:HiddenField ID="l7" runat="server" />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [total]" DeleteCommand="DELETE FROM total WHERE (Sr = @Sr)">
                    <DeleteParameters>
                        <asp:Parameter Name="Sr" />
                    </DeleteParameters>
        </asp:SqlDataSource>
                    <br/>
        
<asp:Label ID="Label6" runat="server" Text="Total:" Font-Size="X-Large"><asp:Label ID="Label7" runat="server" Text="" Font-Size="X-Large"></asp:Label></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server"></asp:SqlDataSource>

        <br/>
        <br/>
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource4" style="width:75%; text-align:center; text-decoration:none;" BorderStyle="None" CellPadding="5" CellSpacing="5" ClientIDMode="AutoID" Font-Overline="False">
    <Columns>
        <asp:BoundField DataField="sid" HeaderText="Sales Id" InsertVisible="False" ReadOnly="True" SortExpression="sid" />
        <asp:BoundField DataField="customer" HeaderText="Customer Name" SortExpression="customer" />
        <asp:BoundField DataField="contact" HeaderText="Contact Number" SortExpression="contact" />
        <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
        <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
        <asp:CommandField ShowEditButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE"/>
        <asp:CommandField ShowDeleteButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE"/>
    </Columns>
     <HeaderStyle BackColor="#97BAEC" BorderStyle="None" Font-Underline="False" ForeColor="#1727AE" />
    <FooterStyle BackColor="#97BAEC" Font-Bold="True" ForeColor="#1727AE" />
              <EditRowStyle BackColor="#97BAEC" ForeColor="#1727AE" />
              <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#EFF3FB" />
              <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F5F7FB" />
              <SortedAscendingHeaderStyle BackColor="#6D95E1" />
              <SortedDescendingCellStyle BackColor="#E9EBEF" />
              <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM sales WHERE (sid = @sid)" InsertCommand="INSERT INTO sales(customer, contact, date, total) VALUES (@customer, @contact, @date, @total)" SelectCommand="SELECT sid, customer, contact, date, total FROM sales" UpdateCommand="UPDATE sales SET customer = @customer, contact = @contact, date = @date, total = @total WHERE (sid = @sid)">
            <DeleteParameters>
                <asp:Parameter Name="sid" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="customer" />
                <asp:Parameter Name="contact" />
                <asp:Parameter Name="date" />
                <asp:Parameter Name="total" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="customer" />
                <asp:Parameter Name="contact" />
                <asp:Parameter Name="date" />
                <asp:Parameter Name="total" />
                <asp:Parameter Name="sid" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </form>
    </center>
    </div>

    </form>
       
               

      <div style="background-color: #131A22" class="auto-style14">
        <p style="color: #FFFFFF; text-align:center; padding-top:15px;">
            Copyright © Sales Management. All Rights Reserved.</p>
        <p style="color: #FFFFFF; text-align:center; padding-bottom:5px;">
           Design & Developed By Ayaz - 18103621 & Harsh - 18103627</p>
         
    </div>

        </body>
</html>
