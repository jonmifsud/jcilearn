<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/likeviewsoutput.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../sections/user.xsl"/>

        <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module-item'>

         <div class="each-item col-md-6 col-sm-12 " style="min-height: 250px;">
            <div class=" each-item-inner col-xs-12" style="min-height: 180px;">
                <div class="content-left col-sm-9">

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
                <div class="content-right content-defult col-sm-3">
                    
                    <div class="profile-meta" style="margin-left: 0px;">
                        <p><i class="fa fa-man-people-streamline-user"></i>19</p>
                        <p><i class="fa fa-like-love-streamline"></i>8</p>
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