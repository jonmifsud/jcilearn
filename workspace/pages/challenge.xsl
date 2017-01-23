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
                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/><br/>
                    </div>
                    

                    <div class="col-xs-12 each-features">
                        <div class="guide-team">
                            <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center" >
                                
                                    <h2 class="section-heading" style="text-transform: uppercase;"><xsl:value-of select="/data/challenge/entry/title"/></h2>
                                        <p><xsl:value-of select="/data/challenge/entry/date"/></p>
                                </div>     
                            </div>
                        </div>
                    </div> <!-- /.each-features -->
                    

                    <div class="col-xs-12 each-features">
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
                    
                
                    <div class="col-xs-12 each-features">
                        <div class="lesson-definitions-line">
                            <p class="blue-text">Here's what other members have said about this challenge.</p><br/>
                        </div>
                    </div>

                    <div class="col-xs-12 each-features">  <!-- /.comments -->                      
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

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">COLLABORATORS</h3>
                        <div class="enter-text-field">
                            <form>
                              <input type="text" id="your-notes" name="fname"/>
                            </form>

                            <div class="col-xs-12 each-features">

		                        <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
		                            <div class="row single-comments-inner">
		                                <div class="btn-form col-xs-12 text-center margin-t-50">
		                                    <a href="#" class="btn btn-border text-normal">Take on the challenge</a>
		                                </div>
		                                
		                            </div>
		                        </div> <!-- /.single-comment -->
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
