<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
    <div class="features-section">
        <div class="">
            <div class="row features-item section-separator" style="padding-bottom: 0px;">
                <div class="hide-div">

                    <div class="col-md-2"></div>
                    <div class="col-md-8" style="margin-bottom: 30px;">
                        <div class=" before btn-form col-xs-6 text-center margin-t-50 btn-down-positon">
                            <a href="#" class="btn btn-border text-normal">BEFORE</a>
                        </div>

                        <div id="counter" class="next btn-form col-xs-6 text-center margin-t-50 btn-down-positon">
                            <a href="#" class="btn btn-border text-normal">NEXT</a>
                        </div>
                    </div>
                    <div class="col-md-2"></div>

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
                                    <p class="blue-text">Tell us - what is<strong>your role</strong> within JCI?</p>

                                    <div class="col-md-10 col-md-offset-1">
                                        <xsl:apply-templates select='/data/roles/entry' mode='option'>
                                            <xsl:with-param name='class'>
                                                <xsl:text>col-md-4 col-xs-6</xsl:text>
                                            </xsl:with-param>
                                        </xsl:apply-templates>
                                    </div>

                                </div>
                            </div>

                            <div id="div3">
                                <div class="box-border" style="width: 70%; padding: 20px; height: 10%; margin-bottom: 50px;  border: 0px">
                                <p class="blue-text">Pick a few of<strong>your interests</strong><br/>as an active citizen<br/>(don't worry - you can choise more later)</p>
                                                
                                    <div class="col-md-10 col-md-offset-1">

                                        <xsl:apply-templates select='/data/interests/entry[position() &lt; 6]' mode='option'>
                                            <xsl:with-param name='class'>
                                                <xsl:text>col-md-4 col-xs-6</xsl:text>
                                                <xsl:if test='position() = 4'> col-md-offset-2</xsl:if>
                                            </xsl:with-param>
                                        </xsl:apply-templates>

                                    </div>
                               
                                </div>
                            </div>

                        </div> <!-- sliderJquery -->
                    </div> 
                </div>



                    <div class="col-xs-12 each-features">

                        <div class="wide-wripper">
                             <div id="landingTemplateSlider" class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-top: 50px; margin-bottom: 200px; border: 0px">
                                <div class="center">
                                    <div class="btn-form text-center margin-t-70">
                                        <div class="col-xs-12 col-md-12">
                                            <p class="cta-text">Be the best <strong>active citizen</strong> you can be.</p>
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
                                    <img class="resize-picture" src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                                </div>

                                <div class="box-border col-xs-12 col-sm-7 col-md-6" style="width: 50%; border: 0px; padding-right: 0px;">
                                    <p class="headline">Today's young leaders, training tomorrow's.</p>
                                    <div class="headline-underline"></div>
                                    <p>Explore <span style="color: #3489DA;">JCI</span><span style="color: #f37121;">Train</span>'s database of curated lessons, challenges, past projects and shared experiences contributed by JCI members themselves.</p>
                                </div>
                                
                            </div>

                            <div class="study-timeline-progress" style="margin-top: 10px;"></div>
                            <div class="line-separater" ></div>
                            
                            <div class="box-border padding-right-box" style=" width: 100%; border: 0px; margin-top: 70px;">
                                <div class='container text-left'>
                                    <div class='row'>
                                        <div class='col-xs-12 col-sm-8 col-sm-offset-2'>
                                            <p class="headline"><strong>Learn</strong> the skills, then <strong>share</strong> them.</p>
                                            <div class="headline-underline"></div>
                                        </div>
                                    </div>
                                    <div class="padding-right-landing col-xs-12 col-sm-3 col-md-5 col-sm-offset-2 margin-t-20">
                                        <p>Every active citizen has something valuable to say.</p>
                                    </div>
                                    <div class="col-xs-12 col-sm-7 col-md-5">                                    
                                        <div class="btn-form col-xs-4 text-center btn-down-positon">
                                            <a href="#" class="btn btn-border text-normal">Get started</a>
                                        </div>
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