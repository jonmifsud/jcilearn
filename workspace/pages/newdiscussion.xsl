<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
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
	                        <h2 class="section-heading">New Discussion</h2>    
	                        <br/>
	                        <a href="#" class="btn btn-border">Publish</a>
	                        <br/>
	                        <br/><br/><br/>
	                        <h3 class="title-centre">TITLE</h3>
	                        <div class="enter-text-field-title">
	                            <form>
	                              <input type="text" id="your-note-title" name="fname"/>
	                            </form>
	                        </div><br/><br/>
	                        <h3 class="title-centre">CATEGORY</h3>
	                        <form class="form-inline single-form" style="width: 60%;">
	                            <div class="form-group input-outer" style="width: 60%;">
	                                <div class="select-outer">
	                                    <select class="form-control contact-plan">
	                                        <option value="subject1" disabled="" selected="">Select</option>
	                                        <option value="BusinessConsulting">Business consulting</option>
	                                        <option value="TextConsulting">Text consulting</option>
	                                        <option value="Advisory">Advisory</option>
	                                        <option value="Audit-$-assurance">Audit assurance</option>
	                                    </select>
	                                </div>
	                            </div>                            
	                        </form><br/><br/><br/><br/>
	                        <h3 class="title-centre">TEXT</h3>
	                        <div class="enter-text-field" style="margin-bottom: 100px;">
	                            <form>
	                              <input type="text" id="your-note" name="fname"/>
	                            </form>
	                        </div>


	                        <form method="post" action="{$current-url}/" enctype="multipart/form-data">
								<input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
								<div class="enter-text-field" style="height: 100px;">
	                                <h3 class="title-centre">TITLE</h3>
	                                <input name="fields[title]" type="text" id="your-notes" />
	                            </div>
								<div class="enter-text-field"><h3 class="title-centre">TEXT</h3>
                                <textarea id="your-note" name="fields[text]" type="text"></textarea>
                            </div>
								<input name="fields[profile]" type="hidden" value="…" />
								<br/><br/><br/><br/><br/><br/><br/>
								<label><p>date</p>
									<input name="fields[date]" type="text" />
								</label>
								<input name="action[discussionone]" type="submit" value="Submit" />
							</form>

	                    </div> <!-- /.each-features -->

	                    
	                    	

                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>