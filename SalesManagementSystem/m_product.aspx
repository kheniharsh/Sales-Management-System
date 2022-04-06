<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="m_product.aspx.cs" Inherits="SalesManagementSystem.m_product" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manager | Product</title>
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
        <asp:HyperLink ID="HyperLink6" runat="server" Text="Logout" NavigateUrl="logout.aspx" class="navbar" style="color: #ffffff; padding:10px; font-size:large; text-decoration:none;"></asp:HyperLink>
        </div>
      
        </div>
   
    <div style="padding-top:149px;">
        
 <center>
        <form id="form1" runat="server">            
            <div class="input-group">
                <div class="form-inline">    
                    <h2 style="background-color: #97BAEC; width:75%; color:#1727AE; height:40px; padding-top:10px;">Product Management</h2>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive" style="width:76%;">
                         <tr class="alert-info" style="background-color:#D9EDF7;">
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Company Name" ></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="Label3" runat="server" Text="Product Name" class="tlabel"></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="Label4" runat="server" Text="Price Per Unit" class="tlabel"></asp:Label>
                            </td>
                              <td>
                               <asp:Label ID="Label5" runat="server" Text="Stock" class="tlabel"></asp:Label>
                            </td>
                               
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="companyname"  placeholder="Company Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="category"  placeholder="Category" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="productname"  placeholder="Product Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="priceperunit"  placeholder="eg: 2.45" required  CssClass="form-control"/>
                              
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="stock"  placeholder="Stock" required  CssClass="form-control"/>
                            </td>
                             <td>
                                <asp:Button Text="Add Product" runat="server" ID="Button1" class="btn btn-sm btn-primary" OnClick="Button1_Click"  />
                            </td>
                             </tr>
                       
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                 AutoGenerateColumns="False" 
                DataKeyNames="pid" DataSourceID="SqlDataSource1" style="width:75%; text-align:center; text-decoration:none;" BorderStyle="None" CellPadding="5" CellSpacing="5" ClientIDMode="AutoID" Font-Overline="False">
              <Columns>
                 
                  <asp:BoundField DataField="pid" HeaderText="Product ID" ReadOnly="True" SortExpression="pid" InsertVisible="False" />
                  <asp:BoundField DataField="companyname" HeaderText="Company Name" SortExpression="companyname" />
                  <asp:BoundField DataField="category" HeaderText="Category" SortExpression="category" />
                  <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
                  <asp:BoundField DataField="priceperunit" HeaderText="Price Per Unit" SortExpression="priceperunit" />
                  <asp:BoundField DataField="stock" HeaderText="Stock" SortExpression="stock" />
                  <asp:CommandField ShowEditButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE"/>
                  
                  
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [product]" 
                DeleteCommand="DELETE FROM [product] WHERE [pid] = @pid" 
                InsertCommand="INSERT INTO [product] ([companyname], [category], [productname], [priceperunit], [stock]) VALUES (@companyname, @category, @productname, @priceperunit, @stock)" 
                UpdateCommand="UPDATE [product] SET [companyname] = @companyname, [category] = @category, [productname] = @productname, [priceperunit] = @priceperunit, [stock] = @stock WHERE (pid = @pid)" >
                <DeleteParameters>
                    <asp:Parameter Name="pid" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="cname" />
                    <asp:Parameter Name="category" />
                    <asp:Parameter Name="pname" />
                    <asp:Parameter Name="ppu" />
                    <asp:Parameter Name="stock" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="cname" />
                    <asp:Parameter Name="category" />
                    <asp:Parameter Name="pname" />
                    <asp:Parameter Name="ppu" />
                    <asp:Parameter Name="stock" />
                    <asp:Parameter Name="pid" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </center>

    </div>
      <div style="height: 76px; background-color: #131A22">
        <p style="color: #FFFFFF; text-align:center; padding-top:15px;">
            Copyright © Sales Management. All Rights Reserved.</p>
        <p style="color: #FFFFFF; text-align:center; padding-bottom:5px;">
           Design & Developed By Ayaz - 18103621 & Harsh - 18103627</p>
         
    </div>
    </body>
</html>
