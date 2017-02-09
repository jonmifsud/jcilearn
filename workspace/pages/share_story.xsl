<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>


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
                <xsl:when test='/data/params/story-id != ""'>
                    <!-- form here -->
                    <xsl:apply-templates select='/data/my-stories/entry' mode='story-form'>
                    </xsl:apply-templates>
                    <xsl:if test='not(/data/my-stories/entry)'>
                        <xsl:call-template name='story-form'/>
                    </xsl:if>
                </xsl:when>
                <xsl:otherwise>

                    <div class="container">
                        <div class="row features-item section-separator">

                            <div class="guide-team-content col-xs-12">
                                <div class="col-xs-12 each-features">
                                    <div class="col-xs-1 col-sm-1 col-md-1"/>
                                    <div class="col-xs-10 col-sm-10 col-md-10">
                                    <h2 class="title-centre">YOUR DRAFTS</h2>
                                    <p class="cta-text">Publishing your stories will bring you closer to your Active Citizenship badge!</p>
                                    </div> <!-- /.each-features -->  
                                </div>

                                <div class="col-xs-1 col-sm-1 col-md-1"/>
                                
                                <div class="guide-team-content col-xs-12">
                                    <div class="row" >
                                        <div class="each-item col-sm-1 col-md-2"></div>
                                        <div class="each-item col-sm-10 col-md-8 margin-b-0" >
                                        <xsl:apply-templates select="/data/my-stories/entry[status/item/@handle='draft']" mode="sharestorymodulewithlikes">
                                            <xsl:with-param name='edit-link' select='true()'/>
                                        </xsl:apply-templates>
                                        </div>
                                        <div class="each-item col-sm-1 col-md-2"></div>
                                    </div>
                                </div>  
                               

                                <div class="btn-form col-xs-12 text-center">
                                    <a href="{/data/params/root}/share/story/new/" class="btn btn-border-button margin-b-30">Write a new story</a>
                                </div>

                            </div>
                          

                            <div class="guide-team-content col-xs-12">
                             <h2 class="title-centre margin-b-20 margin-t-50" >PUBLISHED STORIES</h2>
                                <div class="row" >
                                    <div class="each-item col-sm-1 col-md-2"></div>
                                        <div class="each-item col-sm-10 col-md-8" >
                                        <xsl:for-each select="/data/my-stories/entry[status/item/@handle='published']">
                                            <xsl:if  test="position() &lt;=2">    
                                            <xsl:apply-templates select="current()" mode="sharestorymodulewithlikes"/>
                                            </xsl:if>
                                        </xsl:for-each>     
                                        </div>
                                    <div class="each-item col-sm-1 col-md-2"></div>
                                </div>
                            </div>

                             <div class="btn-form col-xs-12 text-center">
                                 <p class="cta-text">Read stories from other JCI members.</p>
                                 <a href="{/data/params/root}/explore/#stories" class="btn btn-border-button">Explore</a>
                            </div>
                        </div> <!-- /.row -->
                    </div> <!-- /.container -->
                </xsl:otherwise>
            </xsl:choose>

        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>