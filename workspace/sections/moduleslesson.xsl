<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:import href="../sections/user.xsl"/>

        <xsl:template match="*[section/@handle='lesson']//entry" mode='lesson-module-item'>

         <div class="each-item col-md-6 col-sm-12" style="min-height: 250px;">
            <div class=" each-item-inner" style="min-height: 180px;">
                <div class="content-left col-sm-9">

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
                <div class="content-right content-defult col-sm-3">
                    
                    <div class="profile-meta">
                        <p><i class="fa fa-man-people-streamline-user"></i>83</p>
                        <p><i class="fa fa-like-love-streamline"></i>17</p>
                    </div>

                </div> <!-- /.content-left -->
            </div>

            <p class="small-text text-center">You're one lesson away from obtaining your Trainer badge!</p>
        </div> <!-- /.each-item -->

    </xsl:template>

</xsl:stylesheet>