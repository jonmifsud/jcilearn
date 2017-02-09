<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learn-subheader"/> 

                    </div>
                </div>

                <xsl:apply-templates select='/data/enroled-modules/entry' mode='enroled-module'/>
                    

                <div class="container">
                    <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features">

                        <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                            <div class="row single-comments-inner">

                                <div class="media">
                                    
                                    <div class="media-body">

                                        <P class="cta-text">Looking for more lessons?</P>
                                        <!-- <div class="col-xs-12 text-center"> -->
                                        <a href="{/data/params/root}/explore/#modules" class="btn btn-border    text-normal">Explore</a>
                                        <!-- </div> -->

                                    </div> <!-- /.media-body -->
                                </div> <!-- /.media -->
                                
                                
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
