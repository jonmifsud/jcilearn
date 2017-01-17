<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="//entry" mode='likeviews'>
        <div class="center-profile-meta" style="margin-bottom: 30px; margin-top: 40px;">
        	<p class="blue-text-in-line" id="like" data-entry='{@id}'>
        		<i class="fa fa-heart-o"></i>
        		<xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
        	</p>
            <span id="likeOutput" data-value="0" style="font-size: 27px;">0</span>
            
            <p class="blue-text-in-line" id="view">
            	<i class="fa fa-man-people-streamline-user"></i>
            	<xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
            </p>
            <span id="viewOutput" data-value="0" style="font-size: 27px;">0</span>
            
            <br/>
        </div>
    </xsl:template>

</xsl:stylesheet>