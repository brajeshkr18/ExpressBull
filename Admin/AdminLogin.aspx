<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Shippink_Kart.Admin.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/style-default.css" rel="stylesheet" id="style_color" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="lock">
    <div class="lock-header">
        <!-- BEGIN LOGO -->
        <a class="brand" href="Index.aspx">
                    <img src="../logo.png" height="100" width="250" alt="ExpressBull" />
                </a>
        <!-- END LOGO -->
    </div>
    <form runat="server">
    <div class="login-wrap">
        <div class="metro single-size red">
            <div class="locked">
                <i class="icon-lock"></i><span>Login</span>
            </div>
        </div>
        <div class="metro double-size green">
           
            <div class="input-append lock-input">
                <asp:TextBox ID="txtusername" runat="server" placeholder="Email" TextMode="SingleLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </div>
           
        </div>
        <div class="metro double-size yellow">
           
            <div class="input-append lock-input">
                <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
            </div>
          
        </div>
        <div class="metro single-size terques login">
            <asp:Button ID="Button1" runat="server" Text="Login" class="btn login-btn" 
                onclick="Button1_Click"/>
            
        </div>
        <div class="metro double-size navy-blue ">
            <a href="index.html" class="social-link"><i class="icon-facebook-sign"></i><span>Facebook
                Login</span> </a>
        </div>
        <div class="metro single-size deep-red">
            <a href="index.html" class="social-link"><i class="icon-google-plus-sign"></i><span>
                Google Login</span> </a>
        </div>
        <div class="metro double-size blue">
            <a href="index.html" class="social-link"><i class="icon-twitter-sign"></i><span>Twitter
                Login</span> </a>
        </div>
        <div class="metro single-size purple">
            <a href="index.html" class="social-link"><i class="icon-skype"></i><span>Skype Login</span>
            </a>
        </div>
       <%-- <div class="login-footer">
            <div class="remember-hint pull-left">
                <input type="checkbox" id="">
                Remember Me
            </div>
            <div class="forgot-hint pull-right">
                <a id="forget-password" class="" href="javascript:;">Forgot Password?</a>
            </div>
        </div>--%>
    </div>
    </form>
</body>
<!-- END BODY -->
</html>
