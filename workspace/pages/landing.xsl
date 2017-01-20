<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/discussionlink.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
    <div class="features-section">
        <div class="container">
            <div class="row features-item section-separator">
            	<br/><br/><br/>

                    <div class="col-xs-12 each-features">
                        <div class="wide-wripper">

                             <div id="landingTemplateSlider" class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-top: 50px; margin-bottom: 200px; border: 0px; ">
                                <div class="center">
                                	<div class="btn-form text-center margin-t-50">
	                                    <p class="blue-text">Be the best <b> active citizen</b> you can be.</p><br/><br/>
	                                    <a href="#" class="btn btn-fill">Start learning</a>
	                                    <br/><br/>
	                                    <a href="#landing-separator-1" class="btn btn-border" style="margin-right: 2%;">Tell me more</a>
	                                </div>
                                </div>
                            </div>      

                            <div id="landing-separator-1" class="line-separater" ></div>                         
                            <!--
                            <div class="box-border" style=" width: 90%; height: 20%; border: 0px;">
                                <div class="box-border" style="width: 30%; border: 0px;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="margin-top: 30%; width: 100%;"/>
                                </div>

                                <div class="box-border" style="width: 50%; border: 0px;">
                                    <p class="blue-text" style="text-align: left; font-size: 40px; line-height: 110%; margin-top: 7%"><b>Today's young leaders training tomorrow's.</b></p>
                                    
                                    <br/>
                                    <p style="text-align: left;">Explore Enriche <span style="color: #3489DA;">JCI</span><span style="color: orange;">Train</span>'s database of curated lessons, challenges, past projects and shared experiences contributed by JCI members themselves themselves themselves.</p>
                                </div>
                            </div>
                            -->  <!-- this used to work nice but it was NOT responsive -->

                            <div class="media" style="margin-top: 100px; margin-bottom: 60px;">
                              <div class="col-md-2"></div>
                              <div class="media-left col-xs-12 col-md-3">
                                 <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="margin-top: 30%; width: 100%;"/>
                              </div>
                              <div class="media-body col-xs-12 col-md-5" >
                                 <p class="blue-text" style="text-align: left; font-size: 40px; line-height: 110%; margin-top: 7%"><b>Today's young leaders training tomorrow's.</b></p>

                                    
                                    <br/>
                                    <p style="text-align: left;">Explore Enriche <span style="color: #3489DA;">JCI</span><span style="color: orange;">Train</span>'s database of curated lessons, challenges, past projects and shared experiences contributed by JCI members themselves themselves themselves.</p>
                              </div>
                              <div class="col-md-2"></div>
                            </div>

                            <div class="line-separater" ></div>

                            <div class="media" style="margin-top: 150px; margin-bottom: 60px;">
                              <div class="col-md-2"></div>
                              <div class="media-body col-xs-12 col-md-5" >
                                     <p class="blue-text" style="text-align: left; font-size: 40px; line-height: 110%; margin-top: 7%"><b>Learn</b>the skills<br/>then <b>share</b> them. </p>
                                    <br/><br/>
                                    <p style="text-align: left;">Explore <span class="blue-text">JCI</span> Trains's extensive database of curated lessons, challenges, past. </p>
                              </div>
                              <div class="media-left col-xs-12 col-md-3">
                                    <div class="btn-form col-xs-4 text-center margin-t-50">
                                        <a href="#" class="btn btn-border text-normal">Get started</a>
                                    </div>
                              </div>                              
                              <div class="col-md-2"></div>
                            </div>
                        </div>
                    </div> 


<br/>.<br/>.<br/>.<br/>.<br/>
END OF PAGE THIS DOWN SHOULD NOT BE SEENABLE ...........



                <div id="landingSlideBox">
                <div class="col-xs-12 each-features">

                    <div class="study-timeline-progress" style="height: 5px;">
                        <div class="study-timeline-progress-circles"  id="circlechange" style="margin-left: 35%; background: #f37121">
                            1
                        </div> 
                        <div class="study-timeline-progress-circles" id="circlechange2" style="margin-left: 60%;">
                            2
                        </div>
                        <div class="study-timeline-progress-circles" style="margin-left: 85%;">
                            3
                        </div>
                    </div>


                    <div class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-bottom: 50px; margin-top: 100px; border: 0px;">
                        <div class="center">
                                <p class="blue-text">One final step that will allow us to<br/>learn more about you<br/> and find your future collaborators.</p>
                                 <a class="btn btn-block btn-social btn-twitter">
                        </a><a  onclick="landingNextStep()" class="button facebook"><span><i class="fa fa-facebook" style="padding-top: 10px;"></i></span><p style="padding-top: 15px;">Sign in with Facebook</p></a>
                        </div>
                    </div>

    <br/><br/>

                    <div class="box-border" style=" width: 70%; padding: 20px; height: 10%; margin-bottom: 50px;  border: 0px">                    
                        <p class="blue-text">Tell us - what is <b>your role</b> within JCI?</p>

                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                <p class="blue-text"><b>LESSON</b></p>
                                <div class="check-box-landing">
                                     
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                <p class="blue-text"><b>TRAINER</b></p>
                                <div class="check-box-landing">
                                     
                                </div>
                            </div>
                            <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                <p class="blue-text"><b>MEMBER</b></p>
                                <div class="check-box-landing">
                                     
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1"></div>

                    </div>

    <br/><br/>

                    <div class="box-border" style="width: 70%; padding: 20px; height: 10%; margin-bottom: 50px;  border: 0px">
                        <p class="blue-text">Pick a few of <b>your interests</b><br/>as an active citizen<br/>(don't worry - you can choise more later)</p>
                                        
                            <div class="col-md-1">.</div>
                            <div class="col-md-10">
                                <div class="col-md-4" style="border: 0px; height: 10%;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                    <p class="blue-text"><b>COMMUNITY NEEDS</b></p>
                                    <div class="check-box-landing">
                                        
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                    <p class="blue-text"><b>GLOBAL ISSUES</b></p>
                                    <div class="check-box-landing">
                                         
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                    <p class="blue-text"><b>CULTURAL EXCHANGE</b></p>
                                    <div class="check-box-landing">
                                         
                                    </div>
                                </div>
                                
                                <div class="col-md-2"></div>
                                <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 100px;"/>
                                    <p class="blue-text"><b>TRAINING</b></p>
                                    <div class="check-box-landing">
                                         
                                    </div>
                                </div>
                                <div class="col-md-4 col-xs-6" style="border: 0px; height: 10%;">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                    <p class="blue-text"><b>LEADERSHIP</b></p>
                                    <div class="check-box-landing">
                                         
                                    </div>
                                </div>
                                 <div class="col-md-2"></div>
                            </div>
                            <div class="col-md-1">.</div>
                       
                        </div>
                </div> 
                </div>       
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    </div>
    <!-- End: Features Section 
    =================================-->
</xsl:template>
</xsl:stylesheet>