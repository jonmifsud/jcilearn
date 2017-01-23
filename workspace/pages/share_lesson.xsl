<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/sharelesson.xsl"/>

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
                        <p class="blue-text">Publishing your stories will bring you closer to your Active Citizenship badge!</p><br/>
                        </div> <!-- /.each-features -->  

                        <div class="row" style="margin-top: 100px; ">
                            <div class="each-item col-sm-1 col-md-2"></div>           
                            <div class="each-item col-sm-10 col-md-8">
                                <xsl:apply-templates select="/data/lesson/entry[1]" mode="sharelesson"/>    
                            </div>
                            <div class="each-item col-sm-1 col-md-2"></div>
                        </div>

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <p class="blue-text"></p>
                                <a href="#" class="btn btn-border-button">Create new lesson</a>
                        </div>
                    </div>

                    <div class="guide-team-content col-xs-12">
                     <h3 class="title-centre" style="margin-top: 100px;">PENDING APPROVAL</h3><br/>
                        <div class="row" >

                            <div class="each-item col-sm-1 col-md-2"></div>           
                            <div class="each-item col-sm-10 col-md-8">
                                 <xsl:apply-templates select="/data/lesson/entry[4]" mode="sharelesson"/>   
                            </div>
                            <div class="each-item col-sm-1 col-md-2"></div>  

                            <div class="each-item col-sm-12">
                            <h3 class="title-centre" style="margin-top: 100px;">PUBLISHED LESSON</h3><br/>
                                 <div class="row">
                                    <div class="each-item col-sm-1 col-md-2"></div>
                                    <div class="each-item col-sm-10 col-md-8" style="padding: 0px;">
                                    <xsl:for-each select="/data/lesson/entry[4]">
                                        <xsl:apply-templates select="current()" mode="list-item"/>
                                    </xsl:for-each>
                                </div>
                                </div> 
                            </div> <!-- /.each-item -->
                        </div>
                    </div>

	                 <div class="btn-form col-xs-12 text-center margin-t-20">
	                 <p class="blue-text" style="margin-top: 100px;">Get inspected</p>
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