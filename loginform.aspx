﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="Welgate_Organic_Fiesta.loginform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template"/>
  <meta name="author" content="GeeksLabs"/>
  <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal"/>
  <link rel="shortcut icon" href="img/favicon.png"/>

  <title>Login Page  | Welgate Organic Pvt.Ltd</title>

  <!-- Bootstrap CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
  <!-- bootstrap theme -->
  <link href="css/bootstrap-theme.css" rel="stylesheet"/>
  <!--external css-->
  <!-- font icon -->
  <link href="css/elegant-icons-style.css" rel="stylesheet" />
  <link href="css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles -->
  <link href="css/style.css" rel="stylesheet"/>
  <link href="css/style-responsive.css" rel="stylesheet" />

  <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->

    <!-- =======================================================
      Theme Name: NiceAdmin
      Theme URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
      Author: BootstrapMade
      Author URL: https://bootstrapmade.com
    ======================================================= -->
</head>
<body class="login-img3-body">
       
  <div class="container">

    <form id="form1" runat="server" class="login-form">

 
      <div class="login-wrap" >
        <p class="login-img"><i class="icon_lock_alt"></i></p>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_profile"></i></span>
           <asp:TextBox CssClass="form-control" ID="txtuser_id" runat="server" ></asp:TextBox>
        </div>
        <div class="input-group">
          <span class="input-group-addon"><i class="icon_key_alt"></i></span>
          <asp:TextBox CssClass="form-control" ID="txtpswd" runat="server"  TextMode="Password"></asp:TextBox>
        </div>
            <asp:Button CssClass="btn btn-primary btn-lg btn-block" ID="btnlogin" runat="server" Text="LOGIN" OnClick="btnlogin_Click" />
            <a href="Emp_Registration.aspx">New User?Register and Sign Up</a>
            
      </div>

    <div class="text-right">
      <div class="credits">
          <!--
            All the links in the footer should remain intact.
            You can delete the links only if you purchased the pro version.
            Licensing information: https://bootstrapmade.com/license/
            Purchase the pro version form: https://bootstrapmade.com/buy/?theme=NiceAdmin
          -->
          <a href="https://bootstrapmade.com/">Welgate Organic Pvt.Ltd</a>
        </div>
    </div>
 
    </form>
       </div>
</body>
</html>



