<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='challenge']//entry" mode='challengemodule'>

        <div class="each-item">
            <div class="each-item-inner">
                <div class="content-left col-md-9 col-sm-7" style="padding-top: 21px; padding-left: 21px;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" style="width: 50px;" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
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

</xsl:stylesheet>