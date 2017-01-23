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

                    <div class="guide-team-content col-xs-12">
                        <div class="section-header relative text-center">
                            <h2 class="section-heading">New Lesson</h2>
                        </div>
                        <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px;">
                            
                            <form class="form-inline single-form">
                                <div class="form-group input-outer">
                                    <div class="select-outer">
                                        <select class="form-control contact-plan">
                                            <option value="subject1" disabled="" selected="">Save</option>
                                            <option value="BusinessConsulting">consulting</option>
                                            <option value="TextConsulting">Text</option>
                                            <option value="Advisory">Advisory</option>
                                            <option value="Audit-$-assurance">Audit</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                            <div class="study-timeline-progress" style="margin-top: 80px;">
                                <div class="study-timeline-progress-circles" style="margin-left: 36%;">
                                    1
                                </div> 
                                <div class="study-timeline-progress-circles" style="margin-left: 46%;">
                                    2
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 56%;">
                                    3
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 66%;">
                                    4
                                </div> 
                                <div class="study-timeline-progress-circles" style="margin-left: 76%;">
                                    5
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 85%;">
                                    6
                                </div>
                            </div>
                        </div> 
                    </div> 

                    <div class="col-xs-12 each-features" style="margin-top: 50px;">
                    </div>








                    <h3 class="title-centre">TITLE</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes"  name="fields[title]"/>
                        </form>
                    </div>


                    <h3 class="title-centre">SUBTITLE</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes" name="fname"/>
                        </form>
                    </div>

                    <div class="col-xs-12 each-features">
                        <h3 class="title">NOTIFICATIONS</h3><br/>
                        <div class="box-border-text-left max-width" style="width: 45%; overflow-y: scroll; height: 380px; padding-left: 70px; padding-right: 0px;">
                            <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>
                             <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>
                             <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>
                             <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>
                            <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>
                             <div class="box-poligon" style="width: 45%; ">
                                <div class="box-poligon" style="width: 80%; ">
                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                </div>
                                 <div class="check-box" style="margin-left: 30%;">
                                </div>
                            </div>                    
                        </div>
                    </div>

                    <br/>
                    Next level Next level Next level Next level Next level Next level Next level Next level 
                    <br/>

                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px;">
                        <div class="box-border" style="border: 0px; height: 150px;">
                            <h3 class="title">START</h3>
                            <form class="form-inline single-form">
                                <div class="form-group input-outer">
                                    <div class="select-outer">
                                        <select class="form-control contact-plan">
                                            <option value="subject1" disabled="" selected="">ADD</option>
                                            <option value="BusinessConsulting">consulting</option>
                                            <option value="TextConsulting">Text</option>
                                            <option value="Advisory">Advisory</option>
                                            <option value="Audit-$-assurance">Audit</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="box-border" style="border: 0px; height: 150px;">
                            <h3 class="title">END</h3>
                            <form class="form-inline single-form">
                                <div class="form-group input-outer">
                                    <div class="select-outer">
                                        <select class="form-control contact-plan">
                                            <option value="subject1" disabled="" selected="">ADD</option>
                                            <option value="BusinessConsulting">consulting</option>
                                            <option value="TextConsulting">Text</option>
                                            <option value="Advisory">Advisory</option>
                                            <option value="Audit-$-assurance">Audit</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">OVERVIEW</h3>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>              

                    word<br/>
                    word<br/>
                    word<br/>
                    Next level Next level Next level Next level Next level Next level Next level Next level 
                    Next level Next level Next level Next level Next level 
                    <br/>


                    <h3 class="title-centre">PROBLEM</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes" name="fname"/>
                        </form>
                    </div>


                    <h3 class="title-centre">PROPOSED SOLUTION</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes" name="fname"/>
                        </form>
                    </div>

                    <h3 class="title-centre">STAKEHOLDERS</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes" name="fname"/>
                        </form>
                    </div>

                    <h3 class="title-centre">PARTNERS</h3>
                    <div class="enter-text-field" style="height: 100px;">
                        <form>
                          <input type="text" id="your-notes" name="fname"/>
                        </form>
                    </div>


                    word<br/>
                    word<br/>
                    word<br/>
                    Next level Next level Next level Next level Next level Next level Next level Next level 
                    Next level Next level Next level Next level Next level 
                    <br/>


	                <div class="col-xs-12 each-features">
                        <h3 class="title-centre">STRATEGY</h3>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">EXECUTION</h3>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                    word<br/>
	                    word<br/>
	                    word<br/>
	                    Next level Next level Next level Next level Next level Next level Next level Next level 
	                    Next level Next level Next level Next level Next level 
	                    <br/>


	                <div class="col-xs-12 each-features">
                        <h3 class="title-centre">OUTCOME</h3>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">LESSONS LEARNT</h3>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                    word<br/>
	                    word<br/>
	                    word<br/>
	                    Next level Next level Next level Next level Next level Next level Next level Next level 
	                    Next level Next level Next level Next level Next level 
	                    <br/>


                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">PHOTOS</h3>
                    	<p class="title-centre">drag and drop photos from your project here</p>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">MARKETING MATERIAL</h3>
                    	<p class="title-centre">upload files</p>
                        <div class="enter-text-field">
                            <form>
                              <textarea type="text" id="your-note" name="fname"></textarea>
                            </form>
                        </div>
                    </div>  

                     <div class="col-xs-12 each-features">
                        <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
                            
                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">TITLE</h3>
                                    <input name="fields[title]" type="text" id="your-notes" />
                                </div>
                            </label><br/>
                            <label><p>text</p>
                                <input name="fields[text]" type="text" />
                            </label><br/>
                            
                            <label><p>date</p>
                                <input name="fields[date]" type="text" />
                            </label><br/>
                            <input name="fields[user]" type="hidden" value="…" />

                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">SUBTITLE</h3>
                                    <input name="fields[subtitle]" type="text" id="your-notes" />
                                </div>
                            </label>

                            <label>
                                <div class="enter-text-field">
                                    <h3 class="title-centre">OVERVIEW</h3>
                                    <textarea id="your-note" name="fields[overview]" type="text"></textarea>
                                </div>
                            </label>  

                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">PROBLEM</h3>
                                    <input name="fields[problem]" type="text" id="your-notes" />
                                </div>
                            </label>

                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">PROPOSED SOLUTION</h3>
                                    <input name="fields[proposedsolution]" type="text" id="your-notes" />
                                </div>
                            </label>

                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">STAKEHOLDERS</h3>
                                    <input name="fields[stakeholders]" type="text" id="your-notes" />
                                </div>
                            </label>
                           
                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">PARTNERS</h3>
                                    <input name="fields[partners]" type="text" id="your-notes" />
                                </div>
                            </label>


                            <label>
                                <div class="enter-text-field"><h3 class="title-centre">STRATEGY</h3>
                                    <textarea id="your-note" name="fields[strategy]" type="text"></textarea>
                                </div>
                            </label> 

                            <label>
                                <div class="enter-text-field"><h3 class="title-centre">OUCOME</h3>
                                    <textarea id="your-note" name="fields[outcome]" type="text"></textarea>
                                </div>
                            </label> 

                            <label>
                                <div class="enter-text-field"><h3 class="title-centre">LESSON LEARNT</h3>
                                    <textarea id="your-note" name="fields[lessonlearnt]" type="text"></textarea>
                                </div>
                            </label> 
                           
                            

                             <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                                <div class="row single-comments-inner">
                                    <div class="btn-form col-xs-12 text-center margin-t-50">
                                      <a href="#" class="btn btn-border text-normal"> <input name="action[projectone]" type="submit" value="Submit" /> </a>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>

                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->





</xsl:template>
</xsl:stylesheet>