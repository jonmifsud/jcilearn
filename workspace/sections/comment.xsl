<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='comment']//entry" mode='comment'>
        <xsl:if test="position() &lt;=2">
        <div class="each-item" style="max-height: 450px; overflow: hidden;">
            <div class="each-item-inner-lesson">                
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>

                    <div class="media-body">

                        <h3 class="title"><xsl:value-of select="profile/item"/></h3>
                        <p class="pera"><xsl:value-of select="text"/></p>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:if>
    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='commenttwo'>
        <div class="each-item">
            <div class="each-item-inner-lesson">
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='commentthre'>
        <div class="each-item">
            <div class="each-item-inner-lesson">
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>

                <div class="media-body">

                        <h3 class="title"><xsl:value-of select="/data/lesson/entry/profile/item"/></h3>
                        <p class="pera"><xsl:value-of select="/data/comments/entry/text"/></p>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='play'>
        <p class="title"> </p>
    </xsl:template>

</xsl:stylesheet>