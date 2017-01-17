<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/sectionmodule.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>
<xsl:import href="../sections/modulesstory.xsl"/>
<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>
<xsl:import href="../sections/usercontentmodule.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">
                    <div class="col-xs-12 each-features">
                        <div class="wide-wripper">
                            <div class="box-border" style=" width: 70%; padding: 20px; height: 20%; border: 0px">
                                    <img style="width: 30px; height: 30px; margin-top: 50px;" src="{/data/params/workspace}/assets/img/icons/gearimg.png" />
                                    <div class="center" >
                                        <div class="btn-form text-center margin-t-50" style="margin-top: 0px;">
                                            <a href="#" class="btn btn-border text-normal">Save</a>
                                        </div>
                                    </div>
                            </div>

                            <div class="box-border" style=" width: 90%; padding: 20px; height: 20%; border: 0px;">
                                <div class="box-border" style=" width: 60%; margin-bottom: 100px; padding: 20px; height: 20%; border: 0px;">
                                    <p class="title" style="text-align: left; margin-left: 15%;">BIO</p>
                                    <p style="text-align: left; margin-left: 15%; font-size: 15px;">short description</p>
                                    <div class="box-border-sharp-edges" style=" width: 70%; padding: 20px; height: 80%;">
                                       <xsl:value-of select="/data/users/entry/your-biography"/>
                                    </div>
                                </div>
                                <div class="box-border" style=" width: 35%; padding: 20px; border: 0px;">
                                        <img style="width: 90%; border: 3px solid #3496DA;; border-radius: 100%;" src="{/data/params/workspace}/assets/img/icons/profile-3.png" />
                                        <div class="box-border" style=" width: 70%; padding: 3%; height: 10%; padding-bottom: 10%;"><xsl:value-of select="/data/users/entry/short-text"/>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="box-border" style=" border: 0px; height: 10%;">
                                    <p class="title"> WEEKLY GOAL </p>
                                
                                    <div class="progress-wrapper-div">
                                        <div class="progress-div"/>
                                    </div>
                                    50XP
                            </div><br/><br/>
                                <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                                    <h3 class="title">INTERESTS</h3><br/>
                                    <div class="box-border-text-left" style="width: 65%; overflow-y: scroll; min-height: 350px; padding-left: 5%; padding-right: 0px;">
                                        <div class="box-poligon" style="width: 31%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>
                                         <div class="box-poligon" style="width: 30%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>
                                         <div class="box-poligon" style="width: 30%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>
                                         <div class="box-poligon" style="width: 30%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>
                                        <div class="box-poligon" style="width: 30%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-4.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>
                                         <div class="box-poligon" style="width: 30%; ">
                                            <div class="box-poligon" style="width: 80%; ">
                                                <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
                                            </div>
                                             <div class="check-box" style="margin-left: 30%;">
                                            </div>
                                        </div>                    
                                    </div>
                                </div><br/>                                
                        </div>

                         <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <p style="padding-top: 40px;">Send me daily reminders</p>
                        <br/>
                        <div class="check-box" style="margin-left: 49%;"/>
                    </div>

                         <div class="box-border" style=" width: 70%; padding: 20px; height: 20%; border: 0px">
                            <br/><br/>
                            <div class="center">
                                <div class="btn-form text-center margin-t-50" style="margin-top: 0px;">
                                    <a href="#" class="btn btn-border text-normal">Save</a>
                                </div>
                            </div>
                        </div>


                    </div> <!-- /.each-features -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>

</xsl:stylesheet>
