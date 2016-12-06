<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>

<xsl:template match="/data">



        <!-- Start: Features Section 
        =================================-->
        <div class="features-section">
            <div class="container">
                <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features">

                        <div class="btn-form col-xs-12 text-center margin-t-20">
                            <a href="#" class="btn btn-fill">Study</a>
                            <a href="#" class="btn btn-border">Explore</a>
                            <a href="#" class="btn btn-border">Collab</a>
                        </div>

                    </div>

                    <div class="col-xs-12 each-features">

                        <div class="guide-team">
                            <div class="guide-team-inner">

                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center">

                                    <h2 class="section-heading"><xsl:value-of select="/data/module/entry/title"/></h2>
                                    <p class="sub-heading"><xsl:value-of select="/data/module/entry/subtext"/></p>

                                </div> 
                                <!-- End: Section Header -->

                                <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                    <div class="row">

                                    	<xsl:for-each select="/data/module/entry/lessons/item">
                                    		<xsl:apply-templates select='/data/lesson/entry[@id = current()/@id]' mode="list-item">

                                    		</xsl:apply-templates>
                                    	</xsl:for-each>
                                    </div>
                                </div> 

                            </div> 
                        </div>

                    </div> <!-- /.each-features -->

                     <!-- /.each-features -->

                     <!-- /.each-features -->
                    <div class="section-header relative text-center col-xs-12" style="margin-bottom: 30px;">
                        <p class="sub-heading">Looking for me? </p>
                                    
                    </div>

                    <div class="col-xs-12 each-features text-center">


                        <div class="modules-slider">
                            <div class="modules-slider-wrapper owl-carousel">

                                <div class="item">
    
                                    <div class="modules">
                                        <div class="modules-inner">
                                            <img src="assets/images/guide-team/icon-9.png" alt="Modules Image" class="img-responsive"/>
                                            <h3 class="title">A Guide to Team Building</h3>
                                        </div>
                                        <p class="small-text">Alison recently enrolled form this module.</p>
                                    </div>

                                </div> <!-- /.item -->

                                <div class="item">
    
                                    <div class="modules">
                                        <div class="modules-inner">
                                            <img src="assets/images/guide-team/icon-8.png" alt="Modules Image" class="img-responsive"/>
                                            <h3 class="title">SO WHAT IF WE’RE A GLOBAL VILLAGE?</h3>
                                        </div>
                                        <p class="small-text">This class continues where your recent ‘Globcal Communities’ module left off.</p>
                                    </div>

                                </div> <!-- /.item -->

                                <div class="item">
    
                                    <div class="modules">
                                        <div class="modules-inner">
                                            <img src="assets/images/guide-team/icon-10.png" alt="Modules Image" class="img-responsive"/>
                                            <h3 class="title">MAKING ACTIVE CITIZENS</h3>
                                        </div>
                                        <p class="small-text">Many other JCI trainers are taking this module!</p>
                                    </div>

                                </div> <!-- /.item -->

                                <div class="item">
    
                                    <div class="modules">
                                        <div class="modules-inner">
                                            <img src="assets/images/guide-team/icon-9.png" alt="Modules Image" class="img-responsive"/>
                                            <h3 class="title">A Guide to Team Building</h3>
                                        </div>
                                        <p class="small-text">Alison recently enrolled form this module.</p>
                                    </div>

                                </div> <!-- /.item -->

                                <div class="item">
    
                                    <div class="modules">
                                        <div class="modules-inner">
                                            <img src="assets/images/guide-team/icon-8.png" alt="Modules Image" class="img-responsive"/>
                                            <h3 class="title">SO WHAT IF WE’RE A GLOBAL VILLAGE?</h3>
                                        </div>
                                        <p class="small-text">This class continues where your recent ‘Globcal Communities’ module left off.</p>
                                    </div>

                                </div> <!-- /.item -->

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
