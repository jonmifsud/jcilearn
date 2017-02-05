<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

    <xsl:template match="*[section/@handle='challenge']//entry" mode='challengemodule'>

        <div class="each-item">
            <div class="each-item-inner">
                <div class="content-left col-md-9 col-sm-7" style="padding-top: 21px; padding-left: 21px;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3">
                    
                    <xsl:apply-templates select='.' mode='likeviews'/>

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:template>

    <xsl:template  match="*[section/@handle='challenge']//entry" mode='currentchallengemodule'>
        <div class="item" style="padding: 0px;">    
            <div class="modules" style="height: 100%;">
                <div class="modules-inner" style="padding: 0px !important; border: 0px; margin-right: 10px;">
                            
                   

                     <div class="guide-team-content">
                        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                            <div class="each-item-inner" style="display: flex;">
                                <div class="content-right col-md-4 col-sm-5" style="width: 20%;  background-color: #3489DA; border-top-left-radius: 20px; border-bottom-left-radius: 20px; margin-left: -3px;">
                               
                                <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                                    
                                </div> <!-- /.content-left -->
                                <div class="content-left col-md-8 col-sm-7" style="width: 80%; background-color: white;">

                                    <div class="media">
                                        <div class="media-left">

                                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                                        
                                        </div> <!-- /.media-left -->
                                        <div class="media-body">

                                            <h3 class="title" style="margin-top: 20px;"><xsl:value-of select="title" /> </h3>
                                            <p class="pera"> <xsl:value-of select="subtitle" /> </p>

                                        </div> <!-- /.media-body -->
                                    </div> <!-- /.media -->

                                </div> <!-- /.content-right -->
                                
                            </div>
                            <p class="small-text"><xsl:value-of select="user/item" /> recently enrolled form this module.</p>
                        </div>  
                    </div>

                     <div class="guide-team-content">
                        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                            <div class="each-item-inner" style="display: flex;">
                                <div class="content-right col-md-4 col-sm-5" style="width: 20%;  background-color: #3489DA; border-top-left-radius: 20px; border-bottom-left-radius: 20px; margin-left: -3px;">
                               
                                <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                                    
                                </div> <!-- /.content-left -->
                                <div class="content-left col-md-8 col-sm-7" style="width: 80%; background-color: white;">

                                    <div class="media">
                                        <div class="media-left">

                                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                                        
                                        </div> <!-- /.media-left -->
                                        <div class="media-body">

                                            <h3 class="title" style="margin-top: 20px;"><xsl:value-of select="title" /> </h3>
                                            <p class="pera"> <xsl:value-of select="subtitle" /> </p>

                                        </div> <!-- /.media-body -->
                                    </div> <!-- /.media -->

                                </div> <!-- /.content-right -->
                                
                            </div>
                            <p class="small-text"><xsl:value-of select="user/item" /> recently enrolled form this module.</p>
                        </div>  
                    </div>

                </div>                                        
            </div>
        </div> <!-- /.item -->
    </xsl:template>

</xsl:stylesheet>