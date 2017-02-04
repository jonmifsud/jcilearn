<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='modules']//entry" mode='link'>
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/module/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>


    <xsl:template match="*[section/@handle='modules']//entry" mode='modules'>
        <div class="item">    
            <a class="modules square" >
                <xsl:attribute name='href'>
                    <xsl:apply-templates select='.' mode='link'/>
                </xsl:attribute>
                <div class="modules-inner square-content">
                    <div class='square-center'>
                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Modules Image" class="img-responsive" />
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                    </div>
                </div>
                <!-- TODO
                    <p>
                        recent activity in this module 
                    </p>
                -->
            </a>
        </div> <!-- /.item -->
    </xsl:template>
</xsl:stylesheet>