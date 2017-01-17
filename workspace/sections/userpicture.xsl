<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='user']//entry" mode='user-picture-country'>
        <xsl:param name='include-name' select='false()'/>

            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-3.png" alt="Media Team Profile Image" style="width: 100px; position: apsolute;"/>
                <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png"  alt="Flag"/>

    </xsl:template>
</xsl:stylesheet>