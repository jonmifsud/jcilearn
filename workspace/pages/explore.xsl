<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

	<xsl:template name='explore-modules'>
        <!-- TODO AJAX Filtering -->
        <!-- <div class="col-xs-12 each-features text-center">
            
            <form class="form-inline single-form">
                <label class="form-title">find by: </label>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1">Interest</option>
                            <option value="BusinessConsulting">Business consulting</option>
                            <option value="TextConsulting">Text consulting</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit &amp; assurance</option>
                        </select>
                    </div>
                </div>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1"> Level</option>
                            <option value="BusinessConsulting">consulting</option>
                            <option value="TextConsulting">Text</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit</option>
                        </select>
                    </div>
                </div>
            </form>

        </div> -->

        <div class="col-xs-12 each-features text-center" style="margin-bottom: 20px;">


            <div class="modules-slider">
                <div class="modules-slider-wrapper three-slides owl-carousel">
                    <xsl:apply-templates select="/data/module/entry" mode="modules"/>
                </div> <!-- /.modules-slider-wrapper -->
            </div> <!-- /.modules-slider -->

        </div> <!-- /.each-features -->

        <!-- TODO Search Function -->
        <!-- <div class="col-xs-12 each-features text-center" style="margin-bottom: 80px;">
            
            <form class="single-form search-form" action="" method="">
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                    
                    <h3 style="font-size: 30px; line-height: 110%;" class="title">
                        <div class="input-group">
                            <input type="text" class="form-control" style="margin-top: -20px; padding: 0px;" placeholder="Search for..."/>
                            <span class="input-group-btn">
                                <button class="btn" type="button"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </h3>                                                
                </button>

                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                        <div class="modal-dialog" role="document">
                            <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%;">
                                <div class="modal-header " style="border: 0px; margin: 10px;">
                                     <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                            
                                </div>
                                <div class="new-class" style=" height: 800px; margin-right: auto; margin-left: auto; text-align: center; ">
                                    <div class="box-border" style="width: 300px; height: 60px; padding-top: 10px; ">
                                        <form class="single-form search-form" action="" method="">
                                            <div class="input-group" >
                                                <input type="text" class="form-control" placeholder="Search for..." style="border: 0px;"/>
                                                <span class="input-group-btn">
                                                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                    
                                    <p class="blue-text"><b>SEARCH RESULTS</b></p>
                                    <div class="box-border" style="width: 100%; height: 280px; padding: 0px; border: 0px;">
                                        <div class="box-border" style="width: 30%;  height: 250px; ">
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 60%; margin-top: 10px;"/>
                                            <p class="title"><xsl:value-of select="/data/lesson/entry/title"/></p>
                                        </div>
                                        <div class="box-border" style="width: 30%; height: 250px; "> 
                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 60%; margin-top: 10px;"/>
                                            <p class="title"><xsl:value-of select="/data/lesson/entry[2]/title"/></p>
                                        </div>
                                    </div>
                                    <div class="box-border" style="width: 100%; height: 350px; border:0px; padding: 0px;">
                                        <div class="box-border" style="width: 50%; height: 150px; padding: 0px;">
                                            <div class="box-border" style="width: 70%; border: 0px;">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 20%; height: 20%; float: left;"/>
                                                <p class="title"> some text </p> regular text
                                            </div>
                                            <div class="box-border" style="width: 20%; padding: 0px; padding-top: 00px; border: 0px;">
                                                <div class="profile-meta">
                                                    <p>
                                                    <i class="fa fa-man-people-streamline-user"></i>83
                                                    </p>
                                                    <p>
                                                    <i class="fa fa-like-love-streamline"></i>17
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="box-border" style="width: 50%; height: 150px; padding: 0px;">
                                            <div class="box-border" style="width: 70%; border: 0px;">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 20%; height: 20%; float: left;"/>
                                                <p class="title"> some text </p> regular text
                                            </div>
                                            <div class="box-border" style="width: 20%; padding: 0px; padding-top: 00px; border: 0px;">
                                                <div class="profile-meta">
                                                    <p>
                                                    <i class="fa fa-man-people-streamline-user"></i>83
                                                    </p>
                                                    <p>
                                                    <i class="fa fa-like-love-streamline"></i>17
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                                                  
                                </div>                                                      
                            </div>
                        </div> 
                    </div>
            </form>

        </div> -->

        <div class="col-xs-12 each-features">

            <div class="row guide-team">
                <div class="guide-team-inner">
                    
                    <!-- Start: Section Header -->
                    <div class="section-header relative text-center col-xs-12" >
                    
                        <p class="sub-heading">If you’re looking for something lighter ...</p>
                        
                    </div> 
                    <!-- End: Section Header -->

                    <div class="guide-team-content col-xs-12">
                        <div class="row">
                            
                            <xsl:apply-templates select="/data/lesson/entry[position() &lt;=4]" mode="lesson-module-item"/>

                        </div>
                    </div>

                </div> <!-- /.guide-team-outer -->
            </div> <!-- /.guide-team -->

        </div> <!-- /.each-features -->

    </xsl:template>

    <xsl:template name='explore-projects'>
		<!-- TODO SEARCH -->
        <!-- <div class="col-xs-12 each-features text-center">                        
            <form class="form-inline single-form">
                <label class="form-title">find by: </label>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1"> disabled selected + Interest</option>
                            <option value="BusinessConsulting">Business consulting</option>
                            <option value="TextConsulting">Text consulting</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit &amp; assurance</option>
                        </select>
                    </div>
                </div>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1"> disabled selected + Level</option>
                            <option value="BusinessConsulting">consulting</option>
                            <option value="TextConsulting">Text</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit</option>
                        </select>
                    </div>
                </div>
            </form>
        </div> -->

        <div class="col-xs-12 each-features text-center">
            <div class="modules-slider">
                <div class="modules-slider-wrapper three-slides owl-carousel">
                    <xsl:for-each select="/data/project/entry">
                        <div  style="width: 95%; padding: 0px; overflow: hidden;">
                            <xsl:apply-templates select="current()" mode="exploreprojectsmodule"/>
                        </div>
                    </xsl:for-each>
                </div> <!-- /.modules-slider-wrapper -->
            </div> <!-- /.modules-slider -->
        </div> <!-- /.each-features -->

        <!-- TODO SEARCH -->
       <!--  <div class="col-xs-12 each-features text-center">                        
            <form class="single-form search-form" action="" method="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..."/>
                    <span class="input-group-btn">
                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form>
        </div>  -->

        <div class="col-xs-12 each-features">
            <div class="row guide-team">
                <div class="guide-team-inner">                                
                    <!-- Start: Section Header -->
                    <div class="section-header relative text-center col-xs-12" >                                
                        <p class="blue-text">Your friends recently published this project.</p>                                    
                    </div> 
                    <!-- End: Section Header -->
                    <div class="guide-team-content col-xs-12">
                        <div class="row"> 
                            <div class="item">        
                                <div class="putting-limits-guide-team-content"> 
                                    <xsl:apply-templates select="/data/project/entry[1]" mode="project-module-item"/>                                        
                                </div>
                            </div>
                        </div>
                    </div> <!-- /.guide-team-outer -->
                </div> <!-- /.guide-team -->
            </div> <!-- /.each-features -->
             <div class="col-xs-12 each-features">
                 <div class="btn-form col-xs-12 text-center margin-t-20"><br/><br/>
                    <p class="blue-text">Invite yor collaborators and share a project together.</p>
                        <a href="#" class="btn btn-border-button">Create a project</a>
                 </div>
            </div>                    
        </div>

    </xsl:template>

    <xsl:template name='explore-stories'>
    	<!-- TODO Filtering -->
    	<!-- <div class="col-xs-12 each-features text-center">
            
            <form class="form-inline single-form">
                <label class="form-title">find by: </label>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1"> Interest</option>
                            <option value="BusinessConsulting">Business consulting</option>
                            <option value="TextConsulting">Text consulting</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit &amp; assurance</option>
                        </select>
                    </div>
                </div>
                <div class="form-group input-outer">
                    <div class="select-outer">
                        <select class="form-control contact-plan">
                            <option value="subject1"> Level</option>
                            <option value="BusinessConsulting">consulting</option>
                            <option value="TextConsulting">Text</option>
                            <option value="Advisory">Advisory</option>
                            <option value="Audit-$-assurance">Audit</option>
                        </select>
                    </div>
                </div>
            </form>

        </div>  -->

        <div class="col-xs-12 each-features text-center" style="margin-bottom: 10px;">
            <div class="section-header relative text-center col-xs-12" >
                <p class="sub-heading">Looking for more?</p>
            </div> 

            <div class="modules-slider">
                <div class="modules-slider-wrapper two-slides owl-carousel">
                    <xsl:apply-templates select="/data/story/entry" mode="explorestoriestwoslidermodule" />
                </div> <!-- /.modules-slider-wrapper -->
            </div> <!-- /.modules-slider -->

        </div> <!-- /.each-features -->

        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">

        	<!-- TODO Search -->
            <!-- <form class="single-form search-form" action="" method="">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..."/>
                    <span class="input-group-btn">
                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </form> -->


            <div class="col-xs-12 each-features">

                <div class="row guide-team">
                    <div class="guide-team-inner">
                        <div class="guide-team-content col-xs-12">
                         <p class="blue-text" style="margin-bottom: 30px; margin-top: 100px;">Here are the most recent stories.</p> 
                            <div class="row" >          
                                <div class="each-item col-sm-10 col-md-8 col-sm-offset-1 col-md-offset-2">
                                    <xsl:apply-templates select="/data/story/entry[position() &lt;=2]" mode="sharestorymodulewithlikes"/>
                                </div>   
                            </div>
                        </div>
                    </div>

                </div> <!-- /.guide-team-outer -->
            </div> <!-- /.guide-team -->
        </div> <!-- /.each-features -->

        <div class="col-xs-12 each-features">
             <div class="btn-form col-xs-12 text-center margin-t-20">
                <p class="blue-text">Do you have your own story to tell?</p>
                    <a href="{/data/params/root}/share/story/new/" class="btn btn-border-button">Write a story</a>
             </div>
        </div>
    </xsl:template>

    <xsl:template match="/data">
        <!-- Start: Features Section 
        =================================-->
        <div class="features-section">
            <div class="container">
                <div class="row features-item section-separator" style="padding-bottom: 10px;">

					<xsl:call-template name="learn-subheader"/>          

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
			                                <xsl:call-template name='explore-modules'/>
			                            </div> <!-- End: .tab-pane -->
			                            <div role="tabpanel" class="tab-pane" id="projects">
			                                <xsl:call-template name='explore-projects'/>
			                            </div> <!-- End: .tab-pane -->
			                            <div role="tabpanel" class="tab-pane" id="stories">
			                                <xsl:call-template name='explore-stories'/>
			                            </div> <!-- End: .tab-pane -->
			                        </div> <!-- End: .tab-content -->
			                    </div>
			                </div>
			            </div> <!-- End: .each-item -->
			        </div>
			    </div>
            </div> <!-- /.container -->
        </div>
 <!-- End: Features Section 
            =================================-->
    </xsl:template>

</xsl:stylesheet>