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
                            <h2 class="section-heading">New Story</h2>
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

                    <div class="col-xs-12 each-features" style="margin-top: 50px;">
                    </div>

                        <h3 class="title-centre">TITLE</h3>
                        <div class="enter-text-field" style="height: 100px;">
                            <form>
                              <input type="text" id="your-notes" name="fname"/>
                            </form>
                        </div>

                    <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <h3 class="title">CATEGORY</h3><br/>
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
                    </div>

                    <br/>
                    Next level Next level Next level Next level Next level Next level Next level Next level 
                    Next level Next level Next level Next level Next level 
                    <br/>

                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">TEXT</h3>
                        <div class="enter-text-field">
                            <form>
                              <input type="text" id="your-note" name="fname"/>
                            </form>
                        </div>
                    </div>     


                    word<br/>
                    word<br/>
                    word<br/>
                    Next level Next level Next level Next level Next level Next level Next level Next level 
                    Next level Next level Next level Next level Next level 
                    <br/><br/><br/>


                    <div class="col-xs-12 each-features">
                        <h3 class="title-centre">PHOTOS</h3>
                        <p class="title-centre"> drag and drop photos related to your story here</p>
                        <div class="drop-drag-box">
                            drag and drop
                        </div>
                    </div>







                    
                    <div class="col-xs-12 each-features">
                        <form method="post" action="{$current-url}/?debug" enctype="multipart/form-data">
                            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
                                                    
                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">TITLE</h3>
                                    <input name="fields[title]" type="text" id="your-notes" />
                                </div>
                            </label><br/>

                            <label><p>subtitle</p>
                                <input name="fields[subtitle]" type="text" />
                            </label><br/>

                            <label>
                                <div class="enter-text-field" style="height: 100px;">
                                    <h3 class="title-centre">TEXT</h3>
                                    <textarea id="your-note" name="fields[text]" type="text"></textarea>
                                </div>
                            </label><br/>

                            <label><p>date</p>
                                <input name="fields[date]" type="text" />
                            </label><br/>
                            
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