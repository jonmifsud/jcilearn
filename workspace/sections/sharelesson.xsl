<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='lesson']//entry" mode='sharelesson'>
        <div class=" each-item-inner col-md-12">
            <div class="content-left col-sm-12" style="width: 78%; padding-top: 50px;">

                <div class="media">
                    <div class="media-left">

                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-4.png" alt="Media Team Image"/>
                    
                    </div> <!-- /.media-left -->
                    <div class="media-body" style="margin-top: -10px;">

                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="subtitle"/></p>

                    </div> <!-- /.media-body -->
                    
                </div> <!-- /.media -->

            </div> <!-- /.content-right -->
        </div>
    </xsl:template>

</xsl:stylesheet>