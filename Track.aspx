<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Track.aspx.cs" Inherits="Shippink_Kart.Track" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>ExpressBull</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="" />
    <!-- Bootstrap Styles -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <!-- Styles -->
    <link href="style.css" rel="stylesheet" />
    <!-- Flex Slider -->
    <link href="css/flexslider.css" rel="stylesheet" />
    <!-- Carousel Slider -->
    <link href="css/owl-carousel.css" rel="stylesheet" />
    <!-- CSS Animations -->
    <link href="css/animate.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic'
        rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Lato:400,300,400italic,300italic,700,700italic,900'
        rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Exo:400,300,600,500,400italic,700italic,800,900'
        rel='stylesheet' type='text/css' />
    <!-- Support for HTML5 -->
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->
    <!-- Enable media queries on older bgeneral_rowsers -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>  <![endif]-->
</head>
<body>

    <div id="topbar" class="clearfix">
        <div class="container">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <%-- <div class="social-icons">
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Youtube" href="#"><i class="fa fa-youtube"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Dribbble" href="#"><i class="fa fa-dribbble"></i></a></span>
                        <span class="last"><a data-toggle="tooltip" data-placement="bottom" title="Skype" href="#"><i class="fa fa-skype"></i></a></span>
                    </div>--%>
                <!-- end social icons -->
            </div>
            <!-- end columns -->

            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="topmenu">
                    <%--<span class="topbar-login"><i class="fa fa-user"></i><a href="login.html">Login / Register</a></span>
                    <span class="topbar-cart"><i class="fa fa-shopping-cart"></i><a href="shop-cart.html">0 item - $0.00</a></span>--%>
                </div>
                <!-- end top menu -->
                <div class="callus">
                    <span class="topbar-email"><i class="fa fa-envelope"></i><a href="mailto:name@yoursite.com">name@yoursite.com</a></span> <span class="topbar-phone"><i class="fa fa-phone"></i>1-900-324-5467</span>
                </div>
                <!-- end callus -->
            </div>
            <!-- end columns -->
        </div>
        <!-- end container -->
    </div>
    <!-- end topbar -->
     <header id="header-style-1">
        <div class="container">
            <nav class="navbar yamm navbar-default">
                <div class="navbar-header">
                    <button type="button" data-toggle="collapse" data-target="#navbar-collapse-1" class="navbar-toggle">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="Index.aspx" ><img src="logo.png" alt="ExpressBull" height="50" width="200" /></a>
                </div><!-- end navbar-header -->

                <div id="navbar-collapse-1" class="navbar-collapse collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="Index.aspx">Home </a></li>
                        <li><a href="AboutUs.aspx">About</a></li>
                        <li ><a href="Track.aspx">Track </a></li>
                        <li><a href="ContactUs.aspx">Contact</a></li>
                    </ul><!-- end navbar-nav -->
                </div><!-- #navbar-collapse-1 -->
            </nav><!-- end navbar yamm navbar-default -->
        </div><!-- end container -->
    </header><!-- end header-style-1 -->
    <section class="post-wrapper-top jt-shadow clearfix">
	<div class="container">
            <div class="col-lg-12">
                <h2>Track</h2>
                <ul class="breadcrumb pull-right">
                    <li><a href="Client/Index.aspx">Home</a></li>
                    <li>Track</li>
                </ul>
            </div>
        </div>
	</section>
    <!-- end post-wrapper-top -->
    <section class="blog-wrapper">
    	<div class="container">
        	<div id="content" class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                <div class="row">
                   <div class="blog-masonry">
                        <div class="col-lg-12">
                            <form id="form1" runat="server">
							<div class="doc">
                            	<h3>Order</h3>
                                
                                  <div class="form-group">
                                    <label for="txtorderid">Order ID</label>
                                    <asp:TextBox class="form-control" id="txtorderid" placeholder="Enter Order ID" runat="server"></asp:TextBox>
                                   
                                  </div>
                                  <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" 
                                    onclick="Button1_Click"></asp:Button>
                                   
                                
                            </div>
                            
                            <div class="clearfix"></div>
                            <hr/>
                             <asp:Table class="table table-striped table-hover table-bordered" ID="editable_sample"
                                        runat="server">
                                        <asp:TableRow>
                                            <asp:TableHeaderCell>Consignment ID</asp:TableHeaderCell>
                                           
                                            <asp:TableHeaderCell>Time</asp:TableHeaderCell>
                                           <asp:TableHeaderCell>State</asp:TableHeaderCell>
                                           <asp:TableHeaderCell>City</asp:TableHeaderCell>
                                            <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                        </asp:TableRow>
                                    </asp:Table>
							
                            <div class="clearfix"></div>
                            <hr/>
                                </form>
                        </div><!-- end col-lg-12 -->
					</div><!-- end blog-masonry -->
            	</div><!-- end row --> 
            </div><!-- end content -->
            
			
    	</div><!-- end container -->
    </section>
    <!--end white-wrapper -->
    <footer id="footer-style-1">
    	<div class="container">
        	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            	<div class="widget">
                	<img height="50" width="200" src="logo.png" alt=""/><br /><br />
                	<p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Invst igationes demonstraverunt lectores legemer lius quod ii legunt saepius. Claritas est etiam processus dynamicusm lectorum.</p>
                    <div class="social-icons">
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Youtube" href="#"><i class="fa fa-youtube"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a></span>
                        <span><a data-toggle="tooltip" data-placement="bottom" title="Dribbble" href="#"><i class="fa fa-dribbble"></i></a></span>
                    </div><!-- end social icons -->
                </div><!-- end widget -->
            </div><!-- end columns -->
        	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            	<div class="widget">
                	<div class="title">
                        <h3>Twitter Feeds</h3>
                    </div><!-- end title -->
                    <ul class="twitter_feed">
                        <li><span></span><p>Jolly Themes wishes you and your family a merry Christmas and a happy new! <a href="#">about 2 days ago</a></p></li>
                        <li><span></span><p>Jolly Themes wishes you and your family a merry Christmas and a happy new! <a href="#">about 9 days ago</a></p></li>
					</ul><!-- end twiteer_feed --> 
                </div><!-- end widget -->
            </div><!-- end columns -->
        	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            	<div class="widget">
                	<div class="title">
                        <h3>Recent Posts</h3>
                    </div><!-- end title -->
                    <ul class="footer_post">
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_01.jpg" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_02.jpg" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_03.jpg" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_04.jpg" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_05.jpg" alt=""></a></li>
                        <li><a href="#"><img class="img-rounded" src="demos/footer_post_06.jpg" alt=""></a></li>
                    </ul><!-- recent posts -->  
                </div><!-- end widget -->
            </div><!-- end columns -->
        	<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
            	<div class="widget">
                	<div class="title">
                        <h3>NewsLetter</h3>
                    </div><!-- end title -->
					<div class="newsletter_widget">
                    	<p>Subscribe to our newsletter to receive news, updates, free stuff and new releases by email. We don't do spam..</p>
                        <form action="#" class="newsletter_form">
                            <input type="text" class="form-control" placeholder="Enter your email address"> 
                            <a href="#" class="btn btn-primary pull-right">Subscribe</a>    
                        </form><!-- end newsletter form -->
					</div>
                </div><!-- end widget -->
            </div><!-- end columns --> 
    	</div><!-- end container -->
    </footer>
    <!-- end #footer-style-1 -->
    <div id="copyrights">
        <div class="container">
            <div class="col-lg-5 col-md-6 col-sm-12">
                <div class="copyright-text">
                    <p>Copyright © 2017</p>
                </div><!-- end copyright-text -->
            </div><!-- end widget -->
            <div class="col-lg-7 col-md-6 col-sm-12 clearfix">
                <div class="footer-menu">
                    <ul class="menu">
                        <li class="active"><a href="Index.aspx">Home</a></li>
                        <li><a href="AboutUs.aspx">About us</a></li>
                        <li><a href="ContactUs.aspx">Contact Us</a></li>
                    </ul>
                </div>
            </div><!-- end large-7 -->
        </div><!-- end container -->
    </div><!-- end copyrights -->
    <div class="dmtop">
        Scroll to Top
    </div>
    <!-- Main Scripts-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="js/jquery.simple-text-rotator.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/jquery.fitvids.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/custom-portfolio.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script type="text/javascript">
        (function ($) {
            "use strict";
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "fade",
                    controlNav: false,
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
        })(jQuery);
  </script>

</body>
</html>
