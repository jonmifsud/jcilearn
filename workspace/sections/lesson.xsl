<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/likeviewsoutput.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='author-picture'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
            <xsl:with-param name='include-name' select='$include-name'/>
        </xsl:apply-templates>
    

    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='list-item'>

        <div class="each-item col-md-12">
            <div class="each-item-inner col-md-12">
                <div class="content-left col-md-8 col-sm-7">

                    <div class="media">
                        <div class="media-left" >

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right col-md-4 col-sm-5" style="padding-left: 0px; padding-right: 0px; padding-bottom: 0px;">
                    
                    <div class="media">
                        <div class="media-left" style="padding-left: 20px; padding-right: 0px;">

                            <xsl:apply-templates select='current()' mode='author-picture'/> 

                        </div> <!-- /.media-left -->
                        <div class="media-body" >

                            <h3 class="title"><xsl:value-of select="/data/users/entry[@id = current()/profile/item/@id]/name"/></h3>
                            <div class="profile-meta">

                                <span class="blue-text-in-line" id="like"  data-entry='{@id}'>
                                    <i class="fa fa-heart-o"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="likeOutput" value="0" style="font-size: 27px;">0</span>
                                
                                <span class="blue-text-in-line" id="view">
                                    <i class="fa fa-man-people-streamline-user"></i>
                                    <xsl:value-of select="/data/commentboxtolearn/entry/item/item/like-views"/>
                                </span>

                                <span id="viewOutput" value="0" style="font-size: 27px;">0</span>
       
                            </div>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header'>



        <div class="guide-team">
            <div class="guide-team-inner">
                
                <!-- Start: Section Header -->
                <div class="section-header relative text-center" >
                    <h2 class="section-heading" ><xsl:value-of select="title"/></h2>
                    <p ><xsl:value-of select="interactiv-box"/></p>
                </div>   
                             
                <div class="lesson-definitions">
                    <div class="lesson-top-picture">
                        <div class="media">    

                            <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                                <xsl:with-param name='include-name' select='true()'/>
                            </xsl:apply-templates>

                            <xsl:value-of select="*"/>

                        </div> <!-- /.media-body -->
                    </div>
                </div>                              
            </div>
        </div>

    </xsl:template>

<xsl:template match="*[section/@handle='comment']//entry" mode='com'>

    <xsl:value-of select="text"/>


    </xsl:template>


<xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header-two'>
    <div class="media-body">
        <h3 class="title">
            <xsl:value-of select="title"/>
        </h3>
        <p class="pera">
            <xsl:value-of select="subtitle"/>
        </p>
    </div>
</xsl:template>

<xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-header-three'>
   <xsl:value-of select="profile"/>
</xsl:template>


</xsl:stylesheet>



