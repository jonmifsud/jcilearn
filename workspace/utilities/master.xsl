<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="typography.xsl"/>
<xsl:import href="../sections/roles.xsl"/>
<xsl:import href="../sections/interests.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/modules.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/project.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/story.xsl"/>
<xsl:import href="../sections/question.xsl"/>
<xsl:import href="../sections/image.xsl"/>
<xsl:import href="../sections/discussion.xsl"/>


<!-- needs to be moved -->
<xsl:import href="../sections/learnfilesubheader.xsl"/>


<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
<html lang="en">
    <head>     
        
        <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->

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
        <link rel="apple-touch-icon" href="../assets/images/apple-touch-icon.png"/>
        <link rel="apple-touch-icon" sizes="72x72" href="assets/images/apple-touch-icon-72x72.png"/>
        <link rel="apple-touch-icon" sizes="114x114" href="assets/images/apple-touch-icon-114x114.png"/>

        <!-- GOOGLE FONTS and CUSTOM FONT -->


        <!--   COUSTOM CSS link  --> 

        <!-- <link rel="stylesheet" href="{/data/params/workspace}/assets/icons/jci/styles.css"/> -->
        <link rel="stylesheet" href="{/data/params/workspace}/assets/css/main.css"/> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <!-- <link rel="stylesheet" href="{/data/params/workspace}/assets/css/stylesheet.css"/> -->

    

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

                    <!-- LOGOS -->
                    <img class="navbar-brand light-logo" src="{/data/params/workspace}/assets/img/jci-edc-logo.png" alt=""/>
                    <a class="navbar-title light-logo" href="{/data/params/root}"><img src="{/data/params/workspace}/assets/img/jci-edc-grow-logo.png" alt=""/></a>

                </div>
                
                <!-- Main Menu List -->
                <div class="collapse navbar-collapse" id="js-navbar-menu">
                    <ul id="navbar-nav" class="nav navbar-nav navbar-right">
                        <li><a class="btn-big" href="#"><i class="fa fa-home-house-streamline"></i></a></li>
                        <li>
                            <xsl:if test='/data/params/root-page = "study" or /data/params/root-page = "explore" or /data/params/root-page = "collab"'>
                                <xsl:attribute name='class'>active</xsl:attribute>
                            </xsl:if>
                            <a class="btn-nav" href="{/data/params/root}/study/">Learn</a>
                        </li>
                        <li>
                            <xsl:if test='/data/params/root-page = "share"'>
                                <xsl:attribute name='class'>active</xsl:attribute>
                            </xsl:if>
                            <a class="btn-nav" href="{/data/params/root}/share/project/">Share</a>
                        </li>
                        <li>
                            <a class="btn-big" href="{/data/params/root}/user/" style='border-radius:50%;position:relative;overflow:hidden;'>
                                <img class="img-responsive" alt="">
                                    <xsl:attribute name='src'>
                                        <xsl:apply-templates select='/data/member/entry' mode='photo-url'/>
                                    </xsl:attribute>
                                </img>
                            </a>
                        </li>

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
                <!-- <div class="row section-separator"> -->
                    
                    <div class="other-link col-sm-6 col-xs-12">
                        <!-- <div class="row"> -->
                            
                            <div class="each-section ">

                                <h4 class="title">LEARN</h4>
                                <ul class="nav link-group">
                                    <li><a href="{/data/params/root}/explore/explore/">Explore</a></li>
                                    <li><a href="{/data/params/root}/collab">Collab</a></li>
                                    <li><a href="{/data/params/root}/user/usercontent/">My Content</a></li>
                                    <li><a href="{/data/params/root}/user">My Profile</a></li>
                                    <li><a href="{/data/params/root}/user/settings/">My Settings</a></li>
                                </ul>

                            </div> <!-- End: .each-section -->
                            <div class="each-section ">

                                <h4 class="title">SHARE</h4>
                                <ul class="nav link-group">
                                    <li><a href="{/data/params/root}/module/lesson/">Lesson</a></li>
                                    <li><a href="{/data/params/root}/task">Task</a></li>
                                    <li><a href="{/data/params/root}/module/">module</a></li>
                                    <li><a href="{/data/params/root}/study/">Study</a></li>
                                    <li><a href="{/data/params/root}/study/currentmodule/">study_currentmodule</a></li> 
                                    <li><a href="{/data/params/root}/challenge/">Challenge</a></li>
                                    <li><a href="{/data/params/root}/currentchallenge/">current challenge</a></li>                 
                                </ul>

                            </div> <!-- End: .each-section -->
                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="{/data/params/root}/dashboard/">Dashboard</a></li>
                                    <li><a href="{/data/params/root}/notepad/">Notepad</a></li>           
                                </ul>
                                
                            </div> <!-- End: .each-section -->

                        <!-- </div> -->
                    </div> <!-- End: .other-link -->
                    <div class="other-link col-sm-3 col-xs-12">
                        <div class="row">

                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="{/data/params/root}/discussions/">Discussions</a></li>
                                    <li><a href="{/data/params/root}/discussion">Discussion</a></li>
                                    <li><a href="{/data/params/root}/help">help</a></li>
                                    <li><a href="{/data/params/root}/newdiscussion">New Discussion</a></li>
                                    <li><a href="{/data/params/root}/login">log in</a></li>
                                    <li><a href="{/data/params/root}/errorpage">error page</a></li>
                                </ul>
                                
                            </div> <!-- End: .each-section -->

                        </div>
                    </div> <!-- End: .other-link -->
                    <div class="other-link col-sm-3 col-xs-12">

                        <div class="each-section">
                            <h4 class="title"></h4>
                            <a href="#" class="link">JCI.cc</a>
                            <ul class="nav social-icon">
                                <li><a href="#" style="padding: 12% 12%;"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#" style="padding: 12% 12%;"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>

                    </div> <!-- End: .about -->

               <!--  </div> --><!-- End: .row .footer-body .section-separator  -->
            </div> <!-- End: .container  -->
        </footer>
        <!-- End: Footer Section 
        =================================-->
        


        
        <!-- SCRIPTS 
        ========================================-->

<!--MISTAKE IS HERE ZACK--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <!-- <script src="assets/js/plugin-js/jquery-3.1.1.min.js"></script> -->
       <!-- <script src="assets/bootstrap/js/bootstrap.min.js"></script>
            <script src="assets/js/plugin-js/plugin.js">       </script> -->

        <!-- Custom Script 
        ==========================================-->


        <script src="{/data/params/workspace}/assets/js/main.js"></script>

        <script type="text/javascript">
        (function() {
        var s = document.createElement("script");
        s.type = "text/javascript";
        s.async = true;
        s.src = '//api.usersnap.com/load/'+
                'f0bdb2e4-7a1c-4ec5-bf01-9106d26aba76.js';
        var x = document.getElementsByTagName('script')[0];
        x.parentNode.insertBefore(s, x);
        })();
        </script>
    </body>

</html>
</xsl:template>

</xsl:stylesheet>
