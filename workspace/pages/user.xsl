<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/modules.xsl"/>
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
                            
                            <div class="col-md-5 col-sm-6" style="border: 0px; height: 10%;">
                                 <div class="user-definitions-line-right" style=" width: 100%;">
                                    <img style="width: 110%; position: relative; border: 5px solid #3496DA;; border-radius: 100%; max-height: 250px; max-width: 250px;" class="user-image" src="http://localhost/jcilearn/workspace/assets/img/icons/profile-3.png" alt="Media Team Profile Image"/>
                                    <img style="position: relative; top: -80px; min-width: 120px; height 80px; right: 0;" class="flag" src="http://localhost/jcilearn/workspace/assets/img/icons/flag-1.png" alt="Flag"/>
                                 </div>

                            </div>
                            <div class="col-md-5 col-sm-6" style="border: 0px; height: 10%;">
                                <div class="user-definitions-line-left" style="width: 100%;">
                                  <div class="media-body">
                                    <button type="button" class="btn  btn-lg" data-toggle="modal" data-target="#myModal">
                                      <h3 style="font-size: 30px; line-height: 110%; float: left;" class="title">Zack<br/>Joules Enixey</h3>
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
                                    <span style="float: left; text-align: left;">
                                        1 lesson
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
                            <div class="col-md-2"></div> 
                        
                        <div class="col-md-5 col-sm-5" style="border: 0px; height: 10%;">
                           <div class="user-definitions-line-right" style="width: 100%;">
                              <div class="col-xs-12 col-md-12">
                              <div class="col-md-8 col-xs-8">
                               <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="http://localhost/jcilearn/workspace/assets/img/icons/icon-1.png" alt="Media Team Image"/>
                              </div>
                              <div class="col-md-4 col-xs-4">
                               <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="http://localhost/jcilearn/workspace/assets/img/icons/icon-2.png" alt="Media Team Image"/>
                              </div>
                              </div>
                              <div class="col-xs-12 col-md-12">
                              <p style="line-height: 100%; text-align: right; font-size: 25px; margin-top: 30px;"> Medical student at the University of Malta, hell bent on saving the Maltese countryside.</p>
                              </div>
                          </div>
                        </div>
                        <div class="col-md-5 col-sm-5" style="border: 0px; height: 10%;">
                           <div class="user-definitions-line-left" style="width: 100%;">
                            <p class="colored-text"> sustainability</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <br/>
                            <p class="colored-text"> ACTIVE CITIZENSHIP</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <br/>
                            <p class="colored-text"> LEADERSHIP</p>
                            <div class="progress-wrapper-div">
                              <div class="progress-div"></div>
                            </div>
                            <br/>
                          </div>
                        </div>
                    </div> <!-- /.each-features -->

                   <div class="col-xs-12 each-features">
                        <div class="col-md-8 col-sm-8 col-xs-12" style="border: 0px; height: 10%;">
                            <div class="box-border-text-left" style=" height: 380px; padding-left: 50px;">
                                <h3 class="title">RECENT ACTIVITY</h3><br/>
                                <div style="overflow-y: scroll; height: 300px; ">
                                  <div class="box-poligon" style="width: 100%; ">
                                      <div class="box-poligon" style="width: 20%; ">
                                          <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                      </div>
                                      <div class="box-poligon" style="width: 60%;">
                                          <p class="pera">levelled up in 'Introduction to Leadership'.</p>
                                      </div>
                                  </div>
                                   <div class="box-poligon" style="width: 100%; ">
                                      <div class="box-poligon" style="width: 20%; ">
                                          <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                      </div>
                                      <div class="box-poligon" style="width: 60%;">
                                          <p class="pera"><xsl:value-of select="/data/users/entry/name"/> obtained his Global Issues badge!</p>
                                      </div>
                                  </div>
                                   <div class="box-poligon" style="width: 100%; ">
                                      <div class="box-poligon" style="width: 20%; ">
                                          <img src="{/data/params/workspace}/assets/img/icons/icon-2.png" />
                                      </div>
                                      <div class="box-poligon" style="width: 60%;">
                                          <p class="pera">favourited a story.</p>
                                      </div>
                                  </div>
                                  <div class="box-poligon" style="width: 100%; ">
                                      <div class="box-poligon" style="width: 20%; ">
                                          <img src="{/data/params/workspace}/assets/img/icons/icon-1.png" />
                                      </div>
                                      <div class="box-poligon" style="width: 60%;">
                                          <p class="pera">favourited a story.</p>
                                      </div>
                                  </div>   
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12" style="border: 0px; height: 10%;">
                            <div class="box-border-text-left" style="height: 380px; padding-left: 50px;">
                                <h3 class="title"> COLLABORATION </h3><br/>
                                <div style="overflow-y: scroll; height: 300px; ">
                                <div class="box-poligon collaboration-user-box">                                
                                    <div class="box-poligon" style="width: 35%; ">                                
                                        <div class="media-body-left">
                                            <img class="media-object profile-pic smaller-profile-picture" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                <img class="flag put-flag-in-corner-small" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  style="width: 60%;" alt="Flag"/>
                                        </div> 
                                    </div>
                                    <div class="box-poligon">
                                        <div class="media-body-left" style="padding-left: 0px;">
                                          <p class="blue-text" style="font-size: 20px; float: left;">
                                          <b style="float: left;"><xsl:value-of select="/data/users/entry/name"/></b>
                                          <br/>
                                          <b><xsl:value-of select="/data/users/entry/surname"/></b>
                                          </p>
                                        </div> 
                                    </div>
                                </div>
                                <div class="box-poligon collaboration-user-box">                                
                                    <div class="box-poligon" style="width: 35%; ">                                
                                        <div class="media-body-left">
                                            <img class="media-object profile-pic smaller-profile-picture" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                <img class="flag put-flag-in-corner-small" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  style="width: 60%;" alt="Flag"/>
                                        </div> 
                                    </div>
                                    <div class="box-poligon">
                                        <div class="media-body-left" style="padding-left: 0px;">
                                          <p class="blue-text" style="font-size: 20px; float: left;">
                                          <b style="float: left;"><xsl:value-of select="/data/users/entry/name"/></b>
                                          <br/>
                                          <b><xsl:value-of select="/data/users/entry/surname"/></b>
                                          </p>
                                        </div> 
                                    </div>
                                </div>
                                <div class="box-poligon collaboration-user-box">                                
                                    <div class="box-poligon" style="width: 35%; ">                                
                                        <div class="media-body-left">
                                            <img class="media-object profile-pic smaller-profile-picture" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                <img class="flag put-flag-in-corner-small" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  style="width: 60%;" alt="Flag"/>
                                        </div> 
                                    </div>
                                    <div class="box-poligon">
                                        <div class="media-body-left" style="padding-left: 0px;">
                                          <p class="blue-text" style="font-size: 20px; float: left;">
                                          <b style="float: left;"><xsl:value-of select="/data/users/entry/name"/></b>
                                          <br/>
                                          <b><xsl:value-of select="/data/users/entry/surname"/></b>
                                          </p>
                                        </div> 
                                    </div>
                                </div>
                                <div class="box-poligon collaboration-user-box">                                
                                    <div class="box-poligon" style="width: 35%; ">                                
                                        <div class="media-body-left">
                                            <img class="media-object profile-pic smaller-profile-picture" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                                <img class="flag put-flag-in-corner-small" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  style="width: 60%;" alt="Flag"/>
                                        </div> 
                                    </div>
                                    <div class="box-poligon">
                                        <div class="media-body-left" style="padding-left: 0px;">
                                          <p class="blue-text" style="font-size: 20px; float: left;">
                                          <b style="float: left;"><xsl:value-of select="/data/users/entry/name"/></b>
                                          <br/>
                                          <b><xsl:value-of select="/data/users/entry/surname"/></b>
                                          </p>
                                        </div> 
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>                                    
                        
                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre" style="padding-bottom: 20px;">CURRENTLY ENROLLED IN: </h3>
                        <div class="col-xs-1 col-md-2"></div>
                        <div class="col-xs-1 col-md-4">
                           <xsl:apply-templates select="/data/lesson/entry[1]" mode="modules"/>
                        </div>
                        <div class="col-xs-1 col-md-4">
                           <xsl:apply-templates select="/data/lesson/entry[2]" mode="modules"/>
                        </div>
                        <div class="col-xs-1 col-md-3"></div>
                    </div>                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>