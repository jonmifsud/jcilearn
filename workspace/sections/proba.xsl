<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='user']//entry" mode='proba-mode'>

        <div class="media-left">
            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" alt="Media Team Profile Image"/>
                <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
        </div> 


    </xsl:template>
</xsl:stylesheet>