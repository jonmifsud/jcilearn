<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="user.xsl"/>
<xsl:import href="likeviews.xsl"/>

    <xsl:template match="*[section/@handle='discussion']//entry" mode='discussionlink'>

            <div class="each-item" >
                <div class="each-item-inner-lesson" style="width: 70%; display: inline-block;">
                    <div class="media">
                            <div class="media-left">
                                <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png"  alt="Media Team Profile Image"/>
                                <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                            </div> <!-- /.media-left -->
                            <div class="media-body" style="text-align: left;" >
                                <h3 class="title"><xsl:value-of select="profile/item" /></h3>
                                <p class="pera" style="margin: 0px;"><xsl:value-of select="title" /></p>
                                <b style="color: #3496DA;"> ACCOUNT </b>
                            </div> <!-- /.media-body -->
                    </div> <!-- /.media -->
                </div>
                <div class="box-border" style="width: 20%; height: 120px; display: inline-block; padding: 0px; border: 0px;">
                    <div class="profile-meta">
                        <xsl:apply-templates select="/data/discussion/entry[1]" mode="likeviews"/>
                    </div>
                </div>
            </div> <!-- /.each-item -->

    </xsl:template>
</xsl:stylesheet>