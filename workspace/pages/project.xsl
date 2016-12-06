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
                <div class="row features-item section-separator" style="padding-bottom: 0px;">

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
<!-- -->            
                    
                        <div class="col-xs-12 each-features">

                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" class="image-centre"/>
                            <div class="guide-team">
                                <div class="guide-team-inner">
                                    
                                    <!-- Start: Section Header -->
                                    <div class="section-header relative text-center">
                                    
                                        <h2 class="section-heading"><xsl:value-of select="/data/project/entry/title" /></h2>
                                        <p><xsl:value-of select="/data/project/entry/date"/></p>
                                    </div> 
                                    <div class="guide-team-inner">
                                        <div class="lesson-definitions">
                                            <div class="lesson-top-picture">
                                                <div class="media">                               
                                                    <div class="media-body-left">
                                                    <img class="media-object profile-pic" src="assets/images/guide-team/profile-2.png" alt="Media Team Profile Image"/>
                                                        <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag"/>
                                                    </div>   
                                                    <div class="media-body-left">
                                                    <img class="media-object profile-pic" src="assets/images/guide-team/profile-2.png" alt="Media Team Profile Image"/>
                                                        <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag"/>
                                                    </div>
                                                    </div>      
                                                </div> <!-- /.media-body -->
                                            </div>
                                        </div>                     
                                    </div>

			                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
			                             <div class="lesson-text">
			                             <br/>
			                                    <h3 class="title-centre">OVERVIEW</h3>
			                                <p class="lesson-text">
			                                	
			                                	<xsl:value-of select="/data/project/entry/text" />

			                                </p><br/>
			                             </div>
			                             

			                             <form class="form-inline single-form">
		                                    <div class="form-group input-outer" style="width: 100%;">
		                                        <div class="select-outer" style="color: #3489DA;">
		                                            <select class="form-control contact-plan">
		                                                <option value="subject1" disabled="" selected="">Interest</option>
		                                                <option value="BusinessConsulting">Business consulting</option>
		                                                <option value="TextConsulting">Text consulting</option>
		                                                <option value="Advisory">Advisory</option>
		                                                <option value="Audit-$-assurance">Audit &amp; assurance</option>
		                                            </select>
		                                        </div>
		                                    </div>
			                            </form><br/><br/>

			                             <form class="form-inline single-form">
			                                    <div class="form-group input-outer" style="width: 100%;">
			                                        <div class="select-outer">
			                                            <select class="form-control contact-plan" style="color: #3489DA;">
			                                                <option value="subject1" disabled="" selected="">Interest</option>
			                                                <option value="BusinessConsulting">Business consulting</option>
			                                                <option value="TextConsulting">Text consulting</option>
			                                                <option value="Advisory">Advisory</option>
			                                                <option value="Audit-$-assurance">Audit &amp; assurance</option>
			                                            </select>
			                                        </div>
			                                    </div>
			                                </form>
			                                    <br/><br/>
			                                <form class="form-inline single-form">
			                                    <div class="form-group input-outer" style="width: 100%;">
			                                        <div class="select-outer">
			                                            <select class="form-control contact-plan" style="color: #3489DA;">
			                                                <option value="subject1" disabled="" selected="">Interest</option>
			                                                <option value="BusinessConsulting">Business consulting</option>
			                                                <option value="TextConsulting">Text consulting</option>
			                                                <option value="Advisory">Advisory</option>
			                                                <option value="Audit-$-assurance">Audit &amp; assurance</option>
			                                            </select>
			                                        </div>
			                                    </div>
			                                </form>

			                        </div> 

                                </div>
                            </div>
                        </div>

                    <div class="col-xs-12 each-features text-center">


                        <div class="modules-slider">
                            <div class="modules-slider-wrapper owl-carousel">

                                 <img src="assets/images/pix.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                <img src="assets/images/pix.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                <img src="assets/images/pix.png"  style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                 <img src="assets/images/pix.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                                  <img src="assets/images/pix.png" style="width: 95%; height: 300px; margin-top: 120px; margin-left:10px; margin-right: 10px;"/>

                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                    </div> <!-- /.each-features -->
                   <div class="col-xs-12 each-features text-center">
                   <br/>
                   </div>
                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                <div class="row comments-inner">

                                     SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT 
                                     SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT  SOME TEXT 
                                </div>
                            </div>

                            <div class="col-xs-12 each-features">
                            <br/><br/>
                            </div>

                    <div class="col-xs-12 each-features">

                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                <div class="center-profile-meta" style="margin-bottom: 30px;">
                                    <p class="blue-text-in-line"><i class="fa fa-man-people-streamline-user"></i>10</p>
                                    <p class="blue-text-in-line"><i class="fa fa-like-love-streamline"></i> 23 </p><br/>
                                </div>
                            </div>

                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                                <div class="row comments-inner">

                                    <div class="each-item">
                                        <div class="each-item-inner">
                                            
                                            <div class="media">
                                                <div class="media-left">

                                                    <img class="media-object profile-pic" src="assets/images/guide-team/profile-4.png" alt="Media Team Profile Image"/>
                                                    <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag"/>
                                                
                                                </div> <!-- /.media-left -->
                                                <div class="media-body">

                                                    <h3 class="title">James Azzopardi</h3>
                                                    <p class="pera">
                                                    	<xsl:value-of select="/data/commentslist/entry/fullcommentbox/item"/>
                                                    </p>

                                                </div> <!-- /.media-body -->
                                            </div> <!-- /.media -->

                                        </div>
                                    </div> <!-- /.each-item -->

                                    <div class="each-item">
                                        <div class="each-item-inner">
                                            
                                            <div class="media">
                                                <div class="media-left">

                                                    <img class="media-object profile-pic" src="assets/images/guide-team/profile-4.png" alt="Media Team Profile Image"/>
                                                    <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag"/>
                                                
                                                </div> <!-- /.media-left -->
                                                <div class="media-body">

                                                    <h3 class="title">James Azzopardi</h3>
                                                    <p class="pera">An incredibly informative module for all aspiring team and project leaders!.</p>

                                                </div> <!-- /.media-body -->
                                            </div> <!-- /.media -->

                                        </div>
                                    </div> <!-- /.each-item -->

                                    <div class="each-item">
                                        <div class="each-item-inner comments-option overflow">
                                            
                                            <a href="#" class="btn right-icon see-more pull-left">See more comments <i class="fa fa-angle-down"></i></a>
                                            <p class="comments-pagination pull-right">2 of 14</p>
                                        </div>
                                    </div> <!-- /.each-item -->
                                    
                                </div>
                            </div> <!-- /.comments -->

                        </div> <!-- /.each-features -->

                <div class="col-xs-12 each-features" style="padding-bottom: 150px;">

                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal">STUDY</a>
                                        </div>  
                                    </div>   
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal">Something here</a>
                                        </div>  
                                    </div> 
                                    <div class="lesson-button-organise">
                                        <div class="btn-form col-xs-4 text-center margin-t-50">
                                            <a href="#" class="btn btn-border text-normal">Mini Quiz</a>
                                        </div>  
                                    </div>                               
                                </div>
                            </div>
                        </div> <!-- /.single-comment -->

                    </div> <!-- /.each-features -->

                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        <!-- End: Features Section 
        =================================-->
        
</xsl:template>

</xsl:stylesheet>
