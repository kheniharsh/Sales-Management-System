<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manager.aspx.cs" Inherits="SalesManagementSystem.manager" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin | Manager</title>
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
        .auto-style2 {
            height: 98px;
            margin-top: 233px;
        }
        .auto-style3 {
            margin-left: 40px;
        }
    </style>
</head>
<body style="margin:auto; height:auto;">
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
   
    <div style="padding-top:149px;">
        
 <center>
    <form id="form1" runat="server">
        <div class="input-group">
                <div class="form-inline">    
                    <h2 style="background-color: #97BAEC; width:75%; color:#1727AE; height:40px; padding-top:10px;">Manager Management</h2>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive" style="width:76%;">
                         <tr class="alert-info" style="background-color:#D9EDF7;">
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Name" ></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="Label3" runat="server" Text="Username" class="tlabel"></asp:Label>
                            </td>
                             <td>
                                <asp:Label ID="Label4" runat="server" Text="Password" class="tlabel"></asp:Label>
                            </td>
                              <td>
                               <asp:Label ID="Label5" runat="server" Text="Role" class="tlabel"></asp:Label>
                            </td>
                               
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="Name"  placeholder="Name" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="Contact"  placeholder="Contact" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="Username"  placeholder="Username" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="Password"  placeholder="Password" required  CssClass="form-control"/>
                              
                            </td>
                             <td>
                                 <asp:DropDownList ID="DropDownList1" runat="server">
                                     <asp:ListItem>Select</asp:ListItem>
                                     <asp:ListItem>Manager</asp:ListItem>
                                 </asp:DropDownList>
                            </td>
                             <td class="auto-style3">
                                <asp:Button Text="Add Manager" runat="server" ID="Button1" class="btn btn-sm btn-primary" OnClientClick="Adduser_Click" OnClick="Button1_Click" />
                            </td>
                             </tr>
                       
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                 AutoGenerateColumns="False" 
                DataKeyNames="uid" DataSourceID="SqlDataSource1" style="width:75%; text-align:center; text-decoration:none;" BorderStyle="None" CellPadding="5" CellSpacing="5" ClientIDMode="AutoID" Font-Overline="False">
              <Columns>
                  
                  <asp:BoundField DataField="uid" HeaderText="User Id" ReadOnly="True" SortExpression="uid" InsertVisible="False" />
                  <asp:BoundField DataField="name" HeaderText="Name" SortExpression="company_name" />
                  <asp:BoundField DataField="contact" HeaderText="Contact" SortExpression="category" />
                  <asp:BoundField DataField="username" HeaderText="Username" SortExpression="product_name" />
                  <asp:BoundField DataField="password" HeaderText="Password" SortExpression="price_per_unit" />
                  <asp:BoundField DataField="role" HeaderText="Role" SortExpression="role" />
                  <asp:CommandField ShowEditButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE">
                    <ControlStyle Font-Underline="False"></ControlStyle>
                  </asp:CommandField>
                   <asp:CommandField ShowDeleteButton="True" ControlStyle-Font-Underline="false" ControlStyle-ForeColor="#1727AE">
                    <ControlStyle Font-Underline="False"></ControlStyle>
                  </asp:CommandField>
              </Columns>
              <HeaderStyle BackColor="#97BAEC" BorderStyle="None" ForeColor="#1727AE" Font-Bold="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [uid] = @uid" InsertCommand="INSERT INTO [user] ([Name], [Contact], [Username], [Password], [Role]) VALUES (@Name, @Contact, @Username, @Password, @Role" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [Name] = @Name, [Contact] = @Contact, [Username] = @Username, [Password] = @Password, [Role] = @Role WHERE [uid] = @uid">
                <DeleteParameters>
                    <asp:Parameter Name="uid" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="Contact" />
                    <asp:Parameter Name="Username" />
                    <asp:Parameter Name="Password" />
                    <asp:Parameter Name="Role" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" />
                    <asp:Parameter Name="Contact" />
                    <asp:Parameter Name="Username" />
                    <asp:Parameter Name="Password" />
                    <asp:Parameter Name="Role" />
                    <asp:Parameter Name="uid" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </form>
    </center>
</div>
    <br />
    </form>
      <div style="background-color: #131A22" >
        <p style="color: #FFFFFF; text-align:center; padding-top:15px;">
            Copyright © Sales Management. All Rights Reserved.</p>
        <p style="color: #FFFFFF; text-align:center; padding-bottom:5px;">
           Design & Developed By Ayaz - 18103621 & Harsh - 18103627</p>
         
    </div>
    </body>
</html>

