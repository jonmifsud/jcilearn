<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

    <xsl:template name='discussion-list'>
        
            <xsl:for-each select="/data/discussion/entry" > 
                <div class="padding-wrapper" >
                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                        <div class="row comments-inner" style="margin-bottom: 50px;">
                            <xsl:apply-templates select="current()" mode="list-item"/>
                        </div>
                    </div>
                </div>
            </xsl:for-each>

            <div class="padding-wrapper" style="padding-left: 12%; padding-right: 12%; height: 50px;">
                <div class="row comments-inner">
                    <div class="each-item">
                        <div class="each-item-inner comments-option overflow">
                            <div class="box-border" style="width: 80%; height: 90px; border: 0px;">
                                <a href="#" class="btn right-icon see-more pull-left">More<i class="fa fa-angle-down"></i></a>
                                <p class="comments-pagination pull-right" style="margin-top: 10px; font-size: 15px;">3 of 14</p>
                            </div>
                        </div>
                    </div> <!-- /.each-item -->
                </div>
            </div>
    </xsl:template>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features text-center">  
                        <div class="section-header relative text-center">

                            <h2 class="section-heading">Ask Your Community.</h2>

                           <!--  <form class="single-form search-form" action="" method="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for..."/>
                                    <span class="input-group-btn">
                                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form> -->
                        </div>  

                        <xsl:choose>
                            <xsl:when test='/data/params/discussion-id= "new"'>
                                 <xsl:call-template name='new-discussion'/>
                            </xsl:when>
                            <xsl:when test='/data/params/discussion-id and /data/params/discussion-id != ""'>
                                 <xsl:apply-templates select='/data/discussion/entry' mode='full'/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:call-template name='discussion-list'/>
                            </xsl:otherwise>
                        </xsl:choose>


                        <div class="btn-form col-xs-12 text-center margin-t-50">
                            <a href="{$root}/discussion/new/" class="btn btn-border text-normal">New Discussion</a>
                        </div>

                    </div>
                    
                </div> <!-- /.row -->

            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->		
</xsl:template>
</xsl:stylesheet>