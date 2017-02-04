<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator" style="padding-bottom: 0px;">

                    <xsl:call-template name="learnfilesubheader"/>

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

                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" class="image-centre"/>
                            <div class="guide-team">
                                <div class="guide-team-inner">
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center">
                                    
                                        <h2 class="section-heading" style="text-transform: uppercase;"><xsl:value-of select="/data/project/entry/title" /></h2>
                                        <p class="center-text text-center"><xsl:value-of select="/data/project/entry/date"/></p>
                                    </div> 
                                    <div class="guide-team-inner">
                                        <div class="lesson-definitions">
                                            <div class="lesson-top-picture">
                                                <div class="media">                               
                                                    <div class="media-body-left">
                                                        <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                            <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>
                                                    </div>   
                                                    <div class="media-body-left">
                                                        <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                            <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>
                                                    </div>
                                                </div>      
                                            </div>
                                        </div>
                                    </div>                     
                                </div>

                                     <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">

                                        
                                        
                                        <div class="lesson-text">
                                            <br/>
                                            <h3 class="title-centre">OVERVIEW</h3>
                                            <p class="lesson-text">                                             
                                                <xsl:value-of select="/data/project/entry/overview" />
                                            </p><br/>
                                         </div>
                                   
                                        <div class="blue-text text-center" id="toggle-project"> ANALYSIS </div>

                                        <div id="panel">
                                        <div class="lesson-text">
                                         <br/>
                                            <h3 class="title-centre">PROBLEM</h3>
                                            <p class="lesson-text">                                             
                                                <xsl:value-of select="/data/project/entry/partners" />
                                            </p><br/>
                                        </div>
                                        

                                        <div class="lesson-text">
                                            <br/>
                                            <h3 class="title-centre">PROPOSED SOLUTION</h3>
                                            <p class="lesson-text">                                             
                                                <xsl:value-of select="/data/project/entry/strategy" />
                                            </p><br/>
                                        </div>
                                         

                                        <div class="lesson-text">
                                            <br/>
                                            <h3 class="title-centre">PARTNERS</h3>
                                            <p class="lesson-text">                                             
                                                <xsl:value-of select="/data/project/entry/outcome" />
                                            </p><br/>
                                        </div>
                                        </div>
                                        
                                        <br/><br/>
                                        <div class="drop-down-button-on-project blue-text" style="padding: 5px;">IMPLEMENTATION</div>

                                        <br/><br/>
                                        <div class="drop-down-button-on-project blue-text" style="padding: 5px;">CONCLUSION</div>



                                    </div> 
                                </div>
                            </div>
                        </div>

                    <div class="col-xs-12 each-features text-center">


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

                    <div class="col-xs-12 each-features text-center">
                    <br/>
                    </div>

                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                        <h3 class="title" style="text-align: center; margin-bottom: 20px;" > MARKETING MATERIAL </h3>
                        <div class="row comments-inner col-md-12 col-sm-12 col-xs-12" style="margin-left: auto;">
                             text<br/>
                             some<br/>
                             text<br/>
                             some<br/>
                             some<br/>
                             some<br/>
                        </div>
                    </div>
                    
                        <div class="row features-item section-separator">
                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-top: 30px; margin-bottom: 30px;">
                               <xsl:apply-templates select="/data/comments/entry[1]" mode="likeviews"/>
                            </div>

                            <xsl:call-template name="show-comments"/> 

                            <div class=" each-features" style="padding-bottom: 150px;">
                                <div class="col-xs-12 each-features" style="margin-bottom: 0px; margin-top: 40px;">
                                    <div class="single-comment col-xs-12">
                                        <div class="row single-comments-inner">
                                            <div class="down-buttons-lesson">
                                                <div class="col-md-1 col-sm-1" >
                                                    
                                                </div> 
                                                <div class="col-md-10 col-sm-10">
                                                    <div class="lesson-button-organise">
                                                        <div class="btn-form col-xs-12 col-md-4 col-sm-4 text-center margin-t-50" style="margin-top: 5px;">

                                                            <a href="#" class="btn btn-border text-normal" data-toggle="modal" data-target="#myModal3">
                                                                <h3 style="font-size: 30px; line-height: 60%; margin-top: 6%;" class="title hovere-color-change"><i class="fa fa-chevron-left" aria-hidden="true"></i> Collab </h3> 
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
                                                        <div class="btn-form col-xs-12 col-md-4 col-sm-4 text-center margin-t-50 " style="margin-top: 5px;">

                                                            <a href="#" data-target="#myModal4"  data-toggle="modal" class="btn btn-border text-normal">                                           
                                                                <h3 style="font-size: 30px; margin-top: 6%; line-height: 60%;" class="title hovere-color-change"> Submit <i class="fa fa-chevron-right" aria-hidden="true"></i> </h3>
                                                            </a><!-- Modal -->
                                                        </div> 

                                                    </div> 

                                                </div> 
                                            </div>

                                        </div>
                                    </div>

                                    </div> <!-- /.single-comment -->
                                </div>

                            </div> <!-- /.each-features -->
                            <div class="col-md-1 col-sm-1" ></div>

                            <xsl:call-template name="write-comment"/> 

                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        <!-- End: Features Section 
        =================================-->        
</xsl:template>
</xsl:stylesheet>