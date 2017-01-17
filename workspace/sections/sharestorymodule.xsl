<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodule'>
        <div class=" each-item-inner col-sm-10" style="padding: 0px; width: 82%;">
            <div class="content-right content-defult col-sm-3" style="max-width: 20%; overflow: hidden; padding: 0px;">
                
               <img src="{/data/params/workspace}/assets/img/helppic.png" style="width: 100%; height: 2000px; max-height: 171px; border-top-left-radius: 20px; border-bottom-left-radius: 20px;"/>

            </div>
            <div class="content-left col-sm-9" style="width: 78%; padding-top: 50px;">
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
        </div>
    </xsl:template>

</xsl:stylesheet>



<!-- 
    <xsl:for-each select="/data/story/entry[1]"> 
        <xsl:apply-templates select="current()" mode="sharestorymodule"/>
    </xsl:for-each> 
-->