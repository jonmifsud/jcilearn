<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfileheader.xsl"/>
<xsl:import href="../sections/discussionlink.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">
                    	<br/><br/><br/>

	                    <div class="col-xs-12 each-features text-center"> 

	                        <div class="section-header relative text-center">
	                            <h2 class="section-heading">Ask Your Community.</h2>
	                            <br/>            
	                            <form class="single-form search-form" >
	                                <div class="input-group">
	                                    <input type="text" class="form-control" placeholder="Search for..."/>
	                                    <span class="input-group-btn">
	                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"> <i class="fa fa-search"></i> </button>

	                                         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
	                                                <div class="modal-dialog" role="document">
	                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 30%; width: 150%; margin-left: -25%;">
		                                                    <div class="modal-header " style="border: 0px; margin: 10px;">
		                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
		                                                    </div>

		                                                    <div class="new-class" style=" height: 400px; margin-right: auto; margin-left: auto; text-align: center; "> 
	                                                            <div class="box-border" style="width: 350px; height: 60px; padding-top: 10px; ">
	                                                    
	                                                                    <div class="input-group">
	                                                                        <input type="text" class="form-control" placeholder="Weekly goals..." style="    margin-top: -10px;"/>
	                                                                        <span class="input-group-btn">
	                                                                            <button class="btn" type="button" style="    margin-top: -10px;"><i class="fa fa-search"></i></button>
	                                                                        </span>
	                                                                    </div><!-- /.input-group -->
	                                                                
	                                                            </div><br/><br/>
	                                                            <h2 class="section-heading" style="font-size: 20px;">SEARCH RESULTS</h2>
	                                                            <div class="padding-wrapper" >
	                                                                <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
	                                                                    <div class="row comments-inner" style="margin-bottom: 50px; border: 0px;">

	                                                                        <div class="each-item" >
	                                                                            <div class="each-item-inner-lesson" style="width: 80%; display: inline-block;">
	                                                                                <div class="media">
	                                                                                    <div class="media-left">
	                                                                                        <img class="media-object profile-pic" src="assets/images/guide-team/profile-4.png" alt="Media Team Profile Image"/>
	                                                                                         <img class="flag" src="assets/images/guide-team/flag-1.png" alt="Flag"/>
	                                                                                        </div> <!-- /.media-left -->
	                                                                                        <div class="media-body">
	                                                                                            <h3 class="title">Mames Azzopardi Some <br/>ext Bla Bla title</h3>
	                                                                                            <p class="pera" style="margin: 0px;">Get ready.</p>
	                                                                                            <b style="color: #3496DA;"> ACCOUNT </b>
	                                                                                    </div> <!-- /.media-body -->
	                                                                                </div> <!-- /.media -->
	                                                                            </div>
	                                                                            <div class="box-border" style="width: 20%; height: 100px; display: inline-block; padding: 0px; border: 0px; margin-bottom: 20px;">
	                                                                                <div class="profile-meta">
	                                                                                    <p><i class="fa fa-man-people-streamline-user"></i>75</p><br/><br/>
	                                                                                    <p><i class="fa fa-like-love-streamline"></i>15</p>
	                                                                                </div>
	                                                                            </div>
	                                                                        </div> <!-- /.each-item -->

	                                                                    </div>
	                                                                </div>
	                                                            </div>

		                                                    </div>                                                      
	                                                    </div>
	                                                </div>
	                                            </div>
	                                    </span>
	                                </div><!-- /.input-group -->
	                            </form>
	                        </div> 

	                        <form class="form-inline single-form">
	                            <label class="form-title">find by: </label>
	                            <div class="form-group input-outer">
	                                <div class="select-outer">
	                                    <select class="form-control contact-plan">
	                                        <option value="subject1" disabled="" selected="">Interest</option>
	                                        <option value="BusinessConsulting">Business consulting</option>
	                                        <option value="TextConsulting">Text consulting</option>
	                                        <option value="Advisory">Advisory</option>
	                                        <option value="Audit-$-assurance">Audit and assurance</option>
	                                    </select>
	                                </div>
	                            </div>
	                        </form>

	                    </div>

	                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 0px;">
	                    	<xsl:for-each select="/data/discussion/entry" > 
				                <xsl:if test="position() &lt;=3">
			                        <div class="padding-wrapper" >
			                            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
			                                <div class="row comments-inner" style="margin-bottom: 50px;">
						                        <xsl:apply-templates select="current()" mode="discussionlink"/>
			                                </div>
			                            </div>
			                        </div>
		                        </xsl:if>
					        </xsl:for-each>
	                    </div>

	                    <div class="col-xs-12 each-features text-center">    
                            <div class="padding-wrapper" style="padding-left: 12%; padding-right: 12%; height: 50px;">
                                <div class="row comments-inner">
                                    <div class="each-item">
                                        <div class="each-item-inner comments-option overflow">
                                            <div class="box-border" style="width: 80%; height: 90px; border: 0px;">
                                                <a href="#" class="btn right-icon see-more pull-left">More<i class="fa fa-angle-down"></i></a>
                                                <p class="comments-pagination pull-right" style="margin-top: 10px; font-size: 15px;">3 of 14</p>
                                            </div>
                                        </div>
                                    </div> <!-- /.each-item -->
                                </div>
                            </div>
                            
                            <div class="btn-form col-xs-12 text-center margin-t-50">
                                <a href="#" class="btn btn-border text-normal">New Discussion</a>
                            </div>
	                    </div>
	                
            	</div> <!-- /.row -->
        	</div> <!-- /.container -->
    	</div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>