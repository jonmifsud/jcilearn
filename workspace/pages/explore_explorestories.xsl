<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/explorestoriesmodule.xsl"/>
<xsl:import href="../sections/sharestorymodule.xsl"/>
<xsl:import href="../sections/sharestorymodulewithlikes.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/modules.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfileheader"/>  

                    <div class="col-xs-12 each-features text-center">
                        
                        <form class="form-inline single-form">
                            <label class="form-title">find by: </label>
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan">
                                        <option value="subject1"> Interest</option>
                                        <option value="BusinessConsulting">Business consulting</option>
                                        <option value="TextConsulting">Text consulting</option>
                                        <option value="Advisory">Advisory</option>
                                        <option value="Audit-$-assurance">Audit &amp; assurance</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan">
                                        <option value="subject1"> Level</option>
                                        <option value="BusinessConsulting">consulting</option>
                                        <option value="TextConsulting">Text</option>
                                        <option value="Advisory">Advisory</option>
                                        <option value="Audit-$-assurance">Audit</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 0px;" >

                        <div class="modules-slider">
                            <div class="modules-slider-wrapper two-slides owl-carousel">
                                <xsl:for-each  select="/data/story/entry">
                                    <xsl:apply-templates select="current()" mode="currentchallengemodule" />
                                </xsl:for-each>

                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                </div> <!-- /.each-features --> 

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

                        <form class="single-form search-form" action="" method="">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for..."/>
                                <span class="input-group-btn">
                                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div><!-- /.input-group -->
                        </form>


                        <div class="col-xs-12 each-features">

                            <div class="row guide-team">
                                <div class="guide-team-inner">
                                    <div class="guide-team-content col-xs-12">
                                     <p class="blue-text" style="margin-bottom: 30px; margin-top: 100px;">Here are the most recent sorites.</p> 
                                        <div class="row" >
                                            <div class="each-item col-sm-1 col-md-2"></div>           
                                            <div class="each-item col-sm-10 col-md-8">
                                              <xsl:for-each select="/data/story/entry">
                                                <xsl:if  test="position() &lt;=2">    
                                                <xsl:apply-templates select="current()" mode="sharestorymodulewithlikes"/>
                                                </xsl:if>
                                              </xsl:for-each>   
                                            </div>
                                            <div class="each-item col-sm-1 col-md-2"></div>   
                                        </div>
                                    </div>
                                </div>

                            </div> <!-- /.guide-team-outer -->
                        </div> <!-- /.guide-team -->
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">
                         <div class="btn-form col-xs-12 text-center margin-t-20">
                            <p class="blue-text">Do you have your own story to tell?</p>
                                <a href="#" class="btn btn-border-button">Write a story</a>
                         </div>
                    </div>
                    
		        </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->


    </xsl:template>

</xsl:stylesheet>