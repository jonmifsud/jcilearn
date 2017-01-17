<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>
<xsl:import href="../sections/usercontentmodule.xsl"/>
<xsl:import href="../sections/exploreprojectsmodule.xsl"/>

                                                
    <xsl:template match="/data"> 
            <!-- Start: Features Section 
            =================================--> 
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/>  

	                    <div class="col-xs-12 each-features">                             
	                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
	                             <div class="lesson-definitions">                                
	                                
	                                <div class="user-definitions-line">
	                                    <div class="user-definitions-line-left">
	                                        <div class="media-body" style="text-align: left;">
                                                  <h3 style="font-size: 30px; line-height: 110%;" class="title"> <xsl:value-of select="/data/users/entry/name" /> <br/> <xsl:value-of select="/data/users/entry/surname" /> </h3>
	                                            <span style="float: left; text-align: left;">1 lesson
	                                            5 projects
	                                            2 stories</span><br/><br/>
	                                            <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span><span style="color: #3496DA; size: 15px; font-weight: bold;">/ 50XP</span>
	                                                <span style="color: #3496DA"> this week</span>
	                                            <br/><br/>        
	                                                <div class="box-border" style="height: 75px; width: 90px;">
	                                                    <p><i class="fa fa-man-people-streamline-user"></i>+</p>   
	                                                </div>                                            
	                                        </div> <!-- /.media-body -->
	                                    </div>
	                                    <div class="user-definitions-line-right">
                                        <img style="width: 100%; position: relative; max-height: 250px;" class="user-image" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                            <img style="position: relative; top: -80px; min-width: 120px; height 80px; right: 0;" class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
	                                    </div>
	                                </div>                                
	                             </div>
	                        </div>
	                    </div> <!-- /.each-features -->


                    <div class="col-xs-12 each-features">
                    <h2 class="section-heading">LESSONS</h2><br/>
                        <div class="guide-team-content">
                                <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 70%;">
                                    <xsl:apply-templates select="/data/lesson/entry[1]" mode="list-item"/>
                                </div>  
                            </div>
                    </div>

                    <div class="col-xs-12 each-features text-center">
                    <h2 class="section-heading">PROJECTS</h2><br/>
                        <div class="modules-slider">
                            <div class="modules-slider-wrapper owl-carousel">

                                <xsl:for-each select="/data/project/entry">
                                    <div class="box-border" style="width: 95%; height: 400px; padding: 0px; overflow: hidden;">
                                        <xsl:apply-templates select="current()" mode="exploreprojectsmodule"/>
                                    </div>
                                </xsl:for-each>

                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">

                        <div class="row guide-team">
                            <div class="guide-team-inner">
                                <div class="guide-team-content col-xs-12">
                                    <h2 class="section-heading" style="margin-bottom: 0px;">STORIES</h2><br/>
                                    <div class="row" style="margin-top: 10px; margin-left: 100px;">
                                        <xsl:for-each select="/data/story/entry">
                                            <xsl:if test="position() &lt;=2">
                                                <xsl:apply-templates select="current()" mode="story-module-item"/>
                                            </xsl:if>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                        </div> <!-- /.guide-team-outer -->
                    </div> <!-- /.guide-team -->

                </div> <!-- /.each-features -->

                
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    <!-- End: Features Section 
        =================================-->

</xsl:template>
</xsl:stylesheet>