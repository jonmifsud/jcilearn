<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/modules.xsl"/>

    <xsl:template match="/data">
            <!-- Start: Features Section 
            =================================-->
            <div class="features-section">
                <div class="container">
                    <div class="row features-item section-separator">

                        <xsl:call-template name="learn-subheader"/>  

		                    <div class="col-xs-12 each-features">
		                        <h2 class="section-heading" style="margin-bottom: 6%;">Good morning, <xsl:value-of select="/data/note/entry/author"/>!</h2>

		                        <div class="col-md-6 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
			                       <div class="box-border-text-left" style="padding-left: 70px;">
			                            <h3 class="title"> YOUR NOTEPAD</h3><br/>
			                            <p>"Leadership is not about strenght or size, unelss the strength and size in question are those of heart""</p>
			                            <p style="text-align: left;"><xsl:value-of select="/data/note/entry/text"/></p>
						                      from <xsl:value-of select="/data/note/entry/author"/>'s lesson 'some are born leader'.
						                    <p></p>
			                            
			                            <div class="button-wraper">
				                            <a href="notepad.html" class="btn btn-border">Go to Notepad <b><i class="fa fa-angle-right" style="tex-size: 25px;" aria-hidden="true"></i></b></a>
				                        </div>
			                        </div>
		                        </div>
		                         <div class="col-md-6 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
		                           	<div class="box-border-text-left" style="height: 380px; padding-left: 70px;">
			                            <h3 class="title">NOTIFICATIONS</h3><br/>
			                        <div style="overflow-y: scroll; height: 350px;">
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
		                        </div>
		                        
		                        <div class="col-md-7 col-xs-12" style="border: 0px; height: 10%; margin-bottom: 30px;">
			                       <div class="box-border-text-left" style="height: 380px; padding-left: 70px;">
			                            <h3 class="title"> RECENT ACTIVITY<br/>IN YOUR NETWORK</h3>
			                        <div style="overflow-y: scroll; height: 350px;">
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera"  style="margin-right: 20px;">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera" style="margin-right: 20px;">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera" style="margin-right: 20px;">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera" style="margin-right: 20px;">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                            <div class="box-poligon" style="width: 100%; ">
			                                <div class="box-poligon" style="width: 20%; ">
			                                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" />
			                                </div>
			                                <div class="box-poligon" style="width: 75%;">
			                                    <p class="pera" style="margin-right: 20px;">James published his tory: Leading JCI in one of the smallest countries in the world.</p>
			                                </div>
			                            </div>
			                        </div>
			                        </div>
		                        </div>
		                        <div class="col-md-5 col-xs-12" style="border: 0px; height: 10%;">
		                           	<div class="box-border-text-left" style="height: 380px; padding-left: 70px;">
			                            <h3 class="title"> LEADERSHIP </h3><br/>
			                        <div style="overflow-y: scroll; height: 350px;">
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
		                            <div class="col-md-1 col-md-3"></div>
		                            <div class="col-md-10 col-sm-6">
		                            	
		                            <xsl:apply-templates select="/data/my-lessons/entry[status/item/@handle='published']" mode="modules"/>
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