<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Shippink_Kart.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="Mosaddek" name="author" />
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
    <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/style-default.css" rel="stylesheet" id="style_color" />
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet"
        type="text/css" media="screen" />
</head>
<body class="fixed-top">
    <form runat="server">
    <!-- BEGIN HEADER -->
    <div id="header" class="navbar navbar-inverse navbar-fixed-top">
        <!-- BEGIN TOP NAVIGATION BAR -->
        <div class="navbar-inner">
            <div class="container-fluid">
                <!--BEGIN SIDEBAR TOGGLE-->
                <div class="sidebar-toggle-box hidden-phone">
                    <div class="icon-reorder tooltips" data-placement="right" data-original-title="Toggle Navigation">
                    </div>
                </div>
                <!--END SIDEBAR TOGGLE-->
                <!-- BEGIN LOGO -->
                <a class="brand" href="Index.aspx">
                    <img src="../logo.png" height="50" width="200" alt="ExpressBull" />
                </a>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                <a class="btn btn-navbar collapsed" id="main_menu_trigger" data-toggle="collapse"
                    data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar">
                    </span><span class="icon-bar"></span><span class="arrow"></span></a>
                <!-- END RESPONSIVE MENU TOGGLER -->
                <div id="top_menu" class="nav notify-row">
                </div>
                <!-- END  NOTIFICATION -->
                <div class="top-nav ">
                    <ul class="nav pull-right top-menu">
                        <!-- BEGIN SUPPORT -->
                        <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom"
                            data-toggle="tooltip" href="#" data-original-title="Chat"><i class="icon-comments-alt">
                            </i></a></li>
                        <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom"
                            data-toggle="tooltip" href="#" data-original-title="Help"><i class="icon-headphones">
                            </i></a></li>
                        <!-- END SUPPORT -->
                        <!-- BEGIN USER LOGIN DROPDOWN -->
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="img/avatar1_small.jpg" alt="">
                            <span class="username">
                                <asp:Label ID="Label1" runat="server"></asp:Label></span> <b class="caret"></b>
                        </a>
                            <ul class="dropdown-menu extended logout">
                                <li><a href="#"><i class="icon-user"></i>My Profile</a></li>
                                <li><a href="#"><i class="icon-cog"></i>My Settings</a></li>
                                <li>
                                    <asp:Button ID="Button1" runat="server" Text="Log Out" Height="38" 
                                        CssClass="btn-block" style="font-weight:bold;" BorderStyle="None" 
                                        BorderWidth="0" onclick="Button1_Click" /></li>
                            </ul>
                        </li>
                        <!-- END USER LOGIN DROPDOWN -->
                    </ul>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
            </div>
        </div>
        <!-- END TOP NAVIGATION BAR -->
    </div>
    <!-- END HEADER -->
    <!-- BEGIN CONTAINER -->
    <div id="container" class="row-fluid">
        <!-- BEGIN SIDEBAR -->
        <div class="sidebar-scroll">
            <div id="sidebar" class="nav-collapse collapse">
                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                <div class="navbar-inverse">
                    <form class="navbar-search visible-phone">
                    <input type="text" class="search-query" placeholder="Search" />
                    </form>
                </div>
                <!-- END RESPONSIVE QUICK SEARCH FORM -->
                <!-- BEGIN SIDEBAR MENU -->
                <ul class="sidebar-menu">
                    <li class="sub-menu active"><a class="" href="AdminHome.aspx"><i class="icon-dashboard">
                    </i><span>Dashboard</span> </a></li>
                    <li class="sub-menu"><a href="javascript:;" class=""><i class="icon-book"></i><span>
                        Masters</span> <span class="arrow"></span></a>
                        <ul class="sub">
                            <li><a class="" href="AddState.aspx">Add State</a></li>
                            <li><a class="" href="AddCity.aspx">Add City</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu"><a href="javascript:;" class=""><i class="icon-book"></i><span>
                        Order</span> <span class="arrow"></span></a>
                        <ul class="sub">
                            <%-- <li><a class="" href="CreateOrder.aspx">Create Order</a></li>--%>
                            <li><a class="" href="ViewOrder.aspx">View Order</a></li>
                            <li><a class="" href="DeliveredOrder.aspx">Delivered Consignment</a></li>
                            <li><a class="" href="Invoice.aspx">Invoice</a></li>
                        </ul>
                    </li>
                    <!--<li class="sub-menu"><a href="javascript:;" class=""><i class="icon-glass"></i><span>
                        Extra</span> <span class="arrow"></span></a>
                        <ul class="sub">
                            <li><a class="" href="invoice.html">Invoice</a></li>
                            <li><a class="" href="404.html">404 Error</a></li>
                            <li><a class="" href="500.html">500 Error</a></li>
                        </ul>
                    </li>-->
                </ul>
                <!-- END SIDEBAR MENU -->
            </div>
        </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN PAGE -->
        <div id="main-content">
            <!-- BEGIN PAGE CONTAINER-->
            <div class="container-fluid">
                <!-- BEGIN PAGE HEADER-->
                <div class="row-fluid">
                    <div class="span12">
                        <!-- BEGIN THEME CUSTOMIZER-->
                        <div id="theme-change" class="hidden-phone">
                            <i class="icon-cogs"></i><span class="settings"><span class="text">Theme Color:</span>
                                <span class="colors"><span class="color-default" data-style="default"></span><span
                                    class="color-green" data-style="green"></span><span class="color-gray" data-style="gray">
                                    </span><span class="color-purple" data-style="purple"></span><span class="color-red"
                                        data-style="red"></span></span></span>
                        </div>
                        <!-- END THEME CUSTOMIZER-->
                        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                        <h3 class="page-title">
                            Dashboard
                        </h3>
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a> <span class="divider">/</span> </li>
                            <li><a href="#">Metro Lab</a> <span class="divider">/</span> </li>
                            <li class="active">Dashboard </li>
                            <li class="pull-right search-wrap">
                                <form action="search_result.html" class="hidden-phone">
                                <div class="input-append search-input-area">
                                    <input class="" id="appendedInputButton" type="text">
                                    <button class="btn" type="button">
                                        <i class="icon-search"></i>
                                    </button>
                                </div>
                                </form>
                            </li>
                        </ul>
                        <!-- END PAGE TITLE & BREADCRUMB-->
                    </div>
                </div>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <div class="row-fluid">
                    <!--BEGIN METRO STATES-->
                    <div class="metro-nav">
                        <div class="metro-nav-block nav-block-red">
                            <a data-original-title="" href="#"><i class="icon-bar-chart"></i>
                                <div class="info">
                                    +288</div>
                                <div class="status">
                                    Update</div>
                            </a>
                        </div>
                    </div>
                    <div class="metro-nav">
                        <div class="metro-nav-block nav-light-purple">
                            <a data-original-title="" href="#"><i class="icon-shopping-cart"></i>
                                <div class="info">
                                    29</div>
                                <div class="status">
                                    New Order</div>
                            </a>
                        </div>
                    </div>
                    <div class="space10">
                    </div>
                    <!--END METRO STATES-->
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div id="footer">
        2013 &copy; Metro Lab Dashboard.
    </div>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS -->
    <!-- Load javascripts at bottom, this will reduce page load time -->
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/jquery-slimscroll/jquery-ui-1.9.2.custom.min.js"></script>
    <script type="text/javascript" src="assets/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <!-- ie8 fixes -->
    <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/chart-master/Chart.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    <!--script for this page only-->
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/sparkline-chart.js"></script>
    <script src="js/home-page-calender.js"></script>
    <script src="js/home-chartjs.js"></script>
    <!-- END JAVASCRIPTS -->
    </form>
</body>
<!-- END BODY -->
</html>
