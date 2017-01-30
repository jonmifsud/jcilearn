<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

    <xsl:template match="*[section/@handle='challenge']//entry" mode='challengemodule'>

        <div class="each-item">
            <div class="each-item-inner">
                <div class="content-left col-md-9 col-sm-7" style="padding-top: 21px; padding-left: 21px;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3">
                    
                    <div class="profile-meta" style="margin-top: 0px;">

                        <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                            <i class="fa fa-heart-o"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </span>

                        <span id="likeOutput" value="0" style="font-size: 18px;">0</span>
                        <br/>
                        <span class="blue-text-in-line" id="view">
                            <i class="fa fa-man-people-streamline-user"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </span>

                        <span id="viewOutput" value="0" style="font-size: 18px;">0</span>       
                    </div>

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:template>

</xsl:stylesheet>