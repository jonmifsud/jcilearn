<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/currentmodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/> 

                        <div class="col-md-2"></div>
                        <div class="col-xs-12 col-md-8 each-features">

                            <div class="guide-team">
                                <div class="guide-team-inner text-center">

                                    <h2>
                                    <xsl:apply-templates select="/data/lesson/entry[1]/lesson-text-box/item" mode="comment"> <!-- applying comment template -->      
                                    </xsl:apply-templates></h2>
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center" study="margin-bottom: 30px !important;">
                                        <p class="sub-heading"> Your first step to becoming a true leader </p>
                                    </div> 
                                    <!-- End: Section Header -->

                                    <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="padding-left: 0px;">
                                        <div class="row">

                                            <xsl:for-each select="/data/lesson/entry" > 
                                            	<xsl:if test="position() &lt;=4">
                                                	<xsl:apply-templates select="current()" mode="list-item"/>
                                            	</xsl:if>
                                            </xsl:for-each>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.each-features -->
                        <div class="col-md-2"></div>

                    <div class="col-xs-12 each-features text-center">

                    	<p class="blue-text">Looking for more? </p>
                        
                        <div class="modules-slider">
                            <div class="modules-slider-wrapper three-slides owl-carousel" style="display: flex;">
                                <xsl:for-each select="/data/lesson/entry">
                                    <xsl:apply-templates select="current()" mode="currentmodule" /> 
                                </xsl:for-each>
                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                    </div> <!-- /.each-features -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>

</xsl:stylesheet>
