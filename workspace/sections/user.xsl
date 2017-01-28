<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='user']//entry" mode='user-picture-country'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz-</xsl:variable>
        <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ </xsl:variable>

        <div class="media-left" style="padding-left: 10px; padding-right: 0px;">
            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" style="padding-left: 1px;" alt="Media Team Profile Image"/>
                <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flags/83px/{translate(address/country,$ucletters,$lcletters)}.jpg" alt="Flag"/>
            <xsl:if test='$include-name'>
                <h3 class="title"><xsl:value-of select="name"/></h3>
            </xsl:if>
        </div> 


    </xsl:template>
</xsl:stylesheet>