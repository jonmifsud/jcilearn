<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="*[section/@handle='user']//entry" mode='user-picture-country'>
        <xsl:param name='include-name' select='false()'/>

        <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz-</xsl:variable>
        <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ </xsl:variable>

        <div class="media-left" style="padding-left: 10px; padding: 0px;">
            <img class="media-object profile-pic" style="padding-left: 1px; width: 50px;" alt="Media Team Profile Image">
                <xsl:attribute name='src'>
                    <xsl:apply-templates select='.' mode='photo-url'/>
                </xsl:attribute>
            </img>
            <img class="flag put-flag-in-corner" src="{/data/params/workspace}/assets/img/icons/flags/83px/{translate(address/country,$ucletters,$lcletters)}.jpg" alt="Flag"/>
            <xsl:if test='$include-name'>
                <h3 class="title"><xsl:value-of select="name"/></h3>
            </xsl:if>
        </div> 


    </xsl:template>

    <xsl:template match="*[section/@handle='user']//entry" mode='photo-url'>
        <xsl:param name='dimension' select='"110x110"'/>

        <xsl:choose>
            <xsl:when test="photo/supported-dimensions/image[@dimension=$dimension]">
                <xsl:value-of select="photo/supported-dimensions/image[@dimension=$dimension]"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select='/data/params/workspace'/>
                <xsl:text>/assets/img/icons/profile-2.png</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match="*[section/@handle='user']//entry" mode='user-profile'>
        <xsl:param name='include-name' select='false()'/>
        <xsl:param name='include-details' select='true()'/>

        <xsl:variable name="lcletters">abcdefghijklmnopqrstuvwxyz-</xsl:variable>
        <xsl:variable name="ucletters">ABCDEFGHIJKLMNOPQRSTUVWXYZ </xsl:variable>

        
        <div class="col-xs-12 each-features">
            
            <div class="col-md-5 col-sm-6" style="border: 0px; height: 10%;">
                 <div class="user-definitions-line-right" style=" width: 100%;">
                    <img style="width: 110%; position: relative; border: 5px solid #3496DA;; border-radius: 100%; max-height: 250px; max-width: 250px;" class="user-image" alt="Media Team Profile Image">
                        <xsl:attribute name='src'>
                            <xsl:apply-templates select='.' mode='photo-url'/>
                        </xsl:attribute>
                    </img>
                    <img style="position: relative; top: -80px; min-width: 120px; height 80px; right: 0;" class="flag" src="{/data/params/workspace}/assets/img/icons/flags/83px/{translate(address/country,$ucletters,$lcletters)}.jpg" alt="Flag"/>
                 </div>

            </div>
            <div class="col-md-5 col-sm-6" style="border: 0px; height: 10%;">
                <div class="user-definitions-line-left" style="width: 100%;">
                  <div class="media-body">
                    <h3 style="font-size: 30px; line-height: 110%;" class="title text-left">
                        <a data-toggle="modal" data-target="#pointsModal">
                            <xsl:value-of select='name'/>
                            <br/>
                            <xsl:value-of select='surname'/>
                        </a>
                    </h3>
                    <div class="row text-left">
                        <div class="col-xs-3">1 lesson</div>
                        <div class="col-xs-3">1 projects</div>
                        <div class="col-xs-3">1 stories</div>
                    </div>
                    <div class='user-profile-xp text-left' style='line-height:20px;'>
                        <span style="color: #f37121;font-weight:bold; font-size: 20px; vertical-align:text-bottom;">580XP</span>
                        <span style="color: #3496DA; size: 15px; font-weight: bold;">/ 50XP</span>
                        <span style="color: #3496DA;"> this week</span>
                    </div>
                    <div class="profile-meta" style="border: 2px solid #3489DA;width: 100px;height: 60px; padding: 5%; border-radius: 10%; margin-top: 20px;">
                      <p><i class="fa fa-man-people-streamline-user"></i> +</p>
                    </div>
                  </div>
                </div>
            </div>
            <div class="col-md-2"></div> 
        
            <xsl:if test='$include-details'>
                <div class="col-md-5 col-sm-5" style="border: 0px; height: 10%;">
                   <div class="user-definitions-line-right" style="width: 100%;">
                      <div class="col-xs-12 col-md-12">
                          <div class="col-md-8 col-xs-8">
                            <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-1.png" alt="Media Team Image"/>
                          </div>
                          <div class="col-md-4 col-xs-4">
                            <img style="padding: 5px; display: inline-block; text-align: center;" class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-2.png" alt="Media Team Image"/>
                          </div>
                      </div>
                      <div class="col-xs-12 col-md-12">
                        <!-- <p style="line-height: 100%; text-align: right; font-size: 25px; margin-top: 30px;"> Medical student at the University of Malta, hell bent on saving the Maltese countryside.</p> -->
                        <xsl:apply-templates select='short-text[@mode="formatted"]' mode='html-child'/>
                      </div>
                  </div>
                </div>
                <div class="col-md-5 col-sm-5" style="border: 0px; height: 10%;">
                   <div class="user-definitions-line-left" style="width: 100%;">
                    <p class="colored-text"> sustainability</p>
                    <div class="progress-wrapper-div">
                      <div class="progress-div" style='width:80%;'></div>
                    </div>

                    <p class="colored-text"> ACTIVE CITIZENSHIP</p>
                    <div class="progress-wrapper-div">
                      <div class="progress-div" style='width:62%;'></div>
                    </div>

                    <p class="colored-text"> LEADERSHIP</p>
                    <div class="progress-wrapper-div">
                      <div class="progress-div" style='width:50%;'></div>
                    </div>

                  </div>
                </div>
            </xsl:if>
        </div> <!-- /.each-features -->
    </xsl:template>

    <xsl:template match="*[section/@handle='user']//entry" mode='proba-mode'>

        <div class="media-left">
            <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" alt="Media Team Profile Image"/>
                <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/>
        </div> 


    </xsl:template>


</xsl:stylesheet>