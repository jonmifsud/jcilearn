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


                    <h2 class="title-centre">NEW LESSON</h2>
                <div class="enter-text-field" style="height: 100px;">
                    <div class="form-inline single-form" style="width: 150px;">
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
                    </div> 
                </div>
                    
                    <button class="counter1"> counter</button>


                    <div class="col-xs-12 each-features">
                        <div class="study-timeline-progress" style="margin-top: 80px;">
                            <div id="LessonEditStep1" class="study-timeline-progress-circles" style="margin-left: 30%;">
                                1
                            </div> 
                            <div id="LessonEditStep2" class="study-timeline-progress-circles" style="margin-left: 55%;">
                                2
                            </div>
                            <div id="LessonEditStep3" class="study-timeline-progress-circles" style="margin-left: 80%;">
                                3
                            </div>
                        </div>
                    </div>

                        <div class="col-xs-12 each-features" style="margin-top: 100px;">
                            <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />

                                <div class="sliderJquery">


                                    <div id="div1">
                                        <label style="width: 100%;">
                                            <h3 class="title-centre">TITLE</h3>
                                            <div class="enter-text-field" style="height: 100px;">
                                                <input name="fields[title]" type="text" class="your-notes-class" id="your-notes" />
                                            </div>
                                        </label>

                                        <label style="width: 100%;">
                                            <div class="enter-text-field" style="height: 100px;">
                                                <h3 class="title-centre">SUBTITLE</h3>
                                                <input name="fields[subtitle]" type="text" id="your-notes" />
                                            </div>
                                        </label>

                                        <h3 class="title" style="margin-bottom: 0px;">CATEGORY</h3><br/>
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
    




                                <div id="div2">
                                    <label style="width: 100%;">
                                        <div class="enter-text-field"><h3 class="title-centre">TEXT</h3>
                                            <textarea id="your-note" name="fields[text]" class="your-notes-class"type="text"></textarea>
                                        </div>
                                    </label>

                                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px; margin-top: 100px;">
                                        <div class="form-inline single-form">
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
                                        </div>
                                    </div>
                                </div>
    




                                <div id="div3">
                                    <input name="fields[profile]" type="hidden" value="…" />
                                    <input name="fields[lesson-text-box]" type="hidden" value="…" />
                                    <input name="fields[user]" type="hidden" value="…" />

                                    <label style="width: 100%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">QUESTION</h3>
                                            <input name="fields[question]" type="text" id="your-notes" />
                                        </div>
                                    </label><br/>
                                    <input name="action[lessonone]" type="submit" value="Submit" />
                                </div>
                            </div> <!-- sliderJquery -->
                        </form>
                    </div>  
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>