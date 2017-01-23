<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodulewithlikes'>
       <div class=" each-item-inner col-sm-10" style="padding: 0px; width: 100%; margin-bottom: 30px;">
           
            <div class="content-right col-xs-12 content-defult col-md-2" style=" overflow: hidden; padding: 0px;">
                
               <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 100%; height: 2000px; max-height: 171px; border-top-left-radius: 20px; border-bottom-left-radius: 20px;"/>

            </div>
            
            <div class="content-left col-xs-8 col-md-7" style=" padding-top: 50px;">
                <div class="media">                                                        
                    <div class="media-body">
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="date"/></p>
                    </div> <!-- /.media-body -->
                    <div class="media-left">
                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>   
                    </div> <!-- /.media-left -->
                </div> <!-- /.media -->
            </div> <!-- /.content-right -->

            <div class="content-right content-defult col-md-3 col-xs-4">
                
                <div class="profile-meta" style="margin-left: 0px;">
                    <p><i class="fa fa-man-people-streamline-user"></i>19</p>
                    <p><i class="fa fa-like-love-streamline"></i>8</p>
                </div>

            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>
