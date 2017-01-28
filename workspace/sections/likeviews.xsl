<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="//entry" mode='likeviews'>
        <div class="center-profile-meta" style="margin-bottom: 0px; margin-top: 0px;">     


            <div class="like-views-div">
                <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                    <i class="fa fa-heart-o"></i>
                    <xsl:value-of select="/data/challenge/entry/item"/>
                </span>
            </div>

            <div class="like-views-div">
                <span id="likeOutput" value="0" style="font-size: 27px;">0</span>
            </div>
            <div class="like-views-div">
                <span class="blue-text-in-line" id="view">
                    <i class="fa fa-man-people-streamline-user"></i>
                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                </span>
            </div>
            <div class="like-views-div">
                <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
            </div>
           
        </div>
    </xsl:template>

</xsl:stylesheet>