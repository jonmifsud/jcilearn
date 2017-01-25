<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/projectmodule.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
	    <div class="features-section">
	        <div class="container">
	            <div class="row features-item section-separator">

                    <xsl:call-template name="learnfilesubheader"/> 

                    <div class="guide-team-content col-xs-12">
                        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
	                        <h3 class="title-centre">YOUR DRAFTS</h3>
	                        <p class="blue-text">Completethese projects and earn your active Citizenship badge!</p><br/>
                        </div> <!-- /.each-features -->  

                        <div class="row">

                             <div class="item"  style="margin-left: auto; margin-right: auto;text-align: center;">

                                <div class="putting-limits-guide-team-content" style="display: inline-block;">    
                                   	<xsl:for-each select="/data/project/entry[1]"><!-- list of modules in for each look -->
                                        <xsl:apply-templates select="current()" mode="projectmodule"/>
                                    </xsl:for-each>
                                </div>

                                <div class="putting-limits-guide-team-content" style="display: inline-block;">    
                                   	<xsl:for-each select="/data/project/entry[2]"><!-- list of modules in for each look -->
                                        <xsl:apply-templates select="current()" mode="projectmodule"/>
                                    </xsl:for-each>
                                </div>

                            </div>

                        </div>

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <p class="blue-text"></p>
                            <a href="#" class="btn btn-border-button">Start a new project</a>
                        </div>

                    </div>
                  

                    <div class="guide-team-content col-xs-12">
                     	<h3 class="title-centre" style="margin-top: 100px;">PUBLISHED PROJECTS</h3>
                        <div class="col-xs-12 each-features text-center">

	                        <div class="modules-slider">
	                            <div class="modules-slider-wrapper three-slides owl-carousel">

	                               <xsl:for-each select="/data/project/entry"><!-- list of modules in for each look -->
                                        <xsl:apply-templates select="current()" mode="projectmodule"/>
                                    </xsl:for-each>
	                                
	                            </div> <!-- /.modules-slider-wrapper -->
	                        </div> <!-- /.modules-slider -->

	                    </div> <!-- /.each-features  Zack END-->
                    </div>                                

                    <div class="btn-form col-xs-12 text-center margin-t-20">
                    <p class="blue-text" style="margin-top: 100px;"> Find more projects</p>
                        <p class="blue-text"></p>
                        <a href="#" class="btn btn-border-button">Explore</a>
                    </div>

                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>