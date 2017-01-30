<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/>  

                    <div class="col-xs-12 each-features">

                        <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                            <div class="guide-team">
	                            <div class="guide-team-inner">
	                                
	                                <!-- Start: Section Header -->
	                                <div class="section-header relative text-center">
	                                    <h2 class="section-heading">YOUR NOTEPAD</h2>                                                              
	                                </div> 
	                                <!-- End: Section Header -->
	                            </div>
                       		</div>

	                        <div class="row comments-inner">

	                            <div class="each-item" style="text-align: left;">
	                                <div class="each-item-inner" >            
						                <div class="media">
						                    <p style="text-align: left;"><xsl:value-of select="/data/note/entry/text"/></p>
						                      from <xsl:value-of select="/data/note/entry/author"/>'s lesson 'some are born leader'.
						                    <p></p>
						                </div> <!-- /.media -->
						            </div>
	                                <div class="each-item-inner" >            
						                <div class="media">
						                    <p style="text-align: left;"><xsl:value-of select="/data/note/entry/text"/></p>
						                      from <xsl:value-of select="/data/note/entry/author"/>'s lesson 'some are born leader'.
						                    <p></p>
						                </div> <!-- /.media -->
						            </div>
						            <div class="each-item-inner" >            
						                <div class="media">
						                    <p style="text-align: left;"><xsl:value-of select="/data/note/entry/text"/></p>
						                      from <xsl:value-of select="/data/note/entry[2]/author"/>'s lesson 'some are born leader'.
						                    <p></p>
						                </div> <!-- /.media -->
						            </div>
			                    </div> <!-- /.each-item -->
	                                 <!-- /.each-item -->
                                <div class="each-item">
                                    <div class="each-item-inner comments-option overflow">
                                        
                                        <a href="file:///C:/xampp/htdocs/JCI/JCI%20HTML/modules.html#" class="btn right-icon see-more pull-left">See more comments <i class="fa fa-angle-down"></i></a>
                                        <p class="comments-pagination pull-right">2 of 14</p>
                                    </div>
                                </div> <!-- /.each-item -->                                
                            </div>
                        </div> <!-- /.comments -->

                    </div> <!-- /.each-features -->

                     <!-- /.each-features -->

                    <div class="col-xs-12 each-features">
                        
                        <div class="tab-item">
                            <div class="tab-inner">
                                
                                <div role="tabpanel">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#modules" data-toggle="tab">LESSONS</a></li>
                                        <li role="presentation"><a href="#projects" data-toggle="tab">TASKS</a></li>
                                        <li role="presentation"><a data-toggle="tab" href="#stories">PROJECTS</a></li>
                                    <li role="presentation"><a href="#projects" data-toggle="tab">STORIES</a></li></ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="modules">
                                            
                                        </div> <!-- End: .tab-pane -->
                                        <div role="tabpanel" class="tab-pane" id="projects">
                                            
                                        </div> <!-- End: .tab-pane -->
                                        <div role="tabpanel" class="tab-pane" id="stories">
                                            
                                        </div> <!-- End: .tab-pane -->
                                    </div> <!-- End: .tab-content -->

                                </div>

                            </div>
                        </div> <!-- End: .each-item -->
                        

                        <div class="guide-team-content col-xs-12">
                            <div class="row" style="margin-top: 100px; float: center;">
                                <div class="col-sm-2 col-md-2"></div>
                                <div class="col-xs-12 col-sm-8 col-md-8">
                                    <xsl:for-each select="/data/lesson/entry" > 
                                    	<xsl:if test="position() &lt;=2">
                                        	<xsl:apply-templates select="current()" mode="notepadmodule"/>
                                    	</xsl:if>
                                    </xsl:for-each>
                                </div>
                                <div class="col-sm-2 col-md-2"></div>
                            </div>
                        </div>

                    </div>
                    <div class="col-xs-12 each-features">

                        <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                            <div class="row single-comments-inner">

                                <div class="media">
                                     
                                     
                                </div> <!-- /.media -->

                                <div class="btn-form col-xs-12 text-center margin-t-50">
                                    <p class="blue-text">There's lots more still to discover</p>
                                    <a href="#" class="btn btn-border text-normal">Explore</a>
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
