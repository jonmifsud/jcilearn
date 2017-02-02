<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='project']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/project/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='edit-link'>
        
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/share/project/edit-project/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='projectmodule'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

        <a class="box-border" style="width: 90%; height: 400px; padding: 0px; overflow: hidden;">
            <xsl:attribute name='href'>
                <xsl:choose>
                    <xsl:when test='$no-link'>
                    </xsl:when>
                    <xsl:when test='$edit-link'>
                        <xsl:apply-templates select='.' mode='edit-link'/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select='.' mode='link'/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>               

            <img  src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title" /></h3><xsl:value-of select="date" />
                </div>
            </div>
        </a>
    </xsl:template>

    <xsl:template  match="*[section/@handle='project']//entry" mode='exploreprojectsmodule'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>
        <a class="box-border" style="width: 95%; height: 400px; padding: 0px; overflow: hidden;">
            <xsl:attribute name='href'>
                <xsl:choose>
                    <xsl:when test='$no-link'>
                    </xsl:when>
                    <xsl:when test='$edit-link'>
                        <xsl:apply-templates select='.' mode='edit-link'/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select='.' mode='link'/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>              
            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title"/></h3><xsl:value-of select="date"/>
                </div>
            </div>
        </a>
    </xsl:template>

    <xsl:template match="*[section/@handle='project']//entry" mode='project-module-item'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>
        
        <a class="box-border" style="width: 100%; height: 400px; padding: 0px; overflow: hidden;">
            <xsl:attribute name='href'>
                <xsl:choose>
                    <xsl:when test='$no-link'>
                    </xsl:when>
                    <xsl:when test='$edit-link'>
                        <xsl:apply-templates select='.' mode='edit-link'/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:apply-templates select='.' mode='link'/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:attribute>               

            <img src="{/data/params/workspace}/assets/img/helppic.png" style="margin: 0px; width: 100%; height: 64%; border-bottom: 2px solid #3496DA;"/>
            <div class="box-poligon" style="width: 100%; height: 36%; margin: 0px;">
                <div class="box-poligon" style="width: 30%; margin: 0px;">
                    <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                </div>
                <div class="box-poligon" style="width: 60%; margin: 0px; text-align: left;">
                    <h3 style="line-height: 100%; text-align: left;"><xsl:value-of select="title" /></h3><xsl:value-of select="date" />
                </div>
            </div>
        </a>

    </xsl:template>

</xsl:stylesheet>