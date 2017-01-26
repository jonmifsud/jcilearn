<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template  match="*[section/@handle='story']//entry" mode='explorestoriestwoslidermodule'>
        <div class="item" style="padding: 0px;">    
            <div class="modules" style="height: 100%;">
                <div class="modules-inner" style="padding: 0px; border: 0px; margin-right: 10px;">
                            
                    <div class="guide-team-content">
                        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                            <div class="each-item-inner">
                                

                                    <div class="media" style="margin: 30px; margin-top: 10px;">
                                        
                                        <div class="media-body">

                                            <h3 class="title" style=" text-transform: uppercase; margin-top: 20px;"><xsl:value-of select="title" /> </h3>
                                            <p class="pera "> <xsl:value-of select="subtitle" /> </p>

                                        </div> <!-- /.media-body -->
                                        <div class="media-left">

                                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                                        
                                        </div> <!-- /.media-left -->
                                    </div> <!-- /.media -->

                                
                            </div>
                            <p class="small-text"><xsl:value-of select="user/item" /> recently enrolled form this module.</p>
                        </div>  
                    </div>

                    <div class="guide-team-content">
                        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                            <div class="each-item-inner">


                                    <div class="media" style="margin: 30px;">
                                       
                                        <div class="media-body">

                                            <h3 class="title" style="margin-top: 20px;  text-transform: uppercase;"><xsl:value-of select="title" /> </h3>
                                            <p class="pera"> <xsl:value-of select="subtitle" /> </p>

                                        </div> <!-- /.media-body -->
                                         <div class="media-left">

                                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                                        
                                        </div> <!-- /.media-left -->
                                    </div> <!-- /.media -->

         
                                
                            </div>
                            <p class="small-text"><xsl:value-of select="user/item" /> recently enrolled form this module.</p>
                        </div>  
                    </div>

                </div>                                        
            </div>
        </div> <!-- /.item -->
    </xsl:template>

</xsl:stylesheet>