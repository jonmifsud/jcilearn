<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:import href="../sections/studyprofile.xsl"/>
<xsl:import href="../sections/notepadmodule.xsl"/>
<xsl:import href="../sections/yournotepad.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">
                    <div class="col-xs-12 each-features" style="padding: 0px;">

                        <div class="wide-wripper">
                            <div class="box-border" style=" width: 80%; padding: 20px; height: 20%; border: 0px">
                                    <img style="width: 30px; height: 30px; margin-top: 50px;" src="{/data/params/workspace}/assets/img/icons/gearimg.png" />
                                    <div class="center" >
                                        <div class="btn-form text-center margin-t-50" style="margin-top: 0px;">
                                            <a href="#" class="btn btn-border text-normal">Save</a>
                                        </div>
                                    </div>
                            </div>

                            <div class="col-md-12 col-sm-12 col-xs-12" style="margin-top: 20px;">
                                <div class="col-md-1" ></div>
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <h3 class="title" style="text-align: left; ">BIO</h3>
                                    <p style="text-align: left; line-height: 0px; font-size: 12px;">a description of yourself in less than 100 characters</p>
                                    <div class="box-border-sharp-edges" style=" width: 100%; padding: 20px; min-height: 140px; height: 80%; margin: 0px;">
                                       <xsl:value-of select="/data/users/entry/your-biography"/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 col-xs-12">
                                    <img style="width: 70%; border: 3px solid #3496DA;; border-radius: 100%;" src="{/data/params/workspace}/assets/img/icons/profile-3.png" />
                                    <div class="box-border btn btn-border" style=" width: 50%; padding: 2%; padding-left: 4%; height: 1%;">
                                        <p style="text-align: left; font-size: 12px;">Chose another image</p>
                                    </div>
                                </div>                                
                            </div>

                            <div class="col-xs-12 col-md-12 col-sm-12">
                                <div class="col-md-2 col-sm-2" ></div>
                                    <div class="col-md-8 col-sm-8">
                                        <div class="box-border" style=" width: 85%; border: 0px; height: 10%; margin-top: 50px; margin-bottom: 50px;">
                                                <h3 class="title">WEEKLY GOAL</h3>                                            
                                                <div class="progress-wrapper-div">
                                                    <div class="progress-div">
                                                    </div>

                                                </div>
                                                50XP
                                        </div>
                                    </div>
                                <div class="col-md-2 col-sm-2" ></div>
                            </div>
                            

                            <div class="col-sm-12 col-xs-12 col-md-12">
                                <div class="col-md-2 col-sm-2" ></div>
                            <div class="col-xs-12 col-sm-8 each-features col-md-8" style="margin-bottom: 0px;">
                                <h3 class="title">INTERESTS</h3>
                                <div class="box-border-text-left col-md-8" style="width: 100%; overflow-y: scroll; min-height: 350px; padding-left: 5%; padding-right: 0px;">
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
                            </div>
                            <div class="col-md-2 col-sm-2" ></div>
                            <br/>
                            </div>                                                            
                        </div>

                        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
                        <p style="padding-top: 80px; text-align: center;">Send me daily reminders</p>
                        <div class="check-box" style="margin-left: 49%;"/>
                    </div>

                         <div class="box-border" style=" width: 70%; padding-left: 20px; height: 20%; border: 0px">
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
