<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>

<xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module'>
    <div class="each-item">
        <div class="each-item-inner">
            <div class="content-left col-md-8 col-sm-7">

                <div class="media">
                    <div class="media-left">

                        <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                    
                    </div> <!-- /.media-left -->

                     <xsl:apply-templates select='current()' mode='lesson-header-two'/>
                    
                     <!-- /.media-body -->
                </div> <!-- /.media -->

            </div> <!-- /.content-right -->
            <div class="content-right col-md-4 col-sm-5">

                <div class="media">
                     <xsl:apply-templates select="current()/profile" mode="commentwo">
                    </xsl:apply-templates>

                    <div class="media-body">
                        <h3 class="title">

                            <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                                <xsl:with-param name='include-name' select='true()'/>
                            </xsl:apply-templates>
                        </h3>
                        <div class="profile-meta">
                            <p><i class="fa fa-man-people-streamline-user"></i>83</p>
                            <p><i class="fa fa-like-love-streamline"></i>7</p>
                        </div>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->

            </div> <!-- /.content-left -->
        </div>
    </div> <!-- /.each-item -->
</xsl:template>

<xsl:template match="*[section/@handle='comments']//entry" mode='commento'> 
     <div class="each-item">
        <div class="each-item-inner-lesson">                
            <div class="media">
                    <!--this one gives picture+coutnry to comment -->
                    <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                    </xsl:apply-templates>

                <div class="media-body">

                    <h3 class="title"><xsl:value-of select="/data/comments/entry/author/item"/></h3>
                    <p class="pera"><xsl:value-of select="/data/comments/entry/text"/></p>

                </div> <!-- /.media-body -->
            </div> <!-- /.media -->
        </div>
    </div> <!-- /.each-item -->
</xsl:template>

</xsl:stylesheet>