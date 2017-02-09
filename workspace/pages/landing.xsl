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

                    <div class="study-timeline-progress">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-8 col-xs-offset-2 col-lg-6 col-lg-offset-3 text-center" >
                                    <div class="study-timeline-progress-circles" style="margin-left: 16.66%; ">
                                        1
                                    </div> 
                                    <div class="study-timeline-progress-circles" style="margin-left: 50%; ">
                                        2
                                    </div>
                                    <div class="study-timeline-progress-circles" style="margin-left: 83.335%; ">
                                        3
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" container col-xs-12 each-features">

                        <div class="sliderJquery">

                           <div id="div1">
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

                            <div id="div2">
                                <div class="box-border" style="width: 70%; padding: 20px; height: 10%; margin-bottom: 20px;  border: 0px">
                                <p class="blue-text">Pick a few of <b>your interests</b><br/>as an active citizen<br/>(don't worry - you can choose more later)</p>
                                                
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

                            <div id="div3" style="margin-bottom: 100px;" >
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


                        </div> <!-- sliderJquery -->
                    </div> 

                    <div class="col-md-8 col-md-offset-2" style="margin-bottom: 30px;">
                        <div class=" before btn-form col-xs-6 text-center margin-t-50 btn-down-positon">
                            <a href="#" class="btn btn-border text-normal">PREVIOUS</a>
                        </div>

                        <div id="counter1" class="next btn-form col-xs-6 text-center margin-t-50 btn-down-positon counter1">
                            <a href="#" class="btn btn-border text-normal">NEXT</a>
                        </div>
                    </div>
                </div>

                    <div class="col-xs-12 each-features">

                        <div class="wide-wripper">
                             <div id="landingTemplateSlider" class="box-border" style=" width: 70%; padding: 20px; height: 20%; margin-top: 140px; margin-bottom: 200px; border: 0px">
                                <div class="center">
                                    <div class="text-center margin-t-70">
                                        <div class="col-xs-12 col-md-12">
                                            <p class="cta-text">Be the best <strong>active citizen</strong> you can be.</p>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                           <a href="#" id="show-div-landing" class="btn btn-fill text-normal">Start learning</a>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <a href="#landing-separator-1" class="text-normal btn btn-border">Tell me more</a>
                                        </div>
                                    </div>
                                </div>
                            </div>     

                            <div class="landing-divider"></div>

                            <!-- <div id="landing-separator-1"></div>   -->                       
                            
                            <div class="box-border" style=" width: 90%; height: 15%; border: 0px; ">
                                <div class="col-xs-1 col-sm-1 col-md-1"></div>
                                <div class="box-border col-xs-12 col-sm-4 col-md-4-offset-1" style="width: 30%; border: 0px;">
                                    <img class="resize-picture" src="{/data/params/workspace}/assets/img/icons/JCI-trophy.png"/>
                                </div>

                                <div class="box-border col-xs-12 col-sm-7 col-md-6" style="width: 50%; border: 0px;">
                                    <p class="headline">Today's young leaders, training tomorrow's.</p>
                                    <div class="headline-underline"></div>
                                    <p>Explore <strong><span style="color:#b21e3b">GROW</span></strong>, the brand new knowledge platform by JCI's European Development Council; a database of curated lessons, challenges, past projects and shared experiences contributed by JCI members themselves.</p>
                                </div>
                                
                            </div>

                            <!-- <div class="landing-divider"></div> -->
                            <!-- <div class="line-separater" ></div> -->
                            
                            <div class="box-border padding-right-box" style=" width: 100%; border: 0px; margin-top: 70px;">
                                <div class='container text-left'>
                                    <div class='row'>
                                        <div class='col-xs-12 col-sm-8 col-sm-offset-2'>
                                            <p class="headline"><strong>Learn</strong> the skills, then <strong>share</strong> them.</p>
                                            <div class="headline-underline"></div>
                                            <p>Every active citizen has something valuable to say.</p>
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