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

                    <h2 class="title-centre">NEW STORY</h2>
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
                            <div id="LessonEditStep1" class="study-timeline-progress-circles" style="margin-left: 33%;">
                                1
                            </div> 
                            <div id="LessonEditStep2" class="study-timeline-progress-circles" style="margin-left: 66%;">
                                2
                            </div>
                        </div>
                    </div>
                    
                    <div class="col-xs-12 each-features" style="margin-top: 0px;">
                        <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />

                            <div class="sliderJquery">
                                <div id="div1">
                                    <label style="width: 90%;" >
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">TITLE</h3>
                                            <input name="fields[title]" type="text" id="your-notes" />
                                        </div>
                                    </label>

                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">SUBTITLE</h3>
                                            <input name="fields[subtitle]" type="text" id="your-notes"/>
                                        </div>
                                    </label>  

                                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                                        <h3 class="title col-md-12">CATEGORY</h3><br/>
                                        <div class="col-md-3"></div>
                                        <div class="box-border-text-left max-width col-md-8" style="width: 45%; overflow-y: scroll; height: 380px;">
                                            <xsl:apply-templates select='/data/interests/entry' mode='option'>
                                                <xsl:with-param name='class'>
                                                    <xsl:text>col-xs-6 text-center</xsl:text>
                                                </xsl:with-param>
                                                <xsl:with-param name='name'>category</xsl:with-param>
                                            </xsl:apply-templates>         
                                        </div>
                                    </div>

                                    <!-- <div class="col-xs-12 each-features text-center" style="margin-bottom: 40px;">
                                        <div class="box-border" style="border: 0px; height: 150px;">
                                            <h3 class="title">START</h3>
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

                                        <div class="box-border" style="border: 0px; height: 150px;">
                                            <h3 class="title">START</h3>
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
                                    </div> -->
                                </div>

                                <div id="div2">
                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">TEXT</h3>
                                            <textarea class="your-note-text-box-shape" id="your-note" name="fields[text]" type="text" rows='15'></textarea>
                                        </div>
                                    </label>
                                </div>
                            </div> <!-- sliderJquery -->

                            <input name="action[storyone]" type="submit" value="Submit" />
                        </form>
                    </div>

                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>