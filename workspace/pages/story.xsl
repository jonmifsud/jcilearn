<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

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

                        <div class="col-xs-12 each-features" style="margin-bottom: 30px;" >
                             <img src="{/data/params/workspace}/assets/img/icons/icon-7.png"/><br/><br/>
                            <div class="guide-team">
                                <div class="guide-team-inner">
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center">
                                    
                                        <h2 class="section-heading" style="text-transform: uppercase;"><xsl:value-of select="/data/story/entry/title"/></h2>
                                        <p class="text-center"><xsl:value-of select="/data/story/entry/date"/></p>
                                    </div> 
                                    <div class="guide-team-inner">
                                        <div class="lesson-top-picture" >
                                            <div class="media">          			                             
                                                <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px; position: apsolute;"/>
                                                    <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>                                              
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
			                            <div class="lesson-text" style="padding-top: 75px;">
			                             	<xsl:value-of select="/data/story/entry/text"/>	
			                            </div>
                                	</div>
                            	</div>
                        	</div>
                    	</div>  

                        <div class="col-xs-12 each-features text-center" style="margin-bottom: 50px;">
                            <div class="modules-slider">
                                <div class="modules-slider-wrapper three-slides owl-carousel">

                                     <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                    <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                    <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                    <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                    <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                </div> <!-- /.modules-slider-wrapper -->
                            </div> <!-- /.modules-slider -->
                        </div> <!-- /.each-features -->

                        <div class="col-xs-12 each-features" style="margin-bottom: 50px; ">
                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" >

                                <xsl:apply-templates select="/data/story/entry[1]" mode="likeviews"/>
                                
                            </div>
                        </div>






                        <xsl:call-template name="show-comments"/>               





						

                        <div class="each-features" style="padding-bottom: 150px;">
                        <div class="col-xs-12 each-features" style="margin-bottom: 0px; margin-top: 50px;">
                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="col-md-1 col-sm-1" ></div> 
                                    <div class="col-md-10 col-sm-10">
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-6 text-center margin-t-50" style="margin-top: 5px;">

                                            <a href="#" class="btn btn-border text-normal" data-toggle="modal" data-target="#myModal3">
                                                <h3 style="font-size: 30px; line-height: 60%; margin-top: 6%;" class="title"><i class="fa fa-chevron-left" aria-hidden="true"></i> EXPLORE </h3> 
                                            </a><!-- Modal -->
                                        </div>   
                                    </div>  

                                   <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-4 text-center margin-t-10">
                                            <div class="wraper-like-comment-share">
                                                <div class="btn hovere-change" >
                                                    <i class="fa fa-like-love-streamline hovere-color-change"></i>
                                                </div>
                                                <div id="comment-toggle" class="btn hovere-change" >
                                                    <i class="fa fa-commenting-o hovere-color-change" aria-hidden="true"></i>

                                                </div>
                                                <div  class="btn hovere-change">
                                                    <i class="fa fa-share-square-o hovere-color-change" aria-hidden="true"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-12 col-md-4 col-sm-12 text-center margin-t-50" style="margin-top: 5px;">

                                            <a href="#" data-target="#myModal4"  data-toggle="modal" class="btn btn-border text-normal">                                           
                                                <h3 style="font-size: 30px; margin-top: 6%; line-height: 60%;" class="title"> Next Story <i class="fa fa-chevron-right" aria-hidden="true"></i> </h3>
                                            </a><!-- Modal -->
                                        </div>  
                                    </div> 
                                    </div>
                                    <div class="col-md-1 col-sm-1" ></div>

                                </div>
                            </div>
                        </div> <!-- /.single-comment -->
                        </div>

                    </div> <!-- /.each-features -->

                    </div> <!-- /.row -->
                </div> <!-- /.container -->
            </div>
            <!-- End: Features Section 
            =================================-->
    </xsl:template>

</xsl:stylesheet>