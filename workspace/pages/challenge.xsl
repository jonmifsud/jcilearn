<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../utilities/typography.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/challengemodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/> 

                    <div class="lesson-top-picture">
                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 80px;" alt="Media Team Image"/><br/>
                    </div>
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center" >
                                
                                    <h2 class="section-heading" style="text-transform: uppercase;"><xsl:value-of select="/data/challenge/entry/title"/></h2>
                                        <p><xsl:value-of select="/data/challenge/entry/subtitle"/></p>
                                </div>     
                            </div>
                        </div>
                    </div> <!-- /.each-features -->
                    
                    <div class="col-md-2"></div>
                    <div class="col-md-8 each-features" style="padding-left: 30px; padding-right: 30px;">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                <div class="col-xs-12 each-features">

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
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2"></div>
                    
                
                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <div class="lesson-definitions-line">
                            <p class="blue-text">Here's what other members have said about this challenge.</p>
                        </div>
                    </div>

                    <div class="col-md-2"></div>
                    <div class="col-md-8 each-features">  <!-- /.comments -->                      
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
                    <div class="col-md-2"></div>
                    
                    <div class="col-md-12">
                    <div class="col-md-2"></div>
                    <div class="enter-text-field col-md-8" style="height: 80px; margin-bottom: 30px;">
                        <h3 class="text-center">COLLABORATION</h3>
                        <form>
                            <input type="text" id="your-notes" name="fname"/>
                        </form>                       
                    </div>
                    <div class="col-md-2"></div>

                    <div class="row single-comments-inner  ">
                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="#" class="btn btn-border text-normal">Take on the challenge</a>
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
