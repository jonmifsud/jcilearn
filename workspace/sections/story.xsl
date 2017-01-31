<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='story']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/story/</xsl:text>
        <xsl:value-of select='@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>

    <xsl:template match="*[section/@handle='story']//entry" mode='edit-link'>
        
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/share/story/edit-story/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>


    <xsl:template match="*[section/@handle='story']//entry" mode='explorestoriesmodule'>
        <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
            <div class="each-item-inner">
                <div class="content-right col-md-4 col-sm-5" style="width: 20%; height: 170px; background-color: #3489DA; border-top-left-radius: 20px; border-bottom-left-radius: 20px; margin-left: -3px;">
                <br/>
                <p class="blue-text-in-line" style="color: white;"><i class="fa fa-man-people-streamline-user" style="color: white;"></i><br/><br/><b>X2</b></p>
                    
                </div> <!-- /.content-left -->
                <div class="content-left col-md-8 col-sm-7" style="width: 80%;">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image" style="margin-top: 20px;"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title" style="margin-top: 20px;"><xsl:value-of select="title" /></h3>
                            <p class="pera"><xsl:value-of select="subtitle" /></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                
            </div>
            <!-- <p class="small-text"><xsl:value-of select="/user/item" /> recently enrolled form this module.</p> -->
        </div>
    </xsl:template>


    <xsl:template  match="*[section/@handle='story']//entry" mode='explore-story-slider-single-item'>
        <div class="guide-team-content">
            <div class="each-item" style="margin-left: auto; margin-right: auto; text-align: center; width: 100%; margin-bottom: 40px; margin-top: 30px;">
                <div class="each-item-inner">
                    

                    <div class="media" style="margin: 30px; margin-top: 10px;">
                        
                        <div class="media-body">

                            <h3 class="title" style=" text-transform: uppercase; margin-top: 20px;"><xsl:value-of select="title" /> </h3>
                            <p class="pera "> <xsl:value-of select="subtitle" /> </p>

                        </div> <!-- /.media-body -->
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image" style="margin-top: 20px;"/>
                        
                        </div> <!-- /.media-left -->
                    </div> <!-- /.media -->

                    
                </div>
                <!-- TODO determine who recently enrolled -->
                <p class="small-text">
                    <xsl:value-of select="user/item" /> recently enrolled form this module.
                </p>
            </div>  
        </div>
    </xsl:template>

    <xsl:template  match="*[section/@handle='story']//entry" mode='explorestoriestwoslidermodule'>
        <xsl:if test='position() mod 2 = 1'>
            <div class="item" style="padding: 0px;">    
                <div class="modules" style="height: 100%;">
                    <div class="modules-inner" style="padding: 0px; border: 0px; margin-right: 10px;">
                                
                        <xsl:apply-templates select='.' mode='explore-story-slider-single-item'/>
                        <xsl:apply-templates select='following-sibling::entry[1]' mode='explore-story-slider-single-item'/>

                    </div>                                        
                </div>
            </div> <!-- /.item -->
        </xsl:if>
    </xsl:template>


    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodulewithlikes'>
        <xsl:param name='edit-link' select='false()'/>
        <xsl:param name='no-link' select='false()'/>

       <div class=" each-item-inner col-sm-10" style="padding: 0px; display: flex; width: 100%; margin-bottom: 30px; overflow: hidden;">
           

            <a class="content-right col-xs-12 content-defult col-md-3 col-sm-3" style="padding: 0px;"> 
                <xsl:attribute name='href'>
                    <xsl:choose>
                        <xsl:when test='$no-link'>
                        </xsl:when>
                        <xsl:when test='$edit-link'>
                            <xsl:apply-templates select='.' mode='edit-link'/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select='.' mode='link'/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>               
                <img src="{/data/params/workspace}/assets/img/helppic.png" class=" square-picture border-radius-shape"/> 
            </a>
            
            <a class="content -left col-xs-8 col-md-7 col-sm-7" style=" padding-top: 30px; padding-right: 0px; padding-bottom: 0px;">
                <xsl:attribute name='href'>
                    <xsl:choose>
                        <xsl:when test='$no-link'>
                        </xsl:when>
                        <xsl:when test='$edit-link'>
                            <xsl:apply-templates select='.' mode='edit-link'/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:apply-templates select='.' mode='link'/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
                <div class="media">                                                        
                    <div class="media-body">
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                        <p class="pera"><xsl:value-of select="date"/></p>
                    </div> <!-- /.media-body -->
                    <div class="media-left">
                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-6.png" alt="Media Team Image"/>   
                    </div> <!-- /.media-left -->
                </div> <!-- /.media -->
            </a> <!-- /.content-right -->

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

    <xsl:template match="*[section/@handle='story']//entry" mode='sharestorymodule'>
        <div class=" each-item-inner col-sm-10" style="width: 100% !important; padding: 0px;">
           
            <div class="content-right col-xs-12 content-defult col-sm-3" style=" overflow: hidden; padding: 0px;">
                
               <img src="{/data/params/workspace}/assets/img/helppic.png" class="border-radius-shape"/>

            </div>
            
            <div class="content-left col-xs-12 col-sm-9" style=" padding-top: 20px; padding-bottom: 20px;">
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
        </div>
    </xsl:template>

    <xsl:template match="*[section/@handle='story']//entry" mode='story-module-item'>

        <div class="each-item col-sm-10 col-md-12">
            <div class=" each-item-inner height-md-story-module">
                <div class="content-right col-xs-12 content-defult col-md-2" style=" overflow: hidden; padding: 0px;">
                    
                   <img class="media-object features-image" src="{/data/params/workspace}/assets/img/helppic.png" alt="Media Team Image" style="max-width: 100%; height: 200px; max-height: 200px; border-top-left-radius: 20px; border-bottom-left-radius: 20px;"/>

                </div>
                <div class="content-left col-xs-8 col-md-7" style=" padding-top: 50px;">

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
                <div class="content-right content-defult col-md-3 col-xs-4">
                    
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