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

                    <div class="col-xs-12 each-features text-center">                        
                        <form class="form-inline single-form">
                            <label class="form-title">find by: </label>
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan">
                                        <option value="subject1"> disabled selected + Interest</option>
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
                                        <option value="subject1"> disabled selected + Level</option>
                                        <option value="BusinessConsulting">consulting</option>
                                        <option value="TextConsulting">Text</option>
                                        <option value="Advisory">Advisory</option>
                                        <option value="Audit-$-assurance">Audit</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features text-center">
                        <div class="modules-slider">
                            <div class="modules-slider-wrapper three-slides owl-carousel">
                                <xsl:for-each select="/data/project/entry">
                                    <div class="box-border" style="width: 95%; height: 400px; padding: 0px; overflow: hidden;">
                                        <xsl:apply-templates select="current()" mode="exploreprojectsmodule"/>
                                    </div>
                                </xsl:for-each>
                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features text-center">                        
                        <form class="single-form search-form" action="" method="">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for..."/>
                                <span class="input-group-btn">
                                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div><!-- /.input-group -->
                        </form>
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">
                        <div class="row guide-team">
                            <div class="guide-team-inner">                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center col-xs-12" >                                
                                    <p class="blue-text">Your friends recently published this project.</p>                                    
                                </div> 
                                <!-- End: Section Header -->
                                <div class="guide-team-content col-xs-12">
                                    <div class="row"> 
                                        <div class="item">        
                                            <div class="putting-limits-guide-team-content"> 
                                                <xsl:apply-templates select="/data/project/entry[1]" mode="project-module-item"/>                                        
                                            </div>
                                        </div>
                                    </div>
                                </div> <!-- /.guide-team-outer -->
                            </div> <!-- /.guide-team -->
                        </div> <!-- /.each-features -->
                         <div class="col-xs-12 each-features">
                             <div class="btn-form col-xs-12 text-center margin-t-20"><br/><br/>
                                <p class="blue-text">Invite yor collaborators and share a project together.</p>
                                    <a href="#" class="btn btn-border-button">Create a project</a>
                             </div>
                        </div>                    
                    </div> <!-- /.row -->
                </div> <!-- /.container -->
            </div>
        </div>
        <!-- End: Features Section 
        =================================-->
    </xsl:template>
</xsl:stylesheet>