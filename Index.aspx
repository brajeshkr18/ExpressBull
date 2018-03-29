<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Shippink_Kart.Index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>ExpressBull</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <!-- Bootstrap Styles -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Styles -->
    <link href="style.css" rel="stylesheet">

    <!-- Carousel Slider -->
    <link href="css/owl-carousel.css" rel="stylesheet">

    <!-- CSS Animations -->
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,300,400italic,300italic,700,700italic,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Exo:400,300,600,500,400italic,700italic,800,900' rel='stylesheet' type='text/css'>
    <!-- SLIDER ROYAL CSS SETTINGS -->
    <link href="royalslider/royalslider.css" rel="stylesheet">
    <link href="royalslider/skins/default-inverted/rs-default-inverted.css" rel="stylesheet">

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />

    <!-- Support for HTML5 -->
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Enable media queries on older bgeneral_rowsers -->
    <!--[if lt IE 9]>
      <script src="js/respond.min.js"></script>  <![endif]-->
    <!-- Switcher Only -->
    <%--<link rel="stylesheet" id="switcher-css" type="text/css" href="Client/switcher/css/switcher.css" media="all" />--%>
    <!-- END Switcher Styles -->


</head>
<body>
    <form id="form1" runat="server">
    
    <div id="topbar" class="clearfix">
        <div class="container">
            <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="social-icons">
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Facebook" href="#"><i class="fa fa-facebook"></i></a></span>
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Google Plus" href="#"><i class="fa fa-google-plus"></i></a></span>
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Twitter" href="#"><i class="fa fa-twitter"></i></a></span>
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Youtube" href="#"><i class="fa fa-youtube"></i></a></span>
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Linkedin" href="#"><i class="fa fa-linkedin"></i></a></span>
                    <span><a data-toggle="tooltip" data-placement="bottom" title="Dribbble" href="#"><i class="fa fa-dribbble"></i></a></span>
                    <span class="last"><a data-toggle="tooltip" data-placement="bottom" title="Skype" href="#"><i class="fa fa-skype"></i></a></span>
                </div><!-- end social icons -->
            </div><!-- end columns -->
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                <div class="topmenu">
                   <%-- <span class="topbar-login"><i class="fa fa-user"></i> <a href="login.html">Login / Register</a></span>
                    <span class="topbar-cart"><i class="fa fa-shopping-cart"></i> <a href="shop-cart.html">0 item - $0.00</a></span>--%>
                </div><!-- end top menu -->
                <div class="callus">
                    <span class="topbar-email"><i class="fa fa-envelope"></i> <a href="mailto:name@yoursite.com">feedback@expressbull.com</a></span>
                    <span class="topbar-phone"><i class="fa fa-phone"></i> 9999092658</span>
                </div><!-- end callus -->
            </div><!-- end columns -->
        </div><!-- end container -->
    </div><!-- end topbar -->

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

    <div class="slider-wrapper">

        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_04.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                    </li>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_03.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                    </li>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_07.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                    </li>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_05.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>

                    </li>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_01.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                    </li>
                    <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
                        <img src="demos/sliderbg_02.jpg" alt="slidebg1" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat"/>
                    </li>
                </ul>
                <div class="tp-bannertimer"></div>
            </div>
        </div>
    </div><!-- end slider-wrapper -->


    <div class="white-wrapper">
        <div class="container">
            <div class="services_vertical">

                <div class="clearfix"></div>
            </div><!-- end services_vertical -->
            <div class="clearfix"></div>

        </div><!-- end container -->
    </div><!-- end transparent-bg -->
    <div class="grey-wrapper jt-shadow">
        <div class="container">
            <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">

            </div><!-- end col-lg-6 -->

            <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                <div class="widget">


                </div><!-- end widget -->
            </div><!-- end col-lg-6 -->
        </div><!-- end container -->
    </div><!-- end grey-wrapper -->
    <section class="white-wrapper">
        <div class="container">


        </div><!-- end container -->

        <div class="masonry_wrapper">

        </div>

        <div class="clearfix"></div>



    </section><!-- end white-wrapper -->

    <section id="one-parallax" class="parallax" style="background-image: url('demos/parallax_01.jpg');" data-stellar-background-ratio="0.6" data-stellar-vertical-offset="20">
        <div class="overlay">
            <div class="container">
                <div class="testimonial-widget">
                    <div id="owl-testimonial" class="owl-carousel">
                        <div class="testimonial">
                            <p class="lead">
                                Gorgeous, just gorgeous I love this theme. The nicest theme I ever worked with and I have worked with hundreds<br>
                                of them. Thanks for beautiful work, keep it up!
                            </p>
                            <h3>Filiz ÖZER - Jolly Themes</h3>
                        </div><!-- end tweet -->
                        <div class="testimonial">
                            <p class="lead">
                                Gorgeous, just gorgeous I love this theme. The nicest theme I ever worked with and I have worked with hundreds<br>
                                of them. Thanks for beautiful work, keep it up!
                            </p>
                            <h3>Na Vicky - Jolly Themes</h3>
                        </div><!-- end tweet -->
                        <div class="testimonial">
                            <p class="lead">Gorgeous, just gorgeous I love this theme. The nicest theme I ever worked with and I have worked with hundreds of them. Thanks for beautiful work, keep it up!</p>
                            <h3>James Watson - Envato</h3>
                        </div><!-- end tweet -->
                    </div><!-- end owl-testimonial -->
                </div><!-- end testimonial widget -->
            </div><!-- end container -->
        </div><!-- end overlay -->
    </section><!-- end transparent-bg -->
    <div class="make-bg-full">
        <div class="calloutbox-full-mini nocontainer">
            <div class="long-twitter">
                <p class="lead"><i class="fa fa-twitter"></i> Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros. <a href="#">25 min ago</a></p>
            </div>
        </div><!-- end calloutbox -->
    </div><!-- make bg -->

    <footer id="footer-style-1">
        <div class="container">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="widget">
                    <img  src="logo.png" height="50" width="200" alt=""><br /><br />
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
    </footer><!-- end #footer-style-1 -->
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

    <div class="dmtop">Scroll to Top</div>

    <!-- Main Scripts-->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.parallax-1.1.3.js"></script>
    <script src="js/jquery.simple-text-rotator.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/custom.js"></script>

    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/custom-portfolio-masonry.js"></script>
    <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
    <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript">
        var revapi;
        jQuery(document).ready(function () {
            revapi = jQuery('.tp-banner').revolution(
            {
                delay: 9000,
                startwidth: 1170,
                startheight: 500,
                hideThumbs: 10,
                fullWidth: "on",
                forceFullWidth: "on"
            });
        });	//ready
    </script>

    <!-- Royal Slider script files -->
    <script src="royalslider/jquery.easing-1.3.js"></script>
    <script src="royalslider/jquery.royalslider.min.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            var rsi = $('#slider-in-laptop').royalSlider({
                autoHeight: false,
                arrowsNav: false,
                fadeinLoadedSlide: false,
                controlNavigationSpacing: 0,
                controlNavigation: 'bullets',
                imageScaleMode: 'fill',
                imageAlignCenter: true,
                loop: false,
                loopRewind: false,
                numImagesToPreload: 6,
                keyboardNavEnabled: true,
                autoScaleSlider: true,
                autoScaleSliderWidth: 486,
                autoScaleSliderHeight: 315,

                /* size of all images http://help.dimsemenov.com/kb/royalslider-jquery-plugin-faq/adding-width-and-height-properties-to-images */
                imgWidth: 792,
                imgHeight: 479

            }).data('royalSlider');
            $('#slider-next').click(function () {
                rsi.next();
            });
            $('#slider-prev').click(function () {
                rsi.prev();
            });
        });
    </script>
    <!-- Affix menu -->
    <script>
        (function ($) {
            "use strict";
            $("#header-style-1").affix({
                offset: {
                    top: 100
                , bottom: function () {
                    return (this.bottom = $('#copyrights').outerHeight(true))
                }
                }
            })
        })(jQuery);
    </script>
    <!-- Demo Switcher JS -->
    <script type="text/javascript" src="switcher/js/fswit.js"></script>
    <script src="switcher/js/bootstrap-select.js"></script>
    </form>
</body>
</html>
