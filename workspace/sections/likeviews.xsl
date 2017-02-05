<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="entry" mode='likeviews'>
        <xsl:param name='class' select='"profile-meta"'/>
        <!-- center-profile-meta -->

        <div class="{$class}">

            <span class="blue-text-in-line js-like-action" data-entry='{@id}' data-field='{like/@field-id}' data-current='{like/@current-member}'>
                <i>
                    <xsl:attribute name='class'>
                        <xsl:text>fa </xsl:text>
                        <xsl:choose>
                            <xsl:when test='like/@current-member = "Yes"'>
                                <xsl:text>fa-heart</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>fa-heart-o</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
                </i>
                <span class='count'>
                    <xsl:value-of select="like/@count"/>
                </span>
            </span>
            
            <span class="blue-text-in-line" id="view">
                <i class="fa fa-man-people-streamline-user">
                    <xsl:attribute name='class'>
                        <xsl:text>fa </xsl:text>
                        <xsl:choose>
                            <xsl:when test='enrolled/@current-member = "Yes" or read/@current-member = "Yes" or completed/@current-member = "Yes"'>
                                <xsl:text>fa-user</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>fa-man-people-streamline-user</xsl:text>
                                <!-- <xsl:text>fa-user-o</xsl:text> -->
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>

                </i>
                <xsl:choose>
                    <xsl:when test='enrolled'>
                        <xsl:value-of select="enrolled/@count"/>
                    </xsl:when>
                    <xsl:when test='read'>
                        <xsl:value-of select="read/@count"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="completed/@count"/>
                    </xsl:otherwise>
                </xsl:choose>
            </span>

        </div>

    </xsl:template>

</xsl:stylesheet>