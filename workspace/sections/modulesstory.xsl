<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:import href="../sections/user.xsl"/>
    <xsl:import href="../sections/likeviewsoutput.xsl"/>

    <xsl:template match="*[section/@handle='story']//entry" mode='story-module-item'>

        <div class="each-item col-sm-10">
            <div class=" each-item-inner">
                <div class="content-right content-defult col-sm-3" style="max-width: 20%; overflow: hidden; padding: 0px;">
                    
                   <img class="media-object features-image" src="{/data/params/workspace}/assets/img/helppic.png" alt="Media Team Image" style="max-width: 100%; height: 200px; max-height: 200px; border-top-left-radius: 20px; border-bottom-left-radius: 20px;"/>

                </div>
                <div class="content-left col-sm-9" style="width: 60%; padding-top: 50px;">

                    <div class="media">
                        
                        <div class="media-body">

                             <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                        <div class="media-left">

                             <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3" style="width: 15%;">
                    
                    <div class="profile-meta">
                        <p class="blue-text-in-line" id="like"><i class="fa fa-heart-o"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                        <span id="likeOutput" value="0" style="font-size: 27px;">0</span>
                        
                        <p class="blue-text-in-line" id="view"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                        <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
                    </div>

                </div> <!-- /.content-left -->
            </div>    
        </div>

    </xsl:template>

</xsl:stylesheet>