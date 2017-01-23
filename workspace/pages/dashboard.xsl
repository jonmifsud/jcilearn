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
<xsl:import href="../sections/lessonmoduleimage.xsl"/>
<xsl:import href="../sections/modules.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learnfilesubheader"/>  

		                    <div class="col-xs-12 each-features">
		                        <h2 class="section-heading" style="margin-bottom: 6%;">Good morning, Nathan!</h2>

		                        <div class="col-md-6 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
			                       <div class="box-border-text-left" style="padding-left: 90px;">
			                            <h3 class="title"> YOUR NOTEPAD</h3><br/>
			                            <p>"Leadership is not about strenght or size, unelss the strength and size in question are those of heart""</p>
			                            <p class="pera">Some thext that I can not see clear I'll fix it.</p>
			                            
			                            <div class="button-wraper">
				                            <a href="notepad.html" class="btn btn-border">Go to Notepad ><b>&gt;</b></a>
				                        </div>
			                        </div>
		                        </div>
		                        <div class="col-md-6 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
		                           	<div class="box-border-text-left" style="overflow-y: scroll; height: 380px; padding-left: 90px;">
			                            <h3 class="title">NOTIFICATIONS</h3><br/>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 60%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                             <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 60%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                             <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 60%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>			                             
			                        </div>
		                        </div>
		                        
		                        <div class="col-md-7 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
			                       <div class="box-border-text-left" style=" overflow-y: scroll; height: 380px; padding-left: 90px;">
			                            <h3 class="title"> RECENT ACTIVITY<br/>IN YOUR NETWORK</h3><br/>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>

			                        </div>
		                        </div>
		                        <div class="col-md-5 col-xs-12" style="border: 0px; height: 10%;">
		                           	<div class="box-border-text-left" style="overflow-y: scroll; height: 380px; padding-left: 90px;">
			                            <h3 class="title"> LEADERSHIP </h3><br/>
			                            <div class="box-poligon" style="width: 100%; ">
			                            1
			                                <div class="box-poligon" style="width: 20%; ">                                
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 50%;">
			                                    <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
			                                    <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
			                                </div>
			                            </div>
			                           <div class="box-poligon" style="width: 100%; ">
			                            2
			                                <div class="box-poligon" style="width: 20%; ">                                
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 50%;">
			                                    <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
			                                    <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                            3
			                                <div class="box-poligon" style="width: 20%; ">                                
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 50%;">
			                                    <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
			                                    <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                            4
			                                <div class="box-poligon" style="width: 20%; ">                                
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 50%;">
			                                    <span style="color: #f37121;font-weight:bold; float: left; font-size: 20px">580XP</span>
			                                    <span style="color: #3496DA; size: 15px; font-weight: bold;"><br/>50XP</span>
			                                </div>
			                            </div>
			                        </div>
		                        </div>
		                    </div> <!-- /.each-features -->

		                     <!-- /.each-features -->

		                    <div class="col-xs-12 each-features" >
		                        <div class="col-md-1"></div>
		                        <div class="col-md-5" style="border: 0px; height: 10%;">
			                        <div class="box-poligon">
		                                <h3> LEARN </h3>
		                                <p class="blue-text"> Continue progressing in your current</p><br/>
		                            </div>
		                            <div class="col-md-1"></div>
		                            <div class="col-md-10">
		                            <xsl:apply-templates select="/data/lesson/entry[1]" mode="modules"/>
		                        	</div>
                                </div>
                                <div class="col-md-5" style="border: 0px; height: 10%;">
                                   	<div class="box-poligon">
		                                <h3> SHARE </h3>
		                                <p class="blue-text"> Continue progressing in your </p><br/>
		                            </div>
		                            <div class="box-border-text-left" style="width: 100%; min-height: 150px; height: 150px; padding: 0px; padding-left: 10px; margin-bottom: 40px">
	                                    <div class="box-poligon" style="width: 100%; ">
	                                        <div class="box-poligon" style="width: 20%; ">
	                                            <img  src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
	                                        </div>
	                                        <div class="box-poligon" style="width: 60%;">
	                                        <h3> SHARE the WORLD AS WE KNOW IT.</h3>
	                                            <p class="pera">James published his</p>
	                                        </div>
	                                    </div>
	                                </div>	                           
		                            <xsl:apply-templates select="/data/lesson/entry[1]" mode="lessonmoduleimage"/>
                                </div>
                                <div class="col-md-1"></div>
		                    </div> <!-- /.each-features -->
                    
	                </div> <!-- /.row -->
	            </div> <!-- /.container -->
	        </div>
        <!-- End: Features Section 
        =================================-->

</xsl:template>
</xsl:stylesheet>