<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name='show-comments'>
        <div class="col-xs-12 each-features" style="margin-bottom: 20px;">  <!-- /.comments -->                      
             <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                <div class="row comments-inner">
                    
                    <div id="hide-more-comments"> 
                        <xsl:apply-templates select="/data/comments/entry" mode="comment"/>
                    </div>
                    <div id="show-more-comments"> 
                        <xsl:apply-templates select="/data/comments/entry" mode="comment-more"/>
                    </div>
                   
                    <div id="show-more" class="each-item-inner comments-option overflow bottom-of-comment" > 
                        <a class="btn right-icon see-more pull-left"><div class="more-comments"><b>See more comments</b> <i class="fa fa-angle-down"></i> </div> </a>
                        <p class="comments-pagination pull-right"> 2 of <xsl:value-of select="count(/data/comments/entry)"/></p>
                    </div>

                    <div id="show-less" class="each-item-inner comments-option overflow bottom-of-comment" style=" position: fixed; bottom: 0px; background: white; width: 80%; " > 
                        <a class="btn right-icon see-more pull-left"><div class="more-comments"><b>See less comments</b><i class="fa fa-angle-up"></i> </div> </a>
                        <p class="comments-pagination pull-right"> <xsl:value-of select="count(/data/comments/entry)"/> comments </p>
                    </div>
                </div>
            </div> <!-- /.comments -->
        </div>
        
    </xsl:template>

    <xsl:template match="*[section/@handle='comment']//entry" mode='comment'>
        <xsl:if test="position() &lt;=2">
        <div class="each-item" style="max-height: 450px; overflow: hidden;">
            <div class="each-item-inner-lesson">                
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>

                    <div class="media-body">

                        <h3 class="title padding-l-50"><xsl:value-of select="author/item"/></h3>
                        <p class="pera padding-l-50"><xsl:value-of select="text"/></p>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:if>
    </xsl:template>

    <xsl:template match="*[section/@handle='comment']//entry" mode='comment-more'>

        <div class="each-item" style="max-height: 450px; overflow: hidden;">
            <div class="each-item-inner-lesson">                
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>

                    <div class="media-body">

                        <h3 class="title padding-l-50"><xsl:value-of select="author/item"/></h3>
                        <p class="pera padding-l-50"><xsl:value-of select="text"/></p>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
        

    </xsl:template>


    <xsl:template match="*[section/@handle='lesson']//entry" mode='commenttwo'>
        <div class="each-item">
            <div class="each-item-inner-lesson">
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='commentthre'>
        <div class="each-item">
            <div class="each-item-inner-lesson">
                <div class="media">
                        <!--this one gives picture+coutnry to comment -->
                        <xsl:apply-templates select='/data/users/entry[@id = current()/profile/item/@id]' mode='user-picture-country'>
                        </xsl:apply-templates>

                <div class="media-body">

                        <h3 class="title"><xsl:value-of select="/data/lesson/entry/profile/item"/></h3>
                        <p class="pera"><xsl:value-of select="/data/comments/entry/text"/></p>

                    </div> <!-- /.media-body -->
                </div> <!-- /.media -->
            </div>
        </div> <!-- /.each-item -->
    </xsl:template>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='play'>
        <p class="title"> </p>
    </xsl:template>

    

    <xsl:template match="*[section/@handle='comment']//entry" mode='commentforlesson'>
        <div class="each-item">

            <!-- FOR-EACH LOOP NEADED -->
            <xsl:for-each select="/data/lesson/entry">
                    <div class="each-item-inner-lesson">                
                        <div class="media"><!--this one gives picture+coutnry to comment -->
                                <xsl:apply-templates select='/data/users/entry[@id = current()/author/item/@id]' mode='user-picture-country'>
                                </xsl:apply-templates>
                            <div class="media-body">
                                <h3 class="title"><xsl:value-of select="/data/lesson/entry/profile/item"/></h3>
                                <p class="pera"><xsl:value-of select="/data/comments/entry/text"/></p>
                            </div> <!-- /.media-body -->                     
                        </div> <!-- /.media -->
                    </div>
            </xsl:for-each>

            <div class="each-item">
                <div class="each-item-inner comments-option overflow"> 
                    <a href="#" class="btn right-icon see-more pull-left">See more comments <i class="fa fa-angle-down"></i></a>
                    <p class="comments-pagination pull-right">2 of 14</p>
                </div>
            </div> <!-- /.each-item -->
        </div> <!-- /.each-item -->
    </xsl:template>

</xsl:stylesheet>