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

                    <h2 class="title-centre">NEW PROJECT</h2>
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



                            <div class="study-timeline-progress-circles" style="margin-left: 27%; ">
                                    1
                                </div> 
                                <div class="study-timeline-progress-circles" style="margin-left: 38%; ">
                                    2
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 50%; ">
                                    3
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 61%; ">
                                    4
                                </div> 
                                <div class="study-timeline-progress-circles" style="margin-left: 72%; ">
                                    5
                                </div>
                                <div class="study-timeline-progress-circles" style="margin-left: 83%; ">
                                    6
                                </div>
                        </div>
                    </div>                    

                    <div class="col-xs-12 each-features">
                        <form method="post" action="{$current-url}/" enctype="multipart/form-data">
                            <input name="MAX_FILE_SIZE" type="hidden" value="2097152" />
                            

                            <div class="sliderJquery">

                                <div id="div1">
                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">TITLE</h3>
                                            <input name="fields[title]" type="text" id="your-notes" />
                                        </div>
                                    </label><br/>

                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">SUBTITLE</h3>
                                            <input name="fields[subtitle]" type="text" id="your-notes" />
                                        </div>
                                    </label>

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


                                <div id="div2">                                    
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
                                        <h3 class="title">END</h3>
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

                                    <label style="width: 90%;">
                                        <div class="enter-text-field">
                                            <h3 class="title-centre">OVERVIEW</h3>
                                            <textarea id="your-note" class="your-note-box-shape" name="fields[overview]" type="text"></textarea>
                                        </div>
                                    </label> 
                                </div>
    



                                <div id="div3">
                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">PROBLEM</h3>
                                            <input name="fields[problem]" type="text" id="your-notes" />
                                        </div>
                                    </label>

                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">PROPOSED SOLUTION</h3>
                                            <input name="fields[proposedsolution]" type="text" id="your-notes" />
                                        </div>
                                    </label>

                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">STAKEHOLDERS</h3>
                                            <input name="fields[stakeholders]" type="text" id="your-notes" />
                                        </div>
                                    </label>
                                   
                                    <label style="width: 90%;">
                                        <div class="enter-text-field" style="height: 100px;">
                                            <h3 class="title-centre">PARTNERS</h3>
                                            <input name="fields[partners]" type="text" id="your-notes" />
                                        </div>
                                    </label>
                                </div>



                                <div id="div4">
                                    <label style="width: 90%;">
                                        <div class="enter-text-field"><h3 class="title-centre">STRATEGY</h3>
                                            <textarea class="your-note-box-shape" id="your-note" name="fields[strategy]" type="text"></textarea>
                                        </div>
                                    </label> 

                                    <h3 class="title-centre">EXECUTION</h3>
                                    <div class="enter-text-field">
                                          <textarea class="your-note-box-shape" type="text" id="your-note" name="fname"></textarea>
                                    </div>                                    
                                </div>



                                <div id="div5">
                                    <label style="width: 90%;">
                                        <div class="enter-text-field"><h3 class="title-centre">OUCOME</h3>
                                            <textarea class="your-note-box-shape" id="your-note" name="fields[outcome]" type="text"></textarea>
                                        </div>
                                    </label> 

                                    <label style="width: 90%;">
                                        <div class="enter-text-field"><h3 class="title-centre">LESSON LEARNT</h3>
                                            <textarea class="your-note-box-shape" id="your-note" name="fields[lessonlearnt]" type="text"></textarea>
                                        </div>
                                    </label>
                                </div>



                                <div id="div6">
                                    <div class="col-xs-12 each-features">
                                        <h3 class="title-centre">PHOTOS</h3>
                                        <p class="title-centre">drag and drop photos from your project here</p>
                                        <div class="enter-text-field">
                                            <div>
                                              <textarea class="your-note-box-shape" type="text" id="your-note" name="fname"></textarea>
                                            </div>
                                        </div>
                                    </div>  

                                    <div class="col-xs-12 each-features">
                                        <h3 class="title-centre">MARKETING MATERIAL</h3>
                                        <p class="title-centre">upload files</p>
                                        <div class="enter-text-field">
                                            <div>
                                              <textarea class="your-note-box-shape" type="text" id="your-note" name="fname"></textarea>
                                            </div>
                                        </div>
                                    </div>  
                                     <label style="width: 90%;"><p class="title-centre">text</p>
                                        <input name="fields[text]" class="your-note-text-box-shape" type="text" />
                                    </label><br/>
                                    
                                    <label style="width: 90%;"><p class="title-centre">date</p>
                                        <input class="your-note-text-box-shape" name="fields[date]" type="text" />
                                    </label>
                                </div>
                                <input name="action[projectone]" type="submit" value="Submit" />

                            </div> <!-- sliderJquery -->


                            <input name="fields[user]" type="hidden" value="…" />

                            
                            


                        </form>
                    </div>

                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->





</xsl:template>
</xsl:stylesheet>