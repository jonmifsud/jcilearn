<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/user.xsl"/>

    <xsl:template match="*[section/@handle='note']//entry" mode='youtnotepad'>
        <div class="each-item" style="text-align: left;">
            <div class="each-item-inner" >            
                <div class="media">
                    <p style="text-align: left;"><xsl:value-of select="text"/></p>
                      from <xsl:value-of select="author"/>'s lesson 'some are born leader'.
                    <p></p>
                </div> <!-- /.media -->
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>