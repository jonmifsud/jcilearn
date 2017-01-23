<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/modules.xsl"/>

<xsl:import href="../sections/currentchallengemodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/>  
                    

                    <div class="col-xs-12 each-features" style="margin-bottom: 20px;">

                            <div class="section-header relative text-center" style="margin-bottom: 20px;">
                        
                        <h2 class="section-heading">ONGOING CHALLENGES</h2>
                        <p class="sub-heading">In your comunity..</p>                                    
                        </div>

                             <div class="collab-div-unique">
                                <div class="collab-div-side">
                                    <div class="collab-div-image">
                                      <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                            <img class="corner-flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                                    </div><br/>
                                    <div class="collab-div-image">
                                       <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                            <img class="corner-flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                                    </div>
                                </div>
                                <div class="collab-div-center" style="border: 0px;">

                                    <div class="guide-team-content" style="display: inline; display: inline-blcok;">
                                    <div class="each-item col-sm-10" style="width: 100%;">
	                                        <div class=" each-item-inner">
	                                            <div class="content-right content-defult col-sm-3" style="max-width: 18%;overflow: hidden;padding: 0px; background-color: #3489DA; width: 100%;height: 2000px;max-height: 185px; border-bottom-left-radius: 20px; border-top-left-radius: 20px; margin:-3px;"><br/><br/>

	                                                <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
	                                             
	                                            </div>
	                                            <div class="content-left col-sm-9" style="width: 82%; padding-top: 50px;">

	                                                <div class="media">
	                                                    
	                                                    <div class="media-left">

	                                                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>
	                                                    
	                                                    </div><div class="media-body"><h3 class="title">MAKING A SIGNIFICANT CHANGE</h3>
	                                                    <p class="pera">the final tips and tricks.</p>

	                                                    </div> <!-- /.media-body -->
	                                                     <!-- /.media-left -->
	                                                </div> <!-- /.media -->

	                                            </div> <!-- /.content-right -->
	                                             <!-- /.content-left -->
	                                        </div>    
	                                    </div>
                                    </div>
                                    </div>
                                <div class="collab-div-side">
                                
                                </div>
                            </div>                     
                    </div> <!-- /.each-features -->


                    <div class="col-xs-12 each-features" style="margin-bottom: 20px">
                        <div class="section-header relative text-center">
                        <p class="sub-heading"> Maximising your team’s potential.<br/>your team’s potential.</p>                                    
                        </div>
                    

                            <div class="collab-div-unique">
                                <div class="collab-div-side">
                                    <div class="collab-div-image">
                                       <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                            <img class="corner-flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                                    </div><br/>
                                </div>
                                <div class="collab-div-center" style="border: 0px;">

                                    <div class="guide-team-content" style="display: inline; display: inline-blcok;">
                                    <div class="each-item col-sm-10" style="width: 100%;">
                                            <div class=" each-item-inner">
                                                <div class="content-right content-defult col-sm-3" style="max-width: 18%;overflow: hidden;padding: 0px; background-color: #3489DA; width: 100%;height: 2000px;max-height: 185px; border-bottom-left-radius: 20px; border-top-left-radius: 20px;  margin:-3px;"><br/><br/>

                                                    <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                                                 
                                                </div>
                                                <div class="content-left col-sm-9" style="width: 82%; padding-top: 50px;">

                                                    <div class="media">
                                                        
                                                        <div class="media-left">

                                                             <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>
                                                        
                                                        </div><div class="media-body">                           <h3 class="title">HOW BUILDING A TEAM</h3>
                                                        <p class="pera">the final tips and tricks.</p>

                                                        </div> <!-- /.media-body -->
                                                         <!-- /.media-left -->
                                                    </div> <!-- /.media -->

                                                </div> <!-- /.content-right -->
                                                 <!-- /.content-left -->
                                            </div>    
                                        </div>
                                    </div>
                                    </div>
                                <div class="collab-div-side">
                                
                                </div>
                            </div> 

                        <div class="col-xs-12 each-features">

                            <div class="section-header relative text-center" style="margin-top: 50px; margin-bottom: 20px" >
                                    
                        <h2 class="section-heading" >Invitations</h2>                                    
                        </div>

                            <div class="collab-div-unique">
                                <div class="collab-div-side">
                                    <div class="collab-div-image">
                                       <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                            <img class="corner-flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                                    </div><br/>
                                </div>
                                <div class="collab-div-center" style="border: 0px;">

                                    <div class="guide-team-content" style="display: inline; display: inline-blcok;">
                                    <div class="each-item col-sm-10" style="width: 100%;">
                                            <div class=" each-item-inner">
                                                <div class="content-right content-defult col-sm-3" style="max-width: 18%;overflow: hidden;padding: 0px; background-color: #3489DA; width: 100%;height: 2000px;max-height: 185px; border-bottom-left-radius: 20px; border-top-left-radius: 20px;  margin:-3px;"><br/><br/>

                                                    <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                                                 
                                                </div>
                                                <div class="content-left col-sm-9" style="width: 82%; padding-top: 50px;">

                                                    <div class="media">
                                                        
                                                        <div class="media-left">

                                                             <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>
                                                        
                                                        </div><div class="media-body">                           <h3 class="title">HOW BUILDING A TEAM</h3>
                                                        <p class="pera">the final tips and tricks.</p>

                                                        </div> <!-- /.media-body -->
                                                         <!-- /.media-left -->
                                                    </div> <!-- /.media -->

                                                </div> <!-- /.content-right -->
                                                 <!-- /.content-left -->
                                            </div>    
                                        </div>
                                    </div>
                                    </div>
                                <div class="collab-div-side">
                                
                                </div>
                            </div>
                             <p class="blue-text">writin some text text text</p>  
                            </div>
                                             
                    </div> <!-- /.each-features -->  


                   

                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 20px; margin-top: 30px;">

                        <p class="blue-text">Looking for more?<br/>These friends have been performing well in collaborate challenges recently?</p>
                        
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
                                        <div class="media-body-left">
                                            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>
                                        </div>
                                    </div>      
                                </div>
                            </div>
                        </div> 


                            <br/><br/><br/>
                            <form class="form-inline single-form">
                                <label class="form-title">find by: </label>
                                <div class="form-group input-outer">
                                    <div class="select-outer">
                                        <select class="form-control contact-plan">
                                            <option value="subject1" disabled="" selected="">Interest</option>
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
                                            <option value="subject1" disabled="" selected="">Level</option>
                                            <option value="BusinessConsulting">consulting</option>
                                            <option value="TextConsulting">Text</option>
                                            <option value="Advisory">Advisory</option>
                                            <option value="Audit-$-assurance">Audit</option>
                                        </select>
                                    </div>
                                </div>
                            </form>

                    </div> 

                <div class="col-xs-12 each-features text-center">

                        <div class="modules-slider">
                            <div class="modules-slider-wrapper owl-carousel">
                                <xsl:for-each  select="/data/challenge/entry">
                                    <xsl:apply-templates select="current()" mode="currentchallengemodule" />
                                </xsl:for-each>

                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                    </div> <!-- /.each-features --> 

                    <div class="col-xs-12 each-features text-center">
                        
                        <form class="single-form search-form" action="" method="">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Search for..."/>
                                <span class="input-group-btn">
                                    <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                </span>
                            </div><!-- /.input-group -->
                        </form>

                    </div>

                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>

</xsl:stylesheet>
