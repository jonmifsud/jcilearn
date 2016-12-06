<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="typography.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
<html lang="en">
    <head>     
  
        <!-- TITLE OF SITE --> 
        <title>Lesson</title>
  
        <!-- Meta -->
        <meta charset="utf-8"/>
        <meta name="description" content="" />
        <meta name="keywords" content="jci, template, responsive, bootstrap" />
        <meta name="developer" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <meta name="robots" content="noindex"/>

        <!-- FAV AND TOUCH ICONS   -->
        <link rel="icon" href="assets/images/favicon.ico"/>
        <link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png"/>
        <link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72.png"/>
        <link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114.png"/>

        <!-- GOOGLE FONTS and CUSTOM FONT -->
        <link  rel="stylesheet" href="assets/fonts/stylesheet.scss"/>


        <!--   COUSTOM CSS link  -->
        <link rel="stylesheet" href="{/data/params/workspace}/assets/css/main.css"/>

    </head>
    <body class="home-page">


       <!-- Start: Navbar  Area
        ============================= -->
        <nav class="navbar navbar-fixed-top main-navbar-top" id="main-navbar-top" >
            <div class="container">
                <div class="navbar-header">

                    <!-- Menu Button show Mobile view -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#js-navbar-menu" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar icon-bar-top"></span>
                        <span class="icon-bar icon-bar-middle"></span>
                        <span class="icon-bar icon-bar-bottom"></span>
                    </button>

                    <!-- TEMPLATE LOGO LIGHT -->
                    <a class="navbar-brand light-logo" href="index.html"><img src="{/data/params/workspace}/assets/img/logo.png" alt="" class="img-responsive"/></a>
                    <!-- TEMPLATE LOGO DARK -->

                </div>
                
                <!-- Main Menu List -->
                <div class="collapse navbar-collapse" id="js-navbar-menu">
                    <ul id="navbar-nav" class="nav navbar-nav navbar-right">
                        <li><a class="btn-big" href="#"><i class="fa fa-home-house-streamline"></i></a></li>
                        <li class="active"><a class="btn-nav" href="#">Learn</a></li>
                        <li><a class="btn-nav" href="#">Share</a></li>
                        <li><a class="btn-big" href="#"><img class="img-responsive" src="{/data/params/workspace}/assets/img/icons/profile-4.png" alt=""/></a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- End: Navbar Area
        ============================= -->




       <xsl:apply-templates select='data'/>



        <!-- Start: Footer Section 
        =================================-->
        <footer class="footer-section-1">
            <div class="container">
                <div class="row section-separator">

                    
                    <div class="other-link col-sm-6 col-xs-12">
                        <div class="row">
                            
                            <div class="each-section ">

                                <h4 class="title">LEARN</h4>
                                <ul class="nav link-group">
                                    <li><a href="#">Study</a></li>
                                    <li><a href="#">Explore</a></li>
                                    <li><a href="#">Collab</a></li>
                                </ul>

                            </div> <!-- End: .each-section -->
                            <div class="each-section ">

                                <h4 class="title">SHARE</h4>
                                <ul class="nav link-group">
                                    <li><a href="#">Lesson</a></li>
                                    <li><a href="#">Project</a></li>
                                    <li><a href="#">Study</a></li>
                                </ul>

                            </div> <!-- End: .each-section -->
                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="#">Deshboard</a></li>
                                    <li><a href="#">My Profile</a></li>
                                </ul>
                                
                            </div> <!-- End: .each-section -->

                        </div>
                    </div> <!-- End: .other-link -->
                    <div class="other-link col-sm-3 col-xs-12">
                        <div class="row">

                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="#">Deshboard</a></li>
                                    <li><a href="#">My Profile</a></li>
                                </ul>
                                
                            </div> <!-- End: .each-section -->

                        </div>
                    </div> <!-- End: .other-link -->
                    <div class="other-link col-sm-3 col-xs-12">

                        <div class="each-section">
                            <h4 class="title"></h4>
                            <a href="#" class="link">JCI.cc</a>
                            <ul class="nav social-icon">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>

                    </div> <!-- End: .about -->

                </div><!-- End: .row .footer-body .section-separator  -->
            </div> <!-- End: .container  -->
        </footer>
        <!-- End: Footer Section 
        =================================-->
        


        
        <!-- SCRIPTS 
        ========================================-->
        <script src="assets/js/plugin-js/jquery-3.1.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/plugin-js/plugin.js"></script>

        <!-- Custom Script 
        ==========================================-->
        <script src="assets/js/custom-scripts.js"></script>

    </body>

</html>
</xsl:template>

</xsl:stylesheet>
