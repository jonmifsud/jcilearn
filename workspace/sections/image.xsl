<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='image']/entry" mode="uploads">
        <xsl:variable name='index' select='position()'/>
        <div class="dz-preview uploading dz-processing dz-image-preview dz-complete">
            <div class="dz-details">
                <img data-dz-thumbnail="" style="width: 120px; height: 120px;">
                    <xsl:attribute name='src'>
                        <xsl:choose>
                            <xsl:when test='image/supported-dimensions/image[@dimension=""]'>
                                <xsl:value-of select='image/supported-dimensions/image[@dimension="180x180"]'/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select='image/supported-dimensions/image[@dimension="50x50"]'/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </img>
                <div class="dz-text-details">
                    <div class="dz-filename">
                        <span data-dz-name=""><xsl:value-of select="description"/></span>
                    </div>
                </div>
            </div>

            <input name='images[{$index}]' type='hidden' value='{@id}'/>

        </div>

    </xsl:template>

    <xsl:template match="*[section/@handle='image']/entry" mode="img-src">
        <xsl:param name='dimension' select='"180x180"'/>
        <xsl:choose>
            <xsl:when test='image/supported-dimensions/image[@dimension=""]'>
                <xsl:value-of select='image/supported-dimensions/image[@dimension=$dimension]'/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select='image/supported-dimensions/image[@dimension="50x50"]'/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*[section/@handle='image']/entry" mode="img">
        <xsl:param name='class' />
        <xsl:param name='dimension' select='"180x180"'/>
        <img class='{$class}'>
            <xsl:attribute name='src'>
                <xsl:apply-templates select='.' mode='img-src'>
                    <xsl:with-param name='dimension' select='$dimension'/>
                </xsl:apply-templates>
            </xsl:attribute>
        </img>
    </xsl:template>


</xsl:stylesheet>