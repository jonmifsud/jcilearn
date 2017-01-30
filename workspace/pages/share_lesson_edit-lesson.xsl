<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
	    <div class="features-section">
	        <div class="container">
	            <div class="row features-item section-separator">

                    <xsl:call-template name="learnfilesubheader"/>


                    <h2 class="text-center">NEW LESSON</h2>
                    <div class="col-xs-12 col-md-8 col-md-offset-2">
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


                    <div class="col-xs-12">
                        <div class="study-timeline-progress" style="margin-top: 80px;">
                            <div id="LessonEditStep1" class="study-timeline-progress-circles" style="margin-left: 25%;">
                                1
                            </div> 
                            <div id="LessonEditStep2" class="study-timeline-progress-circles" style="margin-left: 50%;">
                                2
                            </div>
                            <div id="LessonEditStep3" class="study-timeline-progress-circles" style="margin-left: 75%;">
                                3
                            </div>
                        </div>
                    </div>

                    <div class="col-xs-12 col-md-8 col-md-offset-2" style="margin-top: 100px;">
                        <!-- form here -->
                        <xsl:apply-templates select='/data/my-lessons/entry' mode='lesson-form'>
                        </xsl:apply-templates>
                        <xsl:if test='not(/data/my-lessons/entry)'>
                            <xsl:call-template name='lesson-form'/>
                        </xsl:if>
                    </div>  
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>