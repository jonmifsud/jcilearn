<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>

     <xsl:template match="*[section/@handle='lesson']//entry" mode='studylesson'>

        <div class="each-item div-max-size col-xs-12" style="margin-left: auto; margin-right: auto; text-align: center;">
            <div class="each-item-inner" style="margin-left: -5px; margin-right: -5px;">
                <div class="content-left col-md-8 col-sm-7" style="padding-top: 4%; padding-left: 4%;">

                    <div class="media">
                        <div class="media-left" style="padding-right: 0px; ">

                            <img class="media-object features-image" style="width: 50px; padding-top: 10px;" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>    
                                                
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right col-md-4 col-sm-5 no-bottom-padding" style="padding-left: 0px; padding-bottom: 20px; padding-right: 0px;">
                    
                    <div class="media">
                        <div class="media-left no-padding-right" style="padding-right: 0px;">

                             <xsl:apply-templates select='current()' mode='author-picture'/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="/data/users/entry[@id = current()/profile/item/@id]/name"/></h3>
                            <div class="profile-meta" style="margin-top: 0px;">

                                <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                                    <i class="fa fa-heart-o"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="likeOutput" value="0" style="font-size: 18px;">0</span>
                                
                                <span class="blue-text-in-line" id="view">
                                    <i class="fa fa-man-people-streamline-user"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="viewOutput" value="0" style="font-size: 18px;">0</span>       
                            </div>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-left -->
            </div>
        </div> 

    </xsl:template>

</xsl:stylesheet>