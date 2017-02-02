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

                    <div class="guide-team-content col-xs-12">
                        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                                               
                        <h3 class="title-centre">YOUR DRAFTS</h3>
                        <p class="blue-text">Publishing your stories will bring you closer to your Active Citizenship badge!</p><br/>
                        </div> <!-- /.each-features -->  

                        <div class="row" style="margin-top: 100px; ">
                            <div class="each-item col-sm-1 col-md-2"></div>           
                                <div class="each-item col-sm-10 col-md-8">
                                <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='draft']" mode="list-item">
                                    <xsl:with-param name='edit-link' select='true()'/>
                                </xsl:apply-templates>
                            </div>
                            <div class="each-item col-sm-2 col-md-2"></div>
                        </div>

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="{/data/params/root}/share/lesson/edit-lesson/new/" class="btn btn-border-button">Create new lesson</a>
                        </div>
                    </div>

                    <xsl:if test="/data/my-lessons/entry[status/item/@handle='review']">
                        <div class="guide-team-content col-xs-12">
                            <h3 class="title-centre margin-b-20 margin-t-70">PENDING APPROVAL</h3>
                            <div class="row" >

                                <div class="each-item col-sm-1 col-md-2"></div>           
                                <div class="each-item col-sm-10 col-md-8">
                                    <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='review']" mode="list-item"/>      
                                </div>
                                <div class="each-item col-sm-1 col-md-2"></div>  
                            </div>
                        </div>
                    </xsl:if>

                    <xsl:if test="/data/my-lessons/entry[status/item/@handle='published']">
                        <div class="guide-team-content col-xs-12">
                            <h3 class="title-centre margin-b-20 margin-t-50" >PUBLISHED LESSON</h3>
                            <div class="row" >
                                <div class="each-item col-sm-1 col-md-2"></div>
                                <div class="each-item col-sm-10 col-md-8" style="padding: 0px;">
                                    <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='published']" mode="list-item"/>    
                                </div> <!-- /.each-item -->
                            </div>
                        </div>
                    </xsl:if>

	                 <div class="btn-form col-xs-12 text-center">
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