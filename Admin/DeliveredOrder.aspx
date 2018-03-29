<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeliveredOrder.aspx.cs"
    Inherits="Shippink_Kart.DeliveredOrder" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                            <h3 class="page-title">Delivered Order
                            </h3>
                            <ul class="breadcrumb">
                                <li><a href="#">Home</a> <span class="divider">/</span> Order <span class="divider">/</span> </li>
                                <li class="active">Delivered Order </li>
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
                            <!-- BEGIN EXAMPLE TABLE widget-->
                            <div class="widget purple">
                                <div class="widget-title">
                                    <h4>
                                        <i class="icon-reorder">&nbsp; Delivered </i>Order Detail</h4>
                                    <span class="tools"><a href="javascript:;" class="icon-chevron-down"></a><a href="javascript:;"
                                        class="icon-remove"></a></span>
                                </div>
                                <div class="widget-body">
                                    <div>
                                        <%-- <div class="clearfix">
                                        <div class="btn-group">
                                            <button id="editable-sample_new" class="btn green">
                                                Add New <i class="icon-plus"></i>
                                            </button>
                                        </div>
                                        <div class="btn-group pull-right">
                                            <button class="btn dropdown-toggle" data-toggle="dropdown">
                                                Tools <i class="icon-angle-down"></i>
                                            </button>
                                            <ul class="dropdown-menu pull-right">
                                                <li><a href="#">Print</a></li>
                                                <li><a href="#">Save as PDF</a></li>
                                                <li><a href="#">Export to Excel</a></li>
                                            </ul>
                                        </div>
                                    </div>--%>
                                        <div class="space15">
                                        </div>

                                        <%-- <asp:Table class="table table-striped table-hover table-bordered" ID="editable_sample"
                                        runat="server">
                                        <asp:TableRow>
                                            <asp:TableHeaderCell>Consignment ID</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Expected Date</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer Name</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer Address</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer State</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer City</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer Phonr</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Customer Email</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Item Name</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Item Description</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Item Unit Price</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Item Quantity</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Item Total Price</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Action</asp:TableHeaderCell>
                                        </asp:TableRow>
                                       
                                        <asp:TableRow>
                                        </asp:TableRow>
                                    </asp:Table>--%>
                                        <div class="row-fluid">
                                            <div class="col-sm-12">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                                                    CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1"
                                                    ForeColor="#333333" GridLines="None" Width="100%"
                                                    Style="overflow: auto; text-align: center" AllowPaging="True"
                                                    OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>

                                                        <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True"
                                                            SortExpression="OrderID" />
                                                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName"
                                                            SortExpression="CustomerName" />
                                                        <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress"
                                                            SortExpression="CustomerAddress" />
                                                        <asp:BoundField DataField="CustomerPhone" HeaderText="CustomerPhone"
                                                            SortExpression="CustomerPhone" />
                                                        <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail"
                                                            SortExpression="CustomerEmail" />
                                                        <asp:BoundField DataField="ItemName" HeaderText="ItemName"
                                                            SortExpression="ItemName" />
                                                        <asp:BoundField DataField="ItemDescription" HeaderText="ItemDescription"
                                                            SortExpression="ItemDescription" />
                                                        <asp:CommandField ShowSelectButton="True" HeaderText="Action" SelectText="View" ControlStyle-ForeColor="Navy" />

                                                    </Columns>
                                                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                    <SortedDescendingHeaderStyle BackColor="#820000" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:expressConnectionString %>" SelectCommand="SELECT DISTINCT [OrderID], [CustomerName], [CustomerAddress], [CustomerPhone], [CustomerEmail], [ItemName], [ItemDescription] FROM [OrderDetail] WHERE ([Status] = @Status)">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="Delivered" Name="Status" Type="String" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                        </div>
                                        <asp:Label ID="Label1" runat="server"></asp:Label>

                                    </div>
                                </div>
                            </div>
                            <!-- END EXAMPLE TABLE widget-->
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
    <script src="js/excanvas.js"></script>
    <script src="js/respond.js"></script>
    <![endif]-->
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/chart-master/Chart.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <!--script for this page only-->
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
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
