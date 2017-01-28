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
        <div class="">
            <div class="row features-item section-separator" style="padding-bottom: 0px;">
                <div class="hide-div">
                    <button class="counter1"> counter</button>

                    <div class="col-xs-12 each-features">
                        <div class="study-timeline-progress" style="margin-top: 10px;">
                            <div id="LessonEditStep1" class="study-timeline-progress-circles" style="margin-left: 30%;">
                                1
                            </div> 
                            <div id="LessonEditStep2" class="study-timeline-progress-circles" style="margin-left: 55%;">
                                2
                            </div>
                            <div id="LessonEditStep3" class="study-timeline-progress-circles" style="margin-left: 80%;">
                                3
                            </div>
                        </div>
                    </div>

                    <div class=" container col-xs-12 each-features">
                        <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />

                        <div class="sliderJquery">

                            <div id="div1" style="margin-bottom: 100px;" >
                                <div class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-bottom: 50px; margin-top: 10px; border: 0px;">
                                    <div class="center">
                                            
                                            <p class="blue-text">One final step that will allow us to<br/>learn more about you<br/> and find your future collaborators.</p>
                                             
                                             <a href='{/data/events/oauth/facebook/@signup-url}' onclick="landingNextStep()" class="button facebook">
                                                <span>
                                                    <i class="fa fa-facebook" style="padding-top: 10px;"></i>
                                                </span>
                                                <p style="padding-top: 15px;">Sign in with Facebook</p>
                                            </a>
                                    </div>
                                </div>
                            </div>

                           <div id="div2">
                                <div class="box-border" style=" width: 70%; padding: 20px; height: 10%; margin-bottom: 50px;  border: 0px">                    
                                    <p class="blue-text">Tell us - what is <b>your role</b> within JCI?</p>

                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>LESSON</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>TRAINER</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>MEMBER</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-1"></div>

                                </div>
                            </div>

                            <div id="div3">
                                <div class="box-border" style="width: 70%; padding: 20px; height: 10%; margin-bottom: 50px;  border: 0px">
                                <p class="blue-text">Pick a few of <b>your interests</b><br/>as an active citizen<br/>(don't worry - you can choise more later)</p>
                                                
                                    <div class="col-md-1">.</div>
                                    <div class="col-md-10">
                                        <div class="col-md-4 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>COMMUNITY NEEDS</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>GLOBAL ISSUES</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>CULTURAL EXCHANGE</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                        
                                        <div class="col-md-2"></div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 100px;"/>
                                            <p class="blue-text"><b>TRAINING</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-xs-6 select-check-box" style="border: 0px; height: 10%;">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"  style="width: 100px;"/>
                                            <p class="blue-text"><b>LEADERSHIP</b></p>
                                            <div class="check-box" style="margin-left: 45%;">
                                                 
                                            </div>
                                        </div>
                                         <div class="col-md-2"></div>
                                    </div>
                                    <div class="col-md-1">.</div>
                               
                                </div>
                            </div>

                        </div> <!-- sliderJquery -->
                    </div> 
                </div>



                    <div class="col-xs-12 each-features">

                        <div class="wide-wripper">
                             <div id="landingTemplateSlider" class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-top: 50px; margin-bottom: 200px; border: 0px; ">
                                <div class="center">
                                	<div class="btn-form text-center margin-t-50">
                                        <div class="col-xs-12 col-md-12">
    	                                    <p class="blue-text" style="margin-bottom: 0px;">Be the best <b> active citizen</b> you can be.</p><br/><br/>
                                        </div>
                                        <div class="col-xs-12 col-md-12" style="margin-bottom: 10px;">
	                                       <a href="#" id="show-div-landing" class="btn btn-fill text-normal">Start learning</a>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
    	                                    <a href="#landing-separator-1" class="text-normal btn btn-border">Tell me more</a>
                                        </div>
	                                </div>
                                </div>
                            </div>     

                            <div class="study-timeline-progress"></div> 

                            <div id="landing-separator-1" class="line-separater" style="margin-bottom: 50px;"></div>                         
                            
                            <div class="box-border" style=" width: 90%; height: 20%; border: 0px; ">
                                <div class="col-xs-1 col-sm-1 col-md-1"></div>
                                <div class="box-border col-xs-12 col-sm-4 col-md-4" style="width: 30%; border: 0px;">
                                    <img class="resize-picture" src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="margin-top: 30%; width: 60%;"/>
                                </div>

                                <div class="box-border col-xs-12 col-sm-7 col-md-6" style="width: 50%; border: 0px; padding-right: 0px;">
                                    <p class="blue-text" style="text-align: left; font-size: 40px; line-height: 110%; margin-top: 7%"><b style="font-size: 30px; line-height: 0px;">Today's young leaders training tomorrow's.</b></p>
                                    <div class="study-timeline-progress" style="margin-top: 0px; height: 4px; width: 50%;"></div>
                                    <br/><br/>
                                    <p style="text-align: left;">Explore Enriche <span style="color: #3489DA;">JCI</span><span style="color: orange;">Train</span>'s database of curated lessons, challenges, past projects and shared experiences contributed by JCI members themselves themselves themselves.</p>
                                </div>
                                
                            </div>



                            <div class="study-timeline-progress" style="margin-top: 10px;"></div>

                            <div class="line-separater" ></div>
                            <div class="box-border padding-right-box" style=" width: 100%; border: 0px; margin-top: 70px;">
                                <div class="col-xs-1 col-sm-2 col-md-2"></div>
                                <div class="box-border padding-right-landing col-xs-12 col-sm-3 col-md-5" style="width: 50%; border: 0px;">
                                    <p class="blue-text" style="text-align: left; font-size: 35px; line-height: 35px; margin-top: 7%"><b>Learn</b> the skills, then <b>share</b> them</p>
                                    <div class="study-timeline-progress" style="margin-top: 0px; height: 5px; width: 50%;"></div>
                                    <br/><br/>
                                    <p style="text-align: left;">Every active citizen has something valuable to say.</p>
                                </div>
                                <div class="box-border col-xs-12 col-sm-7 col-md-5" style="width: 30%; border: 0px; padding: 0px; ">                                    
                                    <div class="btn-form col-xs-4 text-center margin-t-50 btn-down-positon">
                                        <a href="#" class="btn btn-border text-normal">Get started</a>
                                    </div>
                                </div>                                
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