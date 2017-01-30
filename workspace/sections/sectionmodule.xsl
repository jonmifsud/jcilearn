<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>


<xsl:template match="*[section/@handle='comments']//entry" mode='commento'> 
     <div class="each-item">
        <div class="each-item-inner-lesson">                
            <div class="media">
                    <!--this one gives picture+coutnry to comment -->
                    <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                    </xsl:apply-templates>

                <div class="media-body">

                    <h3 class="title"><xsl:value-of select="/data/comments/entry/author/item"/></h3>
                    <p class="pera"><xsl:value-of select="/data/comments/entry/text"/></p>

                </div> <!-- /.media-body -->
            </div> <!-- /.media -->
        </div>
    </div> <!-- /.each-item -->
</xsl:template>

</xsl:stylesheet>