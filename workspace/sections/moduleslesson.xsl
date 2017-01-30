<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="likeviewsoutput.xsl"/>
<xsl:import href="likeviews.xsl"/>
<xsl:import href="user.xsl"/>

        <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module-item'>

         <div class="each-item col-md-6 col-sm-12 " style=" ">
            <div class=" each-item-inner col-xs-12" style="display: flex; padding-left: 0px; padding-right: 0px; ">
                <div class="content-left col-sm-9" style="padding-top: 20px; padding-bottom: 10px;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                             <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3" style="padding: 0px; padding: 10px;">
                    
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

                    <!-- THIS IS REAL LIKE VIEWS. 
                    <div class="profile-meta">
                        <p class="blue-text-in-line" id="like" data-entry='{@id}'>
                            <i class="fa fa-heart-o"></i>
                            <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                        </p>
                        <span id="likeOutput" value="0" style="font-size: 27px;">0</span><br/>
                        
                        <p class="blue-text-in-line" id="view"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                        <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
                    </div>
                    -->

                </div> <!-- /.content-left -->
            </div>

            <p class="small-text text-center">You're one lesson away from obtaining your Trainer badge!</p>
        </div> <!-- /.each-item -->

    </xsl:template>

</xsl:stylesheet>