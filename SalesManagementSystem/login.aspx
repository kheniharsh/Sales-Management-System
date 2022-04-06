<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SalesManagementSystem.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales Management</title>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <link href="Style.css" rel="stylesheet" />
     <style>
        .content
        {
            position: absolute;
            color: white;
            font-weight:bold;
        }

        #myVideo
        {
            object-fit: initial;
            width: 100%;
            height: 100%;
        }
        .input-container {
          display: -ms-flexbox; /* IE10 */
          display: flex;
          width: 100%;
          margin-bottom: 15px;
        }

        .icon {
          padding: 10px 5px;
          color: black;
          text-align: center;
        }

        .input-field {
          width: 100%;
          padding: 10px;
          outline: none;
          font-family:serif;
          opacity:0.5;
          border-radius:10px;
        }
        .input-field:hover {
            border-radius:10px;  
            border-style: none solid solid;
            border-color:#7da5c4;
            outline:0;
            opacity: 1;
        }

        .input-field:focus {
          border: 2px solid dodgerblue;
        }

        /* Set a style for the submit button */
        .btn {
          background-color: black;
          color: white;
          margin-left:28px;
          padding: 10px 15px;
          border: none;
          cursor: pointer;
          width: 89%;
          opacity: 0.9;
          font-size:18px;
          font-style:normal;
          font-family:serif;
          opacity:0.7;
          border-radius:10px;
          
        }

        .btn:hover {
          opacity: 1;
          border-radius:10px;

        }
    </style>
</head>
<body style="margin:0px;">
    <div class="content" style="height: 100%;width: 100%;">
    <img src="img/Sales3.png" style="height: 150px; width: 293px; margin-left: 4px; margin-top: 3px; position:absolute; top: 25%; left: 42%; right:42%; bottom:30%; " />
            <video autoplay muted loop id="myVideo">
            <source src="img/background.mp4" type="video/mp4"/>
            Your browser does not support HTML5 video.
                
            </video>
        </div>
    <div style="position:absolute; opacity:0.2; background-color:white; top: 25%; left: 42%; right:42%; bottom:30%;height: 375px; width: 300px;  border-radius: 8px; box-shadow:  5px 10px 18px black;">  
        </div>
    <form id="form1" runat="server" style="position:absolute; top: 50%; left: 42%; right:42%; bottom:30%; width: 287px;">
        <div class="input-container">
            <i class="fa fa-user icon"></i>
            <asp:TextBox ID="username" class="input-field" runat="server" placeholder="User Name" ToolTip="Enter Username"></asp:TextBox>
        </div>
        <div class="input-container">
             <i class="fa fa-key icon"></i>
            <asp:TextBox ID="password" class="input-field" runat="server" placeholder="Password" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>
        </div>
            <asp:Button ID="Button1" class="btn" runat="server" Text="Log In" OnClick="Button1_Click" />
   
    </form>
</body>
</html>
