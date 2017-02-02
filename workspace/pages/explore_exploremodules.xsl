<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator" style="padding-bottom: 10px;">

                        <xsl:call-template name="learnfileheader"/>  

                    <div class="col-xs-12 each-features text-center">
                        
                        <form class="form-inline single-form">
                            <label class="form-title">find by: </label>
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan">
                                        <option value="subject1">Interest</option>
                                        <option value="BusinessConsulting">Business consulting</option>
                                        <option value="TextConsulting">Text consulting</option>
                                        <option value="Advisory">Advisory</option>
                                        <option value="Audit-$-assurance">Audit &amp; assurance</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group input-outer">
                                <div class="select-outer">
                                    <select class="form-control contact-plan">
                                        <option value="subject1"> Level</option>
                                        <option value="BusinessConsulting">consulting</option>
                                        <option value="TextConsulting">Text</option>
                                        <option value="Advisory">Advisory</option>
                                        <option value="Audit-$-assurance">Audit</option>
                                    </select>
                                </div>
                            </div>
                        </form>

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 20px;">


                        <div class="modules-slider">
                            <div class="modules-slider-wrapper three-slides owl-carousel">
                                <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='published']" mode="modules"/>
                            </div> <!-- /.modules-slider-wrapper -->
                        </div> <!-- /.modules-slider -->

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features text-center" style="margin-bottom: 80px;">
                        
                        <form class="single-form search-form" action="" method="">
                            <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                                
                                <h3 style="font-size: 30px; line-height: 110%;" class="title">
                                    <div class="input-group">
                                        <input type="text" class="form-control" style="margin-top: -20px; padding: 0px;" placeholder="Search for..."/>
                                        <span class="input-group-btn">
                                            <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div><!-- /.input-group -->
                                </h3>                                                
                            </button><!-- Modal -->

                                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 80%; width: 150%; margin-left: -25%;">
                                            <div class="modal-header " style="border: 0px; margin: 10px;">
                                                 <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                                        
                                            </div>
                                            <div class="new-class" style=" height: 800px; margin-right: auto; margin-left: auto; text-align: center; ">
                                                <div class="box-border" style="width: 300px; height: 60px; padding-top: 10px; ">
                                                    <form class="single-form search-form" action="" method="">
                                                        <div class="input-group" >
                                                            <input type="text" class="form-control" placeholder="Search for..." style="border: 0px;"/>
                                                            <span class="input-group-btn">
                                                                <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                                            </span>
                                                        </div><!-- /.input-group -->
                                                    </form>
                                                </div>
                                                <br/><br/>
                                                <p class="blue-text"><b>SEARCH RESULTS</b></p>
                                                <div class="box-border" style="width: 100%; height: 280px; padding: 0px; border: 0px;">
                                                    <div class="box-border" style="width: 30%;  height: 250px; ">
                                                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 60%; margin-top: 10px;"/>
                                                        <p class="title"><xsl:value-of select="/data/lesson/entry/title"/></p>
                                                    </div>
                                                    <div class="box-border" style="width: 30%; height: 250px; "> 
                                                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 60%; margin-top: 10px;"/>
                                                        <p class="title"><xsl:value-of select="/data/lesson/entry[2]/title"/></p>
                                                    </div>
                                                </div>
                                                <div class="box-border" style="width: 100%; height: 350px; border:0px; padding: 0px;">
                                                    <div class="box-border" style="width: 50%; height: 150px; padding: 0px;">
                                                        <div class="box-border" style="width: 70%; border: 0px;">
                                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 20%; height: 20%; float: left;"/>
                                                            <p class="title"> some text </p> regular text
                                                        </div>
                                                        <div class="box-border" style="width: 20%; padding: 0px; padding-top: 00px; border: 0px;">
                                                            <div class="profile-meta">
                                                                <p>
                                                                <i class="fa fa-man-people-streamline-user"></i>83
                                                                </p>
                                                                <p>
                                                                <i class="fa fa-like-love-streamline"></i>17
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="box-border" style="width: 50%; height: 150px; padding: 0px;">
                                                        <div class="box-border" style="width: 70%; border: 0px;">
                                                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" style="width: 20%; height: 20%; float: left;"/>
                                                            <p class="title"> some text </p> regular text
                                                        </div>
                                                        <div class="box-border" style="width: 20%; padding: 0px; padding-top: 00px; border: 0px;">
                                                            <div class="profile-meta">
                                                                <p>
                                                                <i class="fa fa-man-people-streamline-user"></i>83
                                                                </p>
                                                                <p>
                                                                <i class="fa fa-like-love-streamline"></i>17
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                                              
                                            </div>                                                      
                                        </div>
                                    </div> <!-- modal dialog -->
                                </div><!-- modal fade -->
                        </form>

                    </div> <!-- /.each-features -->

                    <div class="col-xs-12 each-features">

                        <div class="row guide-team">
                            <div class="guide-team-inner">
                                
                                <!-- Start: Section Header -->
                                <div class="section-header relative text-center col-xs-12" >
                                
                                    <p class="sub-heading">If you’re looking for something lighter ...</p>
                                    
                                </div> 
                                <!-- End: Section Header -->

                                <div class="guide-team-content col-xs-12">
                                    <div class="row">
                                        
                                        <xsl:apply-templates select="/data/lesson/entry[position() &lt;=4]" mode="lesson-module-item"/>

                                    </div>
                                </div>

                            </div> <!-- /.guide-team-outer -->
                        </div> <!-- /.guide-team -->

                    </div> <!-- /.each-features -->

                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
 <!-- End: Features Section 
            =================================-->
    </xsl:template>

</xsl:stylesheet>