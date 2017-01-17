<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='lesson']//entry" mode='modules'>
        <div class="item">    
            <div class="modules">
                <div class="modules-inner">
                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Modules Image" class="img-responsive"/>
                    <h3 class="title"><xsl:value-of select="title"/></h3>
                </div>
                <p class="small-text"><xsl:value-of select="subtitle"/></p>
            </div>
        </div> <!-- /.item -->
    </xsl:template>
</xsl:stylesheet>