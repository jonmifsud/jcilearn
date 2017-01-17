<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../sections/user.xsl"/>

    <xsl:template match="*[section/@handle='challenge']//entry" mode='challengemodule'>

        <div class="each-item">
            <div class="each-item-inner">
                <div class="content-left col-md-8 col-sm-7">

                    <div class="media">
                        <div class="media-left">

                            <img class="media-object features-image" src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Media Team Image"/>
                        
                        </div> <!-- /.media-left -->
                        <div class="media-body">

                            <h3 class="title"><xsl:value-of select="title"/></h3>

                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->

                </div> <!-- /.content-right -->
                <div class="content-right content-defult col-sm-3">
                    
                    <div class="profile-meta">
                        <p><i class="fa fa-man-people-streamline-user"></i>Hard</p>
                        <p><i class="fa fa-like-love-streamline"></i>Coded</p>
                    </div>

                </div> <!-- /.content-left -->
            </div>
        </div> <!-- /.each-item -->

    </xsl:template>

</xsl:stylesheet>