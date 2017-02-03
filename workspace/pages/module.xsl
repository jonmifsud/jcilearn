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

                        <xsl:call-template name="learnfileheader"/> 


                        <div class="col-xs-12 each-features">

                            <div class="modules-slider col-sm-offset-1 col-sm-10">
                                <div class=".modules-slider-wrapper three-slides">       
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center col-xs-12" >

                                        <h2>
                                            <xsl:value-of select="/data/module/entry/title"/>
                                        </h2>
                                        <p class="sub-heading">Maximising your team’s potential.</p>

                                    </div> 
                                    <!-- End: Section Header -->

                                    <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-md-offset-2 col-xs-12 " style="padding-left: 0px;">
                                        <div class="row">
                                            <xsl:for-each select="/data/lesson/entry"> 
                                                <xsl:if test="position() &lt;=4">      <!-- list of modules in for each look -->
                                                    <xsl:apply-templates select="current()" mode="list-item"/>
                                                </xsl:if>
                                            </xsl:for-each>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div> <!-- /.each-features -->

                        <div class="col-xs-12 each-features">  <!-- /.comments -->
                             <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                
                                <xsl:call-template name="show-comments"/> 
                                
                            </div> <!-- /.comments -->
                        </div> <!-- /.each-features -->

                        <div class="col-xs-12 each-features">
                            <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                                <div class="row single-comments-inner">
                                    <div class="media">
                                        <div class="media-left">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                                        </div> <!-- /.media-left -->
                                        <div class="media-body">
                                            <P class="pera" style="padding-left: 100px;">An incredibly informative module for all aspiring team and project leaders!.</P>
                                        </div> <!-- /.media-body -->
                                    </div> <!-- /.media -->
                                    <div class="btn-form col-xs-12 text-center margin-t-50">
                                        <a href="#" class="btn btn-border text-normal">Enroll</a>
                                    </div>
                                </div>
                            </div> <!-- /.single-comment -->
                        </div> <!-- /.each-features -->
                        
                    </div> <!-- /.row -->
                </div> <!-- /.container -->
            </div>
            <!-- End: Features Section 
            =================================-->
    </xsl:template>

</xsl:stylesheet>
