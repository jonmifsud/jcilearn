<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='roles']//entry" mode='option'>
        <xsl:param name='class'/>
        <xsl:param name='name' select='"interest"'/>
        <xsl:param name='type' select='"checkbox"'/>
        <xsl:param name='checked' select='false()'/>

        <input type="{$type}" id="{$name}-{@id}" name="{$name}[]">
            <xsl:if test='$checked'>
                <xsl:attribute name='checked'>checked</xsl:attribute>
            </xsl:if>
        </input>
        <label class="select-check-box {$class}" for="{$name}-{@id}">
            <img style="width: 100px;">
              <xsl:attribute name='src'>
                <xsl:apply-templates select='.' mode='icon-url'/>
              </xsl:attribute>
            </img>
            <p class="blue-text">
              <xsl:value-of select='name[@mode="formatted"]'/>
            </p>
            <div class="check-box" style="margin: auto;float:none;"></div>
        </label>


    </xsl:template>

    <xsl:template match="*[section/@handle='roles']//entry" mode='icon-url'>
        <xsl:param name='dimension' select='"cropped"'/>

        <xsl:choose>
            <xsl:when test="icon/supported-dimensions/image[@dimension=$dimension]">
                <xsl:value-of select="icon/supported-dimensions/image[@dimension=$dimension]"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select='/data/params/workspace'/>
                <xsl:text>/assets/img/icons/icon-3.png</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

</xsl:stylesheet>