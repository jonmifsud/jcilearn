<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
	    <div class="features-section">
	        <div class="container">
	            <div class="row features-item section-separator">

                    <xsl:call-template name="share-subheader"/> 

                </div>
            </div>

            <xsl:choose>
                <xsl:when test='/data/params/project-id != ""'>
                    <!-- form here -->
                    <xsl:apply-templates select='/data/my-projects/entry' mode='project-form'>
                    </xsl:apply-templates>
                    <xsl:if test='not(/data/my-projects/entry)'>
                        <xsl:call-template name='project-form'/>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>

                    <div class="container">
                        <!-- <div class="row"> -->
                            <div class="guide-team-content col-xs-12">
                                <div class="col-xs-12 each-features">
        	                        <h2 class="title-centre">YOUR DRAFTS</h2>
        	                        <p class="cta-text">Complete these projects and earn your active Citizenship badge!</p>
                                </div> <!-- /.each-features -->  

                                <div class="row">

                                     <div class="item"  style="margin-left: auto; margin-right: auto;text-align: center;">

                                        <!-- each one of the blow should come from "My Draft Projects" if 3 + should show slider -->
                                        <div class="modules-slider">
                                        <div class="modules-slider-wrapper three-slides owl-carousel">  
                                            <xsl:apply-templates select="/data/my-projects/entry[status/item/@handle='draft']" mode="projectmodule">
                                                <xsl:with-param name='edit-link' select='true()'/>
                                            </xsl:apply-templates>
                                        </div>
                                    </div>
                                    </div>

                                </div>

                                <div class="btn-form col-xs-12 text-center">
                                    <a href="{/data/params/root}/share/project/new/" class="btn btn-border-button">Start a new project</a>
                                </div>

                            </div>
                          

                            <div class="guide-team-content col-xs-12 margin-t-70">

                             	<h2 class="title-centre margin-b-30 margin-t-70">PUBLISHED PROJECTS</h2>
                                <div class="col-xs-12 each-features text-center">

        	                        <div class="modules-slider margin-t-30">
        	                            <div class="modules-slider-wrapper three-slides owl-carousel">

        	                                 <!-- each one of the blow should come from "My Published Projects" if 3 + should show slider -->
                                        
                                            <xsl:apply-templates select="/data/my-projects/entry[status/item/@handle='published']" mode="projectmodule"/>
                                       
                                            
        	                                
        	                            </div> <!-- /.modules-slider-wrapper -->
        	                        </div> <!-- /.modules-slider -->

        	                    </div> <!-- /.each-features  Zack END-->
                            </div>                                

                            <div class="btn-form col-xs-12 text-center">
                                <p class="cta-text margin-t-70">Find more projects.</p>
                                <a href="{/data/params/root}/explore/#projects" class="btn btn-border">Explore</a>
                            </div>
                        <!-- </div> -->
                    </div>
                </xsl:otherwise>
            </xsl:choose>

        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>