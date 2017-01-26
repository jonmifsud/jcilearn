<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodule'>
        <div class=" each-item-inner col-sm-10" style="width: 100% !important; padding: 0px;">
           
            <div class="content-right col-xs-12 content-defult col-sm-3" style=" overflow: hidden; padding: 0px;">
                
               <img src="{/data/params/workspace}/assets/img/helppic.png" class="border-radius-shape"/>

            </div>
            
            <div class="content-left col-xs-12 col-sm-9" style=" padding-top: 20px; padding-bottom: 20px;">
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