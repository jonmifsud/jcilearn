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

                    <!-- form here -->
                    <xsl:apply-templates select='/data/my-lessons/entry' mode='lesson-form'>
                    </xsl:apply-templates>
                    <xsl:if test='not(/data/my-lessons/entry)'>
                        <xsl:call-template name='lesson-form'/>
                    </xsl:if>
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>