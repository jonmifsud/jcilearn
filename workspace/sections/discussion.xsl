<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="user.xsl"/>

    <xsl:template match="*[section/@handle='discussion']//entry" mode='link'>

        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/discussion/</xsl:text>
        <xsl:value-of select='@id'/>
        <xsl:text>/</xsl:text>

    </xsl:template>


    <xsl:template match="*[section/@handle='discussion']//entry" mode='author-picture'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:apply-templates select='/data/users/entry[@id = current()/user/item/@id]' mode='user-picture-country'>
            <xsl:with-param name='include-name' select='$include-name'/>
        </xsl:apply-templates>
    
    </xsl:template>


    <xsl:template match="*[section/@handle='discussion']//entry" mode='list-item'>

            <div class="each-item" >
                <div class="each-item-inner-lesson" style="width: 70%; display: inline-block;">
                    <a class="media">
                        <xsl:attribute name='href'>
                            <xsl:apply-templates select='.' mode='link'/>
                        </xsl:attribute>
                        <div class="media-left">
                            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png"  alt="Media Team Profile Image"/>
                            <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
                        </div> <!-- /.media-left -->
                        <div class="media-body" style="text-align: left;" >
                            <h3 class="title"><xsl:value-of select="profile/item" /></h3>
                            <p class="pera" style="margin: 0px;"><xsl:value-of select="title" /></p>
                            <b style="color: #3496DA;"> ACCOUNT </b>
                        </div> <!-- /.media-body -->
                    </a> <!-- /.media -->
                </div>
                <div class="box-border" style="width: 20%; height: 120px; display: inline-block; padding: 0px; border: 0px;">
                    <div class="profile-meta">
                        <xsl:apply-templates select="." mode="likeviews"/>
                    </div>
                </div>
            </div> <!-- /.each-item -->

    </xsl:template>

    <xsl:template match="*[section/@handle='discussion']//entry" mode='full'>


        <div class="col-xs-12 each-features" style="margin-bottom: 0px;">
            <div class="guide-team">
              <div class="guide-team-inner">

                <div class="col-mc-3 col-sm-3"></div>
                <div class="section-header relative text-center col-mc-6 col-sm-6 col-xs-12">
                    <h2 class="section-heading">
                        <xsl:value-of select='title'/>
                    </h2>
                </div>

                <div class="lesson-definitions  col-sm-7 col-md-7" style="margin-top: -30px;">
                  <div class="lesson-top-picture">
                    <div class="media">
                      <xsl:apply-templates select='.' mode='author-picture'/>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>

         <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">

             <div class="lesson-text">

                <!-- <xsl:value-of select="/data/discussion/entry/profile/item" /> -->
                <xsl:apply-templates select="text" mode='html-child'/>

             </div>
        </div>

        <div class="col-xs-12 each-features" style="margin-bottom: 0px; height: 100px;">
            <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12" >
                <xsl:apply-templates select="." mode="likeviews"/>
                
            </div>
        </div>

        <xsl:call-template name="show-comments"/> 


        <div class="lesson-button-organise text-center">
            <div class="btn-form col-xs-12 col-md-4 col-sm-4 col-md-offset-4 text-center margin-t-10">
                <div class="wraper-like-comment-share" style="margin-left: 15%;">
                    <div class="btn hovere-change" >
                        <i class="fa fa-like-love-streamline hovere-color-change"></i>
                    </div>
                    <div id="comment-toggle" class="btn hovere-change" >
                        <i class="fa fa-commenting-o hovere-color-change" aria-hidden="true"></i>

                    </div>
                    <div  class="btn hovere-change">
                        <i class="fa fa-share-square-o hovere-color-change" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>


        <xsl:call-template name="write-comment"/> 

    </xsl:template>


    <xsl:template name='new-discussion'>
        <form class='discussion-form' data-action="save-discussion">

            <div class="col-xs-12 each-features">
                <h2 class="section-heading">New Discussion</h2>    
                <br/>
                <a href="#" class="btn btn-border">Publish</a>
            </div>


            <div class="col-xs-12 col-md-8 col-md-offset-2">
                <input name="user" type="hidden" value="{/data/params/member-id}" />

                <label style="width: 100%;" >
                    <div>
                        <h3 class="title-centre">TITLE</h3>
                        <input name="title" type="text" value='{title[@mode="unformatted"]}'/>
                    </div>
                </label>

                <div class="col-xs-12 each-features text-center" style="margin-bottom: 0px;">
                    <h3 class="title col-md-12">CATEGORY</h3><br/>
                    <div class="col-md-3"></div>
                    <div class="box-border-text-left max-width col-md-8" style="width: 45%; overflow-y: scroll; height: 380px;">
                        <xsl:apply-templates select='/data/interests/entry' mode='option'>
                            <xsl:with-param name='class'>
                                <xsl:text>col-xs-6 text-center</xsl:text>
                            </xsl:with-param>
                            <xsl:with-param name='name'>category</xsl:with-param>
                            <xsl:with-param name='selected' select='current()/category/item'/>
                        </xsl:apply-templates>         
                    </div>
                </div>

                <label style="width: 100%;">
                    <div class="input-wrapper">
                        <h3 class="title-centre">TEXT</h3>
                        <textarea name="text" class="your-notes-class" type="text">
                            <xsl:value-of select='text[@mode="unformatted"]'/>
                        </textarea>
                    </div>
                </label>

            </div> <!-- /.each-features -->
        </form>

    </xsl:template>


</xsl:stylesheet>