<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">
                        <div class="col-xs-12 each-features">
                            <div class="btn-form col-xs-12 text-center margin-t-20">
                                <a href="#" class="btn btn-border">Study</a>
                                <a href="#" class="btn btn-fill">Explore</a>
                                <a href="#" class="btn btn-border">Collab</a>
                            </div>
                        </div>

                        <div class="col-xs-12 each-features"> 
                            <div class="tab-item">
                                <div class="tab-inner">    
                                    <div role="tabpanel">

                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs" role="tablist">
                                            <li role="presentation" class="active"><a href="#modules" data-toggle="tab">Modules</a></li>
                                            <li role="presentation"><a href="#projects" data-toggle="tab">Projects</a></li>
                                            <li role="presentation"><a href="#stories" data-toggle="tab">Stories</a></li>
                                        </ul>

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
                        </div>

                        <div class="col-xs-12 each-features">

                            <div class="guide-team">
                                <div class="guide-team-inner">

                                    <xsl:apply-templates select="/data/comments/entry" mode="comment">    <!-- applying comment template -->                                                            
                                    </xsl:apply-templates>
                                    
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center" >

                                        <h2 class="section-heading">A Guide to Team Building</h2>
                                        <p class="sub-heading">Maximising your team’s potential.</p>

                                    </div> 
                                    <!-- End: Section Header -->

                                    <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                        <div class="row">
                                            <xsl:for-each select="/data/lesson/entry">       <!-- list of modules in for each look -->
                                                <xsl:apply-templates select="current()" mode="list-item"/>
                                            </xsl:for-each>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- /.each-features -->

                        <div class="col-xs-12 each-features">  <!-- /.comments -->                      
                             <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                <div class="row comments-inner">
                                    <xsl:apply-templates select="/data/comments/entry" mode="comment">    <!-- applying comment template -->                                                                   
                                    </xsl:apply-templates>
                                </div>
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
