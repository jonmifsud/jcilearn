<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>

     <xsl:template match="*[section/@handle='lesson']//entry" mode='studylesson'>

        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 70%;">
            <div class="each-item-inner">
                <div class="content-left col-md-8 col-sm-7">

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
                <div class="content-right col-md-4 col-sm-5">
                    
                    <div class="media">
                        <div class="media-left">

                             <xsl:apply-templates select='current()' mode='author-picture'/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="/data/users/entry[@id = current()/profile/item/@id]/name"/></h3>
                            <div class="profile-meta">
                               <p class="blue-text-in-line" id="like"><i class="fa fa-heart-o"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                                <span id="likeOutput" value="0" style="font-size: 27px;">0</span>
                                
                                <p class="blue-text-in-line" id="view"><i class="fa fa-man-people-streamline-user"></i><xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/></p>
                                <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
                            </div>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-left -->
            </div>
        </div> 

    </xsl:template>

</xsl:stylesheet>