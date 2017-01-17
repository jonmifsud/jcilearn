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
                                <div class="study-timeline-progress-circles" style="margin-left: 30%;">
                                    1
                                </div> 
                                <div class="study-timeline-progress-circles" style="margin-left: 60%;">
                                    2
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 90%;">
                                    3
                                </div>
                            </div>
                        </div> 
                    </div> 

                    <button id="editPageButton"> Edit Page Button </button>

                    <div class="col-xs-12 each-features" style="margin-top: 50px;">
                    </div>

                    <div id="containerForEditPage">
                        <div id="sliderForEditPage1">
                            <div class="col-xs-12 each-features">
                                <h3 class="title-centre">TEXT</h3>
                                <div class="enter-text-field">
                                    <form>
                                      <input type="text" id="your-note" name="fname"/>
                                    </form>
                                </div>
                            </div>              

                            <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px; margin-top: 100px;">
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

                        <div id="sliderForEditPage2">
                                <h3 class="title-centre">TITLE</h3>
                                <div class="enter-text-field" style="height: 100px;">
                                    <form>
                                      <input type="text" id="your-notes" name="fname"/>
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
                                    <div class="box-border-text-left" style="width: 45%; overflow-y: scroll; height: 380px; padding-left: 70px; padding-right: 0px;">
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
                        </div>

                        <div id="sliderForEditPage3">
                            <h2 class="title-centre">MINIQUIZ</h2><br/>

                            <h3 class="title-centre">QUESTION 1</h3>
                            <div class="enter-text-field" style="height: 100px;">
                                <form>
                                  <input type="text" id="your-notes" name="fname"/>
                                </form>
                            </div>

                            <h3 class="title-centre">ANSWERS</h3>
                            <p class="title-centre">Tick the correct one</p>

                            <div class="enter-text-field" style="height: 100%;">
                                <form>
                                    <div class="checkboxfield" style="height: 50px;"> 
                                        <div class="check-box" /> 
                                    </div>
                                    <div class="checkboxfield" style="height: 50px;"> 
                                        <div class="check-box" /> 
                                    </div>
                                    <div class="checkboxfield" style="height: 50px;"> 
                                        <div class="check-box" /> 
                                    </div>
                                </form>
                            </div>

                            <div class="btn-form text-center margin-t-50">
                                <a href="#" class="btn btn-border text-normal">ADD A QUESTION</a>
                            </div><!-- /.row -->

                            <div class="col-xs-12 each-features">
                                <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                                    <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />

                                    <label>
                                        <div class="enter-text-field"><h3 class="title-centre">TEXT</h3>
                                            <textarea id="your-note" name="fields[text]" type="text"></textarea>
                                        </div>
                                    </label>


                                    <label>
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">TITLE</h3>
                                            <input name="fields[title]" type="text" id="your-notes" />
                                        </div>
                                    </label>

                                    <label>
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">SUBTITLE</h3>
                                            <input name="fields[subtitle]" type="text" id="your-notes" />
                                        </div>
                                    </label>

                                    <input name="fields[profile]" type="hidden" value="…" />
                                    <input name="fields[lesson-text-box]" type="hidden" value="…" />
                                    <input name="fields[user]" type="hidden" value="…" />

                                    <label>
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">QUESTION</h3>
                                            <input name="fields[question]" type="text" id="your-notes" />
                                        </div>
                                    </label><br/>
                                    <input name="action[lessonone]" type="submit" value="Submit" />
                                </form>
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