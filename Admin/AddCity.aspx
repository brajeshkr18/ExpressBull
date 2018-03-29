<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCity.aspx.cs" Inherits="Shippink_Kart.AddCity" %>

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
                            <h3 class="page-title">Add City
                            </h3>
                            <ul class="breadcrumb">
                                <li><a href="#">Home</a> <span class="divider">/</span> </li>
                                <li><a href="#">Master</a> <span class="divider">/</span> </li>
                                <li class="active">Add City</li>
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
                    <!-- BEGIN EDITABLE TABLE widget-->
                    <div class="row-fluid">
                        <div class="span12">
                            <!-- BEGIN BLANK PAGE PORTLET-->
                            <div class="widget purple">
                                <div class="widget-title">
                                    <h4>
                                        <i class="icon-edit"></i>Add State
                                    </h4>

                                </div>
                                <div class="widget-body">
                                    <div class="portlet-body">

                                        <div class="space15">
                                        </div>
                                        <div class="row-fluid">
                                            <div class="span6 billing-form">
                                                <h3>State</h3>
                                                <div class="space10">
                                                </div>
                                                <div class="control-group ">
                                                    <label class="control-label">
                                                        State Name</label>
                                                    <asp:DropDownList ID="drpstate" runat="server" class=" span8"
                                                        DataSourceID="SqlDataSource1" DataTextField="StateName"
                                                        DataValueField="StateName">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:expressConnectionString %>" SelectCommand="SELECT DISTINCT [StateName] FROM [State]"></asp:SqlDataSource>
                                                </div>
                                                <div class="control-group ">
                                                    <label class="control-label">
                                                        City Name</label>
                                                    <asp:TextBox ID="txtCity" runat="server" class=" span8"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                        ErrorMessage="Required" ForeColor="Maroon" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="space15">
                                        </div>
                                        <div class="row-fluid">
                                            <div class="row-fluid text-center">
                                                <asp:Button ID="Button1" runat="server" Text="Submit Order"
                                                    class="btn btn-primary btn-large hidden-print" OnClick="Button1_Click" />

                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <!-- END BLANK PAGE PORTLET-->
                </div>
            </div>
            <!-- END EDITABLE TABLE widget-->
        </div>
        <!-- END PAGE CONTAINER-->
        </div>
    <!-- END PAGE -->
        </div>
    <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <div id="footer">
            2013 &copy; Metro Lab Dashboard.
        </div>
    </form>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS -->
    <!-- Load javascripts at bottom, this will reduce page load time -->
    <script src="js/jquery-1.8.3.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.blockui.js"></script>
    <!-- ie8 fixes -->
    <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->
    <script type="text/javascript" src="assets/uniform/jquery.uniform.min.js"></script>
    <script type="text/javascript" src="assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="assets/data-tables/DT_bootstrap.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <!--common script for all pages-->
    <script src="js/common-scripts.js"></script>
    <!--script for this page only-->
    <script src="js/editable-table.js"></script>
    <!-- END JAVASCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            EditableTable.init();
        });
    </script>

</body>
<!-- END BODY -->
</html>
