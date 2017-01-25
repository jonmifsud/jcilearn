<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>

        <xsl:template match="*[section/@handle='project']//entry" mode='project-module-item'>

         <div class="box-border" style="width: 100%; height: 400px; padding: 0px; overflow: hidden;">
            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title" /></h3><xsl:value-of select="date" />
                </div>
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>