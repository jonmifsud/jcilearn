<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

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
                                        <p class="center-text"><xsl:value-of select="/data/project/entry/date"/></p>
                                    </div> 
                                    <div class="guide-team-inner">
                                        <div class="lesson-definitions">
                                            <div class="lesson-top-picture">
                                                <div class="media">                               
                                                    <div class="media-body-left">
                                                        <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                            <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>
                                                    </div>   
                                                    <div class="media-body-left">
                                                        <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                            <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>
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
                        <div class="row comments-inner col-md-12 col-sm-12 col-xs-12">
                             text<br/>
                             some<br/>
                             text<br/>
                             some<br/>
                             some<br/>
                             some<br/>
                        </div>
                    </div>
                <div class="row features-item section-separator">
                    <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" style="margin-top: 0px;">
                       <xsl:apply-templates select="/data/comments/entry[1]" mode="likeviews"/>
                    </div>

                   <div class="col-xs-12 each-features" style="margin-bottom: 20px;">  <!-- /.comments -->                      
                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                            <div class="row comments-inner">
                                
                                <xsl:apply-templates select="/data/comments/entry" mode="comment"/>
                               
                                <div class="each-item-inner comments-option overflow" style="padding-right: 30px; padding-left: 30px;" > 
                                    <a href="#" class="btn right-icon see-more pull-left">See more comments <i class="fa fa-angle-down"></i></a>
                                    <p class="comments-pagination pull-right">2 of 14</p>
                                </div>
                            </div>
                        </div> <!-- /.comments -->
                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features" style="padding-bottom: 150px;">

                        <div class="single-comment col-xs-12">
                            <div class="row single-comments-inner">
                                <div class="down-buttons-lesson">
                                    <div class="col-md-1"></div>
                                    <div class="col-md-10">
                                        <div class="lesson-button-organise col-sm-4 col-xs-12 col-md-4">
                                            <div class="btn-form col-xs-4 text-center margin-t-50">

                                                <a href="#" class="btn btn-border text-normal" data-toggle="modal" data-target="#myModal3">
                                                    <h3 style="font-size: 30px; line-height: 110%;" class="title"> Study </h3> 
                                                </a><!-- Modal -->

                                                <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                                  <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 20%; width: 150%; margin-left: -25%; height: 400px;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" >
                                                            <span aria-hidden="true" style="font-weight: bold;">
                                                            </span>
                                                        </button>                                                    
                                                      </div>

                                                      <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">
                                                            <h2 class="section-heading">Nice!</h2>
                                                            <br/>
                                                            All your answers were perfect. You're up by 10XP<br/>and one step closer to finish this module!<br/><br/><br/>
                                                            <a href="../lesson" class="btn btn-border">Next Lesson</a>                                                                      
                                                      </div>                                                      
                                                    </div>
                                                  </div>
                                                </div>

                                            </div>   
                                        </div>  

                                        <div class="lesson-button-organise col-sm-4 col-xs-12 col-md-4">
                                            <div class="btn-form col-xs-4 text-center margin-t-50">
                                                <a href="#" class="btn btn-border text-normal">Something here</a>
                                            </div>  
                                        </div> 

                                        <div class="lesson-button-organise col-sm-4 col-xs-12 col-md-4">
                                            <div class="btn-form col-xs-4 text-center margin-t-50">

                                                <a href="#" data-target="#myModal4"  data-toggle="modal" class="btn btn-border text-normal">                                           
                                                    <h3 style="font-size: 30px; line-height: 110%;" class="title"> Mini Quiz </h3>
                                                </a><!-- Modal -->

                                                    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                                      <div class="modal-dialog" role="document">

                                                        <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 20%; width: 150%; margin-left: -25%; height: 1300px;">
                                                          <div class="modal-header " style="border: 0px; margin: 10px;">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                                            
                                                          </div>
                                                          <div class="new-class" style=" height: 500px; margin-right: auto; margin-left: auto; text-align: center; ">  
                                                                <h2 class="section-heading">MINIQUIZ</h2>                    
                                                                
                                                               
                                                                <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                        <br/>
                                                                        Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                        eflebla bla<br/><br/>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                        <br/>
                                                                        Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                        eflebla bla<br/><br/>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                </div>
                                                                <div class="box-border" style="width: 100%; height: 350px;  padding: 0px; border: 0px;">                                               
                                                                        <br/>
                                                                        Pellentesque elgestas, neque sit amet convallis pulvinar, uust nulla<br/>
                                                                        eflebla bla<br/><br/>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                    <div class="box-border" style="width: 50%; height: 50px; padding: 0px; border: 0px;">
                                                                        <div class="check-box">
                                                                        </div>  
                                                                        <p style="text-align: left; margin: 10px; color: #3496DA;"> Answer 1</p>
                                                                    </div>
                                                                </div>   

                                                                <div class="btn-form col-xs-12 text-center margin-t-50" style="margin-top: 0px;">
                                                                    <a href="#" class="btn btn-border text-normal">Enroll</a>
                                                                </div>                       
                                                                                  
                                                          </div>                                                      
                                                        </div>
                                                        </div>
                                                    </div>
                                                </div>  
                                            </div> 
                                        </div>                                            
                                    <div class="col-md-1"></div>
                                </div>
                            </div>
                        </div> <!-- /.single-comment -->

                    </div> <!-- /.each-features -->
                </div>
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        <!-- End: Features Section 
        =================================-->        
</xsl:template>
</xsl:stylesheet>