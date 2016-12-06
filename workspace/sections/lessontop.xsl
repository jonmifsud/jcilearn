<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
                                <div class="media-body-left">
                                <img class="media-object profile-pic" src="{/data/params/workspace}/assets/img/icons/profile-2.png" alt="Media Team Profile Image"/>
                                    <img class="flag" src="{/data/params/workspace}/assets/img/icons/flag-1.png" alt="Flag"/> 
                                    <h3 class="title"><xsl:value-of select="profile/item"/></h3>
                                </div>         
                            </div> <!-- /.media-body -->
                        </div>
                    </div>                              
            </div>
        </div>



    </xsl:template>

</xsl:stylesheet>