<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>
                                                
    <xsl:template match="/data"> 
            <!-- Start: Features Section 
            =================================--> 
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <div class="col-xs-12">
                          <h2 class="section-heading text-center">Good morning, <xsl:value-of select="/data/user/entry/name" />!</h2>
                        </div>

                        <xsl:apply-templates select='/data/user/entry' mode='user-profile'>
                          <xsl:with-param name='include-details' select='false()'/>
                        </xsl:apply-templates>
                   
                        <xsl:if test='/data/my-lessons/entry'>
                          <div class='row'>
                            <div class="col-xs-12">
                              <h3 class="section-heading text-center">LESSONS</h3>
                              <div class="guide-team-content">
                                  <div class="each-item col-sm-1 col-md-2"></div>           
                                    <div class="each-item col-sm-10 col-md-8" style="margin-left: auto; margin-right: auto; text-align: center; ">
                                        <xsl:apply-templates select="/data/my-lessons/entry" mode="list-item">
                                          <xsl:with-param name='edit-link' select='true()'/>
                                        </xsl:apply-templates>
                                  </div> 
                                  <div class="each-item col-sm-1 col-md-2"></div> 
                              </div>
                            </div>
                          </div>
                        </xsl:if>


                        <xsl:if test='/data/my-projects/entry'>
                          <div class='row'>
                            <div class="col-xs-12 each-features text-center" style="margin-top: 50px">
                                <h3 class="title-centre" style="padding-bottom: 20px;">PROJECTS</h3>
                                <div class="modules-slider">
                                    <div class="modules-slider-wrapper three-slides owl-carousel">

                                        <xsl:apply-templates select="/data/my-projects/entry" mode="exploreprojectsmodule">
                                          <xsl:with-param name='edit-link' select='true()'/>
                                        </xsl:apply-templates>

                                    </div> <!-- /.modules-slider-wrapper -->
                                </div> <!-- /.modules-slider -->

                            </div> <!-- /.each-features -->
                          </div>
                        </xsl:if>


                        <xsl:if test='/data/my-stories/entry'>
                          <div class='row'>
                            <div class="col-xs-12 each-features">

                                <div class="row guide-team">
                                    <div class="guide-team-inner">
                                        <div class="guide-team-content col-xs-12">
                                         <h3 class="title-centre" style="padding-bottom: 20px;">STORIES</h3>
                                            <div class="row" >
                                                <div class="each-item col-sm-1 col-md-2"></div>           
                                                <div class="each-item col-sm-10 col-md-8">
                                                  <xsl:for-each select="/data/my-stories/entry">    
                                                    <xsl:apply-templates select="current()" mode="sharestorymodulewithlikes">
                                                      <xsl:with-param name='edit-link' select='true()'/>
                                                    </xsl:apply-templates>
                                                  </xsl:for-each>   
                                                </div>
                                                <div class="each-item col-sm-1 col-md-2"></div>   
                                            </div>
                                        </div>
                                    </div>

                                </div> <!-- /.guide-team-outer -->
                            </div> <!-- /.guide-team -->
    
                          </div>
                        </xsl:if>
                </div> <!-- /.each-features -->

                
            </div> <!-- /.row -->
        </div> <!-- /.container -->
    <!-- End: Features Section 
        =================================-->

</xsl:template>
</xsl:stylesheet>