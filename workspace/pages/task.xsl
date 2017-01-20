<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/> 

                    
                    <div class="lesson-top-picture">
                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                    </div>
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class='row'>
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
                                        <div class="modal fade col-md-12 col-xs-9" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 30%; width: 150%; margin-left: -25%;">
                                              <div class="modal-header " style="border: 0px; margin: 10px;">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="font-weight: bold;">×</span></button>
                                                
                                              </div>
                                              <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                    
                                                <h2 class="section-heading">Congratulations!</h2>
                                                <br/>
                                                Completing this module<br/>
                                                has earned you your leadership badge!<br/><br/><br/>
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 15%;"/><br/><br/><br/>
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
                                    <div class="modal fade col-md-12 col-xs-9" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                      <div class="modal-dialog" role="document">
                                        <div class="modal-content" style="height: 1000px; border: 2px solid #3496DA; width: 100%; margin-top: 20%;">
                                          <div class="modal-header " style="border: 0px; margin: 10px;">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true" style="font-weight: bold;">×</span></button>
                                            
                                          </div>
                                          <div class="new-class" style=" height: 700px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                            
                                                <h2 class="section-heading">You've done it!</h2>
                                                <div class="box-border" style="width: 80%; max-height: 150px; border: 0px; padding: 0px;">
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
                                                        <xsl:apply-templates select="/data/comments/entry" mode="comment"/>
                                                        
                                                    </div>
                                                </div>

                                          </div>                                                      
                                        </div>
                                      </div>
                                    </div>

                                 </div>
                                <div class="each-features">
                                    <h3 class="title-centre">YOUR NOTES</h3>
                                    <div class="enter-text-field col-xs-12" style="width: 100%;">
                                        <form>
                                          <input type="text" id="your-note" name="fname"/>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div> <!-- /.each-features -->
                    
                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-top: 100px;">
                       <xsl:apply-templates select="/data/comments/entry[1]" mode="likeviews"/>
                    </div>

                   <div class="col-xs-12 each-features" style="margin-bottom: 20px;">  <!-- /.comments -->                      
                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                            <div class="row comments-inner">
                                
                                <xsl:apply-templates select="/data/comments/entry" mode="comment"/>
                               
                                <div class="each-item-inner comments-option overflow" style="padding-right: 30px; padding-left: 30px;" > 
                                    <a href="#" class="btn right-icon see-more pull-left">See more comments <i class="fa fa-angle-down"></i></a>
                                    <p class="comments-pagination pull-right">2 of 14</p>
                                </div>
                            </div>
                        </div> <!-- /.comments -->
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">
                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="#" class="btn btn-border"> EXPLORE</a>
                            <a href="#" class="btn btn-border"> . 1 . 2 . 3 . </a>
                            <a href="#" class="btn btn-border"> Next Lesson </a>
                        </div>
                    </div>

                    </div> <!-- /.each-features -->
                    
                </div>
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>

</xsl:stylesheet>
