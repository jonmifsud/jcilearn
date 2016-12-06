<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/typography.xsl"/>

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
        <title>Task</title>
  
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




        <!-- Start: Features Section 
        =================================-->
        <div class="features-section">
            <div class="container">
  
  <div class="col-xs-12 each-features" style="padding-bottom: 0px;">
                        <div class="enter-text-field-title">
                            <p class="blue-text" style="display: inline-block;"><i class="fa fa-man-people-streamline-user"></i>75</p>
                            <p class="blue-text" style="display: inline-block;"><i class="fa fa-like-love-streamline"></i>10</p>
                        </div>
                    </div>
                <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features" style="margin-bottom: 70px;">

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="#" class="btn btn-border">Study</a>
                            <a href="#" class="btn btn-border">Explore</a>
                            <a href="#" class="btn btn-fill">Collab</a>
                        </div>

                    </div>

                    
                    <div class="lesson-top-picture">
                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                    </div>
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                        <div class="guide-team">
                            <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center" style="margin-bottom: 0px;">
                                    <br/>
                                    <h2 class="section-heading"><xsl:value-of select="/data/task/entry/title"/></h2>
                                    <br/><br/><br/>
                                </div>                               
                            </div>
                        </div>

                        <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                        	<div class="lesson-text">
                                 <xsl:apply-templates select="/data/task/entry/text" mode='html-child'/>
                             </div>
                        </div>

                        <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                             <div class="lesson-text">
                             <br/>

                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                                <h3 style="font-size: 30px; line-height: 110%;" class="title">Badge.html</h3>
                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="font-weight: bold;">×</span></button>
                                                        
                                                      </div>
                                                      <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                            
                                                                <h2 class="section-heading">Congratulations!</h2>
                                                                <br/>
                                                                Completing this module<br/>
                                                                has earned you your leadership badge!<br/><br/><br/>
                                                                <img src="assets/images/guide-team/icon-1.png" style="width: 15%;"/><br/><br/><br/>
                                                                <p class="blue-text">Feel like celebrating?</p>
                                                                <a href="#" class="btn btn-border">Share the news</a>
                                                                              
                                                      </div>                                                      
                                                    </div>
                                                  </div>
                                                </div>
                                                <br/>


                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2">
                                                <h3 style="font-size: 30px; line-height: 110%;" class="title">EndActivity.html</h3>
                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                  <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 20%; width: 150%; margin-left: -25%;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="font-weight: bold;">×</span></button>
                                                        
                                                      </div>
                                                      <div class="new-class" style=" height: 700px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                            
                                                                <h2 class="section-heading">You've done it!</h2>
                                                                <div class="box-border" style="width: 80%; max-height: 130px; border: 0px; padding: 0px;">
                                                                    <br/>
                                                                    You've made it to the end of this module on leadership. That means you've earned 50XP and gained lots of Leadership.<br/>Congratulations!<br/><br/><br/>
                                                                </div>
                                                                <div class="box-border" style="max-width: 500px; max-height: 180px; border: 0px; border-radius: 0px; padding: 0px">
                                                                    <span style="text-align: center;">
                                                                        <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span><span style="color: #3496DA; size: 12px; font-weight: bold; float: left;">/50XP</span>
                                                                        <span style="color: #3496DA; font-size: 8px;"> this week</span><br/><br/>
                                                                    </span>
                                                                    <p class="blue-text" style="text-align: left;"><b>LEADERSHIP</b></p>
                                                                    <div class="user-definitions-line-left">
                                                                    </div>   

                                                                    <div class="progress-wrapper-div">
                                                                        <div class="progress-div" style="color: #3496DA;">  </div>
                                                                    </div>

                                                                </div>
                                                                <p style="margin-top: -20px;">Now's your chance to tell us what you think</p>
                                                                <a href="#" class="btn btn-border">Share the news</a>
                                                                 <br/><br/>
                                                                <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                                                    <div class="row comments-inner">

                                                                        <div class="each-item">
                                                                            <div class="each-item-inner-lesson" style="padding: 0px;">
                                                                                
                                                                                <div class="media">
                                                                                    <div class="media-left" style="padding: 30px; ">

                                                                                        <img class="media-object profile-pic" src="assets/images/guide-team/profile-4.png" alt="Media Team Profile Image"/>
                                                                                        <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag" style="top: 60px;"/>
                                                                                    
                                                                                    </div> <!-- /.media-left -->
                                                                                    <div class="media-body">

                                                                                        <form>
                                                                                          <input type="text" id="your-note-title" name="fname" style="width: 100%; height: 110px; border: 0px solid white;"/>
                                                                                        </form>

                                                                                    </div> <!-- /.media-body -->
                                                                                </div> <!-- /.media -->
                                                                            </div>
                                                                        </div> <!-- /.each-item -->
                                                                    </div>
                                                                </div>

                                                      </div>                                                      
                                                    </div>
                                                  </div>
                                                </div>
                             </div>
                        </div>
                    </div> <!-- /.each-features -->


                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">YOUR NOTES</h3>
                        <div class="enter-text-field">
                            <form>
                              <input type="text" id="your-note" name="fname"/>
                            </form>
                        </div>
                    </div>
                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                    <div class="center-profile-meta" style="margin-bottom: 30px; margin-top: 40px;">
                        <p class="blue-text-in-line"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                        <p class="blue-text-in-line"><i class="fa fa-like-love-streamline"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p><br/>
                    </div>
                    </div>

                     <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-bottom: 0px;">
                            <div class="row comments-inner">

                                <div class="each-item">
                                    <div class="each-item-inner-lesson">
                                        
                                        <div class="media">
                                            <div class="media-left">

                                                <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" alt="Media Team Profile Image"/>
                                                	<img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                                            </div> <!-- /.media-left -->
                                            <div class="media-body">

                                                <h3 class="title"><xsl:value-of select="/data/task/entry/comment-box-learn/item/name-of-user"/></h3>
                                                <p class="pera"><xsl:value-of select="/data/task/entry/comment-box-learn/item/description"/></p>

                                            </div> <!-- /.media-body -->
                                        </div> <!-- /.media -->
                                    </div>
                                </div> <!-- /.each-item -->
                            </div>
                        </div> <!-- /.comments -->

                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal"> &lt; COLLAB</a>
                                        </div>  
                                    </div>   
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal"> . 1 . 2 . 3 .</a>
                                        </div>  
                                    </div> 
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal">SUBMIT &gt;</a>
                                        </div>  
                                    </div>                               
                                </div>
                            </div>
                        </div>

                         <!-- /.comments -->
                          <!-- /.single-comment -->

                    </div> <!-- /.each-features -->
                    
                </div>
        </div>
        <!-- End: Features Section 
        =================================-->


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
                                    <li><a href="study.html">Study</a></li>
                                    <li><a href="howtogetthere.html">Explore</a></li>
                                    <li><a href="collab.html">Collab</a></li>
                                </ul>

                            </div> <!-- /.each-section -->
                            <div class="each-section ">

                                <h4 class="title">SHARE</h4>
                                <ul class="nav link-group">
                                    <li><a href="lesson.html">Lesson</a></li>
                                    <li><a href="project.html">Project</a></li>
                                    <li><a href="study.html">Study</a></li>
                                </ul>

                            </div> <!-- /.each-section -->
                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="dashboard.html">Deshboard</a></li>
                                    <li><a href="user.html">My Profile</a></li>
                                </ul>
                                
                            </div> <!-- /.each-section -->

                        </div>
                    </div> <!-- /.other-link -->
                    <div class="other-link col-sm-3 col-xs-12">
                        <div class="row">

                            <div class="each-section ">

                                <h4 class="title"></h4>
                                <ul class="nav link-group">
                                    <li><a href="dashboard.html">Deshboard</a></li>
                                    <li><a href="user.html">My Profile</a></li>
                                </ul>
                                
                            </div> <!-- /.each-section -->

                        </div>
                    </div> <!-- /.other-link -->
                    <div class="other-link col-sm-3 col-xs-12">

                        <div class="each-section">
                            <h4 class="title"></h4>
                            <a href="http://www.jci.cc" class="link">JCI.cc</a>
                            <ul class="nav social-icon">
                                <li><a href="http://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="http://www.twitter.com" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            </ul>
                        </div>

                    </div> <!-- /.other-link -->

                </div><!-- /.row .footer-body /.section-separator  -->
            </div> <!-- /.container  -->
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
