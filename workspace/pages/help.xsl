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
                    	<br/><br/><br/>

                    <div class="col-xs-12 each-features text-center">  
                        <div class="section-header relative text-center">
                            <h2 class="section-heading" style="margin-top: 100px;">What can we help you with?</h2>
                            <br/>            
                            <form class="single-form search-form" action="" method="">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for..."/>
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal"> <i class="fa fa-search"></i> </button>

                                         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" >
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content" style=" border: 2px solid #3496DA; width: 100%; margin-top: 30%; width: 150%; margin-left: -25%;">
                                                      <div class="modal-header " style="border: 0px; margin: 10px;">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span aria-hidden="true" style="font-weight: bold;"></span></button>
                                                      </div>

                                                      <!-- <div class="new-class" style=" height: 350px; margin-right: auto; margin-left: auto; text-align: center; "> 
                                                            <div class="box-border" style="width: 300px; height: 60px; padding-top: 0px; ">
                                                                <div class="input-group">
                                                                    <input type="text" class="form-control" placeholder="Search for..."/>
                                                                    <span class="input-group-btn">
                                                                        <button class="btn" type="button"><i class="fa fa-search"></i></button>
                                                                    </span>
                                                                </div>   
                                                            </div><br/><br/>
                                                            <h2 class="section-heading" style="font-size: 20px;">SEARCH RESULTS</h2><br/>
                                                            <div class="padding-wrapper" style="text-align: left; margin-left: 20%;">
                                                                <p style="margin-bottom: 0px;">How do I change my account picture?</p>
                                                                <p class="blue-text">Simply access your Settings page by clicking on the<br/>Settings icon in your User menu (click on your account<br/> picture at the top right of the page).</p>
                                                            </div>

                                                      </div>    -->                                                   
                                                    </div>
                                                </div>
                                            </div>
                                    </span>
                                </div><!-- /.input-group -->
                            </form>
                        </div> <br/><br/>

                        <div class="guide-team">
                            <div class="guide-team-inner">
                              

                                <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-xs-10 col-xs-offset-1">
                                    <div class="row">

                                        <xsl:for-each select='/data/faq/entry[not(preceding-sibling::entry) or category/item/@handle != preceding-sibling::entry[1]/category/item/@handle]'>

                                             <div class="each-item smaller-div">
                                                <div class="each-item-inner no-left-padding" style="width: 100%; padding: 20px; border: 0px;">
                                                    <h3 class="title">
                                                        <xsl:value-of select='category/item'/>
                                                    </h3>
                                                    <xsl:for-each select='/data/faq/entry[category/item/@handle = current()/category/item/@handle]'>
                                                        <div class='faq-item'>
                                                            <div class="question">
                                                                <xsl:apply-templates select='question' mode='html-child'/>
                                                            </div>
                                                            <div class="answer">
                                                                <xsl:apply-templates select='answer' mode='html-child'/>
                                                            </div>
                                                        </div>
                                                    </xsl:for-each>
                                                </div>
                                            </div> <!-- /.each-item -->

                                        </xsl:for-each>
                                        
                                    </div>
                                </div>

                            </div>
                        </div>


                        <div class="btn-form col-xs-12 text-center margin-t-50">
                            <p class="cta-text">Still unsure? Ask your community. </p>
                            <a href="#" class="btn btn-border text-normal">Discuss</a>

                        </div>
                     </div>
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div>
        <!-- End: Features Section 
        =================================-->
</xsl:template>
</xsl:stylesheet>