<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="likeviewsoutput.xsl"/>
<xsl:import href="likeviews.xsl"/>

    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodulewithlikes'>
       <div class=" each-item-inner col-sm-10" style="padding: 0px; display: flex; width: 100%; margin-bottom: 30px; overflow: hidden;">
           
            <div class="content-right col-xs-12 content-defult col-md-3 col-sm-3" style="padding: 0px;">                
                <img src="{/data/params/workspace}/assets/img/helppic.png" style="height: 180px; width: 100%;" class="border-radius-shape"/> 
            </div>
            
            <div class="content-left  content-left-no-padding col-xs-8 col-md-7 col-sm-7" style=" padding-top: 10px !important; padding-right: 0px; padding-bottom: 10px !important;">
                <div class="media">                                                        
                    <div class="media-body">
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="date"/></p>
                    </div> <!-- /.media-body -->
                    <div class="media-left">
                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>   
                    </div> <!-- /.media-left -->
                </div> <!-- /.media -->
            </div> <!-- /.content-right -->

            <div class="content-right content-defult col-md-2 col-sm-2 col-xs-4" style="padding-left: 0px; padding-right: 0px;">
                
                <div class="profile-meta" style="margin-left: 0px;">
                    <xsl:apply-templates select="/data/story/entry[1]" mode="likeviews"/>
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
            </div>
            
        </div>

    </xsl:template>

</xsl:stylesheet>
