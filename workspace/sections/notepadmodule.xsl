<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/user.xsl"/>

    <xsl:template match="*[section/@handle='lesson']//entry" mode='notepadmodule'>

        <div class="each-item col-md-12">
            <div class="each-item-inner" >
                <div class="content-left col-md-8 col-sm-7">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" style="max-width: 100px;" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>
                            <p class="pera"><xsl:value-of select="subtitle"/></p>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3">
                    
                    <div class="profile-meta">
                        <div class="col-xs-6 col-md-12">
                        <p><i class="fa fa-man-people-streamline-user"></i>Hard</p></div>
                        <div class="col-xs-6 col-md-12">
                        <p><i class="fa fa-like-love-streamline"></i>Coded</p></div>
                    </div>

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:template>

</xsl:stylesheet>