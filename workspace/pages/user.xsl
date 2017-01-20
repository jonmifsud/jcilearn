<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>
<xsl:import href="../sections/usercontentmodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/> 

                    <div class="col-xs-12 each-features">
                        <h2 class="section-heading" style="margin-bottom: 6%;">Good morning, Nathan!</h2>

                        <div class="col-md-6 col-sm-6" style="border: 0px; height: 10%;">
                            <div class="user-definitions-line-right" style=" width: 95%;">
                                <img style="width: 100%; position: relative; width: 90%; border: 5px solid #3496DA;; border-radius: 100%; max-height: 250px; max-width: 250px;" class="user-image" src="http://localhost/jcilearn/workspace/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                <img style="position: relative; top: -80px; min-width: 120px; height 80px; right: 0;" class="flag" src="http://localhost/jcilearn/workspace/assets/img/icons/flag-1.png" alt="Flag"/>
                              </div>

                        </div>
                        <div class="col-md-6 col-sm-6" style="border: 0px; height: 10%;">
                            <div class="user-definitions-line-left" style="width: 100%;">
                                <div class="media-body">
                                  <button type="button" class="btn  btn-lg" data-toggle="modal" data-target="#myModal">
                                    <h3 style="font-size: 30px; line-height: 110%;" class="title">Zack<br/>Joules Enixey</h3>
                                  </button>
                                  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                    <div class="modal-dialog" role="document">
                                      <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%;">
                                        <div class="modal-header " style="border: 0px; margin: 10px;">
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true" style="font-weight: bold;"></span>
                                          </button>
                                          <h4 class="modal-title" id="myModalLabel">POINT SYSTEM</h4>
                                        </div>
                                        <div class="new-class" style=" height: 400px; ">
                                          <div class="box-border-modal" style="text-align: left; width: 22%;"><p class="blue-text"> 50XP</p><b>Share</b><br/>
                                            Lesson<br/><br/><br/>
                                            New Badge
                                        </div>
                                          <div class="box-border-modal" style="text-align: left; width: 22%;"><p class="blue-text"> 25XP</p><b>Share</b><br/>
                                            Project<br/>
                                            Story<br/><br/><br/></div>
                                          <div class="box-border-modal" style="text-align: left; width: 22%;"><p class="blue-text"> 10XP</p><b>Learn</b><br/>
                                            Lesson<br/>
                                            Task<br/>
                                            End Module<br/>
                                            End Challengge<br/><br/>
                                            5 s on your shared content
                                        </div>
                                          <div class="box-border-modal" style="text-align: left; width: 22%;"><p class="blue-text"> 5XP</p><b>Learn</b><br/>
                                                Project<br/>
                                                Story<br/><br/>
                                                Highlights on shared content
                                                
                                            </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <span style="float: left; text-align: left;">1 lesson
                                                        5 projects
                                                        2 stories</span>
                                  <br/>
                                  <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
                                  <span style="color: #3496DA; size: 15px; font-weight: bold;">/ 50XP</span>
                                  <span style="color: #3496DA"> this week</span>
                                  <br/>
                                  <div class="profile-meta" style="border: 2px solid #3489DA;width: 100px;height: 60px; padding: 5%; border-radius: 10%; margin-top: 20px;">
                                    <p><i class="fa fa-man-people-streamline-user"></i> +</p>
                                  </div>
                                </div>
                              </div>

                        </div>
                        
                        <div class="col-md-6 col-sm-6" style="border: 0px; height: 10%;">
                           <div class="user-definitions-line-right" style="width: 100%;">
                            <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="http://localhost/jcilearn/workspace/assets/img/icons/icon-1.png" alt="Media Team Image"/>
                            <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="http://localhost/jcilearn/workspace/assets/img/icons/icon-2.png" alt="Media Team Image"/>
                            <br/>
                            <br/>
                            <p style="line-height: 100%; text-align: right; font-size: 10px;"> andomtexttotype random text to type r random<br/>randommmmm randomrandomrandom</p>
                          </div>
                        </div>
                        <div class="col-md-6 col-sm-6" style="border: 0px; height: 10%;">
                           <div class="user-definitions-line-left" style="width: 100%;">
                            <p class="colored-text"> sustainability</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <p class="colored-text"> sustainability</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <p class="colored-text"> sustainability</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <br/>
                          </div>
                        </div>
                    </div> <!-- /.each-features -->

                   <div class="col-xs-12 each-features">
                        <div class="col-md-8 col-sm-8 col-xs-12" style="border: 0px; height: 10%;">
                            <div class="box-border-text-left" style="overflow-y: scroll; height: 380px;">
                                <h3 class="title">NOTIFICATIONS</h3><br/>
                                <div class="box-poligon" style="width: 100%; ">
                                    <div class="box-poligon" style="width: 20%; ">
                                        <img src="assets/images/guide-team/icon-4.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 60%;">
                                        <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
                                    </div>
                                </div>
                                 <div class="box-poligon" style="width: 100%; ">
                                    <div class="box-poligon" style="width: 20%; ">
                                        <img src="assets/images/guide-team/icon-5.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 60%;">
                                        <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
                                    </div>
                                </div>
                                 <div class="box-poligon" style="width: 100%; ">
                                    <div class="box-poligon" style="width: 20%; ">
                                        <img src="assets/images/guide-team/icon-6.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 60%;">
                                        <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
                                    </div>
                                </div>                                       
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12" style="border: 0px; height: 10%;">
                            <div class="box-border-text-left" style="overflow-y: scroll; height: 380px;">
                                <h3 class="title"> LEADERSHIP </h3><br/>
                                <div class="box-poligon" style="width: 100%; ">
                                1
                                    <div class="box-poligon" style="width: 20%; ">                                
                                        <img src="assets/images/guide-team/profile-3.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 50%;">
                                        <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
                                        <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
                                    </div>
                                </div>
                               <div class="box-poligon" style="width: 100%; ">
                                2
                                    <div class="box-poligon" style="width: 20%; ">                                
                                        <img src="assets/images/guide-team/profile-3.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 50%;">
                                        <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
                                        <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
                                    </div>
                                </div>
                                <div class="box-poligon" style="width: 100%; ">
                                3
                                    <div class="box-poligon" style="width: 20%; ">                                
                                        <img src="assets/images/guide-team/profile-3.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 50%;">
                                        <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
                                        <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
                                    </div>
                                </div>
                                <div class="box-poligon" style="width: 100%; ">
                                4
                                    <div class="box-poligon" style="width: 20%; ">                                
                                        <img src="assets/images/guide-team/profile-3.png" />
                                    </div>
                                    <div class="box-poligon" style="width: 50%;">
                                        <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
                                        <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                                    
                        
                    <div class="col-xs-12 each-features">
                        <h2 class="section-heading">CURRENTLY ENROLLED IN: </h2><br/>
                        <div class="col-md-3 col-sm-2"></div>
                        <div class="col-md-3 col-sm-4 col-xs-6" style="border: 0px;">                            
                            <div class="box-border" style="width: 100%; padding: 20px; height: 20%;" >
                                <img style="padding: 5px; display: inline-block; text-align: center; width: 80%" class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-4.png" alt="Media Team Image"/>
                                <h3 class="title"><xsl:value-of select="/data/lesson/entry/title"/></h3>
                            </div>
                        </div>
                        <div class="col-md-3  col-sm-4 col-xs-6" style="border: 0px; ">                            
                            <div class="box-border" style="width: 100%; padding: 20px; height: 20%;" >
                                <img style="padding: 5px; display: inline-block; text-align: center; width: 80%" class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-2.png" alt="Media Team Image"/>
                                <h3 class="title"><xsl:value-of select="/data/lesson/entry/title"/></h3>
                            </div>
                        </div>
                    </div>                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>