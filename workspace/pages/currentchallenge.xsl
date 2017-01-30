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

                        <xsl:call-template name="learnfilesubheader"/> 

                    <div class="lesson-top-picture">
                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/><br/>
                    </div>
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center" >
                                
                                    <h2 class="section-heading">Making a Significant Change</h2>
                                    <p> in your community</p>
                                </div>     
                            </div>
                        </div>
                    </div> <!-- /.each-features -->
                    

                    <div class="col-xs-12 each-features">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                <div class="col-xs-2"></div>
                                <div class="col-xs-8 each-features">

			                        <div class="guide-team">
			                            <div class="guide-team-inner">

											<div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
			                                    <div class="row">                     
			                                        <xsl:for-each select="/data/challenge/entry" > 
			                                        	<xsl:if test="position() &lt;=4">
			                                            	<xsl:apply-templates select="current()" mode="challengemodule"/>
			                                        	</xsl:if>
			                                        </xsl:for-each>
			                                    </div>
			                                </div>

			                            </div>
			                        </div>

                    			</div>
                                <div class="col-xs-2"></div>

                            </div>
                        </div>
                    </div>


                    <div class="col-xs-12 each-features text-center">
                        <div class="section-header relative text-center col-xs-12" >
                            <p class="sub-heading">Looking for more?</p>
                        </div> 

                        <div class="modules-slider">
                            <div class="modules-slider-wrapper two-slides owl-carousel">
                                <xsl:for-each  select="/data/challenge/entry">
                                    <xsl:apply-templates select="current()" mode="currentchallengemodule" />
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