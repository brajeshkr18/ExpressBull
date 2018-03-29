<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Invoice.aspx.cs" Inherits="Shippink_Kart.Admin.Invoice" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title></title>
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
    <form id="Form1" runat="server">
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
                        data-target=".nav-collapse"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="arrow"></span></a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <div id="top_menu" class="nav notify-row">
                    </div>
                    <!-- END  NOTIFICATION -->
                    <div class="top-nav ">
                        <ul class="nav pull-right top-menu">
                            <!-- BEGIN SUPPORT -->
                            <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom"
                                data-toggle="tooltip" href="#" data-original-title="Chat"><i class="icon-comments-alt"></i></a></li>
                            <li class="dropdown mtop5"><a class="dropdown-toggle element" data-placement="bottom"
                                data-toggle="tooltip" href="#" data-original-title="Help"><i class="icon-headphones"></i></a></li>
                            <!-- END SUPPORT -->
                            <!-- BEGIN USER LOGIN DROPDOWN -->
                            <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="img/avatar1_small.jpg" alt="">
                                <span class="username">Jhon Doe</span> <b class="caret"></b></a>
                                <ul class="dropdown-menu extended logout">
                                    <li><a href="#"><i class="icon-user"></i>My Profile</a></li>
                                    <li><a href="#"><i class="icon-cog"></i>My Settings</a></li>
                                    <li>
                                        <asp:Button ID="Button2" runat="server" Text="Log Out" Height="38"
                                            CssClass="btn-block" Style="font-weight: bold;" BorderStyle="None"
                                            BorderWidth="0" OnClick="Button2_Click" /></li>
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
                        <li class="sub-menu active"><a class="" href="index.html"><i class="icon-dashboard"></i><span>Dashboard</span> </a></li>
                        <li class="sub-menu"><a href="javascript:;" class=""><i class="icon-book"></i><span>Masters</span> <span class="arrow"></span></a>
                            <ul class="sub">
                                <li><a class="" href="AddState.aspx">Add State</a></li>
                                <li><a class="" href="AddCity.aspx">Add City</a></li>
                            </ul>
                        </li>
                        <li class="sub-menu"><a href="javascript:;" class=""><i class="icon-book"></i><span>Order</span> <span class="arrow"></span></a>
                            <ul class="sub">
                                <%--<li><a class="" href="CreateOrder.aspx">Create Order</a></li>--%>
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
                                            class="color-green" data-style="green"></span><span class="color-gray" data-style="gray"></span><span class="color-purple" data-style="purple"></span><span class="color-red"
                                                data-style="red"></span></span></span>
                                </div>
                                <!-- END THEME CUSTOMIZER-->
                                <!-- BEGIN PAGE TITLE & BREADCRUMB-->
                                <h3 class="page-title">Invoice
                                </h3>
                                <ul class="breadcrumb">
                                    <li><a href="#">Home</a> <span class="divider">/</span> </li>
                                    <li><a href="#">Metro Lab</a> <span class="divider">/</span> </li>
                                    <li><a href="#">Order</a> <span class="divider">/</span> </li>
                                    <li class="active">Invoice </li>
                                    <li class="pull-right search-wrap">
                                        <div class="input-append search-input-area">
                                            <input class="" id="appendedInputButton" type="text">
                                            <button class="btn" type="button">
                                                <i class="icon-search"></i>
                                            </button>
                                        </div>
                                    </li>
                                </ul>
                                <!-- END PAGE TITLE & BREADCRUMB-->
                            </div>
                        </div>
                        <!-- END PAGE HEADER-->
                        <!-- BEGIN PAGE CONTENT-->
                        <%--<div class="row-fluid">
                    <!--BEGIN METRO STATES-->
                    <div class="metro-nav">
                        <div class="metro-nav-block  nav-block-grey">
                            <a href="#" data-original-title="">
                                <div class="text-center">
                                    <i class="icon-eye-open"></i>
                                </div>
                                <div class="status">
                                    View Invoice</div>
                            </a>
                        </div>
                        <div class="metro-nav-block nav-block-blue ">
                            <a href="#" data-original-title="">
                                <div class="text-center">
                                    <i class="icon-edit"></i>
                                </div>
                                <div class="status">
                                    Create Invoice</div>
                            </a>
                        </div>
                        <div class="metro-nav-block  nav-block-red">
                            <a href="#" data-original-title="">
                                <div class="text-center">
                                    <i class="icon-th-list"></i>
                                </div>
                                <div class="status">
                                    Invoice List</div>
                            </a>
                        </div>
                    </div>
                    <div class="space10">
                    </div>
                    <!--END METRO STATES-->
                </div>--%>
                        <div class="row-fluid">
                            <%--<div class="span2">
                    </div>--%>
                            <div class="span8">
                                Select Order ID
                        <asp:DropDownList ID="drporderid" runat="server" class="span6"
                            AutoPostBack="true" OnSelectedIndexChanged="drporderid_SelectedIndexChanged1">
                        </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" Text="Generate" class="span2" CssClass="btn btn-success"
                                    OnClick="Button1_Click" Style="margin-top: -10px;" />
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span12">
                                <!-- BEGIN BLANK PAGE PORTLET-->
                                <div class="widget purple">
                                    <div class="widget-title">
                                        <h4>
                                            <i class="icon-edit"></i>Invoice Page
                                        </h4>
                                        <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;"
                                            class="icon-remove"></a></span>
                                    </div>
                                    <div class="widget-body">
                                        <div class="row-fluid">
                                            <div class="span12">
                                                <div class="text-center">
                                                    <img alt="" src="img/vector-lab.jpg">
                                                </div>
                                                <hr>
                                            </div>
                                        </div>
                                        <div class="space20">
                                        </div>
                                        <div class="row-fluid invoice-list">
                                            <div class="span4">
                                                <h3>BILLING ADDRESS</h3>
                                                <p>
                                                    Jonathan Smith
                                            <br>
                                                    44 Dreamland Tower, Suite 566
                                            <br>
                                                    ABC, Dreamland 1230<br>
                                                    Tel: +12 (012) 345-67-89
                                                </p>
                                            </div>
                                            <div class="span4">
                                                <h3>SHIPPING ADDRESS</h3>
                                                <p>
                                                    <asp:Label ID="Label2" runat="server"></asp:Label><br>
                                                    <asp:Label ID="Label3" runat="server"></asp:Label><br>
                                                    <asp:Label ID="Label4" runat="server"></asp:Label><br>
                                                    <asp:Label ID="Label5" runat="server"></asp:Label><br>
                                                </p>
                                            </div>
                                            <div class="span4">
                                                <h4>INVOICE INFO</h4>
                                                <ul class="unstyled">
                                                    <li>Invoice Number : <strong>
                                                        <asp:Label ID="Label6" runat="server"></asp:Label></strong></li>
                                                    <li>Invoice Date : 
                                                <asp:Label ID="Label7" runat="server"></asp:Label></li>
                                                    <li>Expected Delivery Date : 
                                                <asp:Label ID="Label8" runat="server"></asp:Label></li>
                                                    <%--<li>Invoice Status : Paid</li>--%>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="space20">
                                        </div>
                                        <div class="space20">
                                        </div>
                                        <div class="row-fluid">
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Item
                                                        </th>
                                                        <th class="hidden-480">Description
                                                        </th>
                                                        <th class="hidden-480">Unit Cost
                                                        </th>
                                                        <th class="hidden-480">Quantity
                                                        </th>
                                                        <th>Total
                                                        </th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="Label9" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="hidden-480">
                                                            <asp:Label ID="Label10" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="hidden-480">
                                                            <asp:Label ID="Label11" runat="server"></asp:Label>
                                                        </td>
                                                        <td class="hidden-480">
                                                            <asp:Label ID="Label12" runat="server"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label13" runat="server"></asp:Label>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="space20">
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span4 invoice-block pull-right">
                                                <ul class="unstyled amounts">
                                                    <%--<li><strong>Sub - Total amount :</strong> $6820</li>
                                            <li><strong>Discount :</strong> 10%</li>
                                            <li><strong>VAT :</strong> -----</li>--%>
                                                    <li><strong>Tax :</strong><asp:Label ID="Label15" runat="server" /></li>
                                                    <li><strong>Grand Total :</strong><asp:Label ID="Label14" runat="server" /></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="space20">
                                        </div>
                                        <div class="row-fluid text-center">
                                            <asp:Button ID="submit" runat="server" Text="Submit"
                                                class="btn btn-success btn-large hidden-print" OnClick="submit_Click" />

                                            <a class="btn btn-inverse btn-large hidden-print" onclick="javascript:window.print();">Print <i class="icon-print icon-big"></i></a>
                                        </div>
                                    </div>
                                </div>
                                <!-- END BLANK PAGE PORTLET-->
                            </div>
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
        </form>
     
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
    
</body>
<!-- END BODY -->
</html>
