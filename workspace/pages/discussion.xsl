<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                    <div class="col-xs-12 each-features text-center">  
                        <div class="section-header relative text-center">
                        	<br/><br/><br/>
                            <h2 class="section-heading">Ask Your Community.</h2>
                            <br/>            
                            <form class="single-form search-form" action="" method="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for..."/>
                                    <span class="input-group-btn">
                                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                    </span>
                                </div><!-- /.input-group -->
                            </form>
                        </div>  

                        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                            <div class="guide-team">
                              <div class="guide-team-inner">

                                <div class="col-mc-3 col-sm-3"></div>
                                <div class="section-header relative text-center col-mc-6 col-sm-6 col-xs-12">
                                  <h2 class="section-heading">Making the best out of your weekly goal.</h2>
                                </div>

                                <div class="lesson-definitions  col-sm-7 col-md-7" style="margin-top: -30px;">
                                  <div class="lesson-top-picture">
                                    <div class="media">
                                      <div class="media-body-left">
                                        <b>Zack</b>
                                      </div>
                                      <div class="media-body-left">
                                        <img class="media-object profile-pic" src="http://localhost/jcilearn/workspace/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px;"/>
                                        <img class="flag put-flag-in-corner" src="http://localhost/jcilearn/workspace/assets/img/icons/flag-1.png" alt="Flag"/>
                                      </div>
                                    </div>
                                  </div>
                                </div>

                              </div>
                            </div>
                          </div>

                         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">

                             <div class="lesson-text">
                             <br/>
                                <p class="lesson-text"><xsl:value-of select="/data/discussion/entry/profile/item" />
                                	<xsl:value-of select="/data/discussion/entry/text" />
                            	</p><br/><br/>
                             </div>
                        </div>

                        <div class="col-xs-12 each-features" style="margin-bottom: 0px; height: 100px;">
                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" >
                                <xsl:apply-templates select="/data/discussion/entry[1]" mode="likeviews"/>
                                
                            </div>
                        </div>

                        <xsl:call-template name="show-comments"/> 


                        <div class="lesson-button-organise text-center">
                            <div class="btn-form col-xs-12 col-md-4 col-sm-4 col-md-offset-4 text-center margin-t-10">
                                <div class="wraper-like-comment-share" style="margin-left: 15%;">
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

                        <div class="btn-form col-xs-12 text-center margin-t-50">
                            <a href="#" class="btn btn-border text-normal">New Discussion</a>
                        </div>

                    </div>
                    
                </div> <!-- /.row -->
                <div class="col-md-1 col-sm-1" ></div>

                    <xsl:call-template name="write-comment"/> 

            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->		
</xsl:template>
</xsl:stylesheet>