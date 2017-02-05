<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="*[section/@handle='modules']//entry" mode='link'>
        <xsl:value-of select='/data/params/root'/>
        <xsl:text>/explore/module/</xsl:text>
        <xsl:value-of select='title/@handle'/>
        <xsl:text>/</xsl:text>

    </xsl:template>


    <xsl:template match="*[section/@handle='modules']//entry" mode='modules'>
        <div class="item">    
            <a class="modules square" >
                <xsl:attribute name='href'>
                    <xsl:apply-templates select='.' mode='link'/>
                </xsl:attribute>
                <div class="modules-inner square-content">
                    <div class='square-center'>
                        <img src="{/data/params/workspace}/assets/img/icons/icon-3.png" alt="Modules Image" class="img-responsive" />
                        <h3 class="title"><xsl:value-of select="title"/></h3>
                    </div>
                </div>
                <!-- TODO
                    <p>
                        recent activity in this module 
                    </p>
                -->
            </a>
        </div> <!-- /.item -->
    </xsl:template>



    <xsl:template match="*[section/@handle='modules']//entry" mode='enroled-module'>

        <!-- <div class='row'> -->
            <!-- <div class="col-xs-8 col-xs-offset-2 text-center" > -->

        <div class="container">
            <div class="row">
                <div class="col-xs-8 col-xs-offset-2 col-lg-6 col-lg-offset-3 text-center" >
                    <div class="guide-team-inner">                                
                        <!-- Start: Section Header -->
                        <div class="section-header relative text-center">
                        
                            <h2 class="section-heading margin-b-thirty">
                                <xsl:value-of select="title"/>
                            </h2>
                            <p class="blue-text-centre">
                                <xsl:value-of select='subtext'/>
                            </p>
                        </div>                                 
                    </div>

                    <div class="box-border progress-box">

                        <xsl:variable name='width' select='100 div count(lessons/item)'/>

                        <xsl:for-each select='lessons/item'>
                            <div style='width:{$width}%;'>
                                <xsl:attribute name='class'>
                                    <xsl:if test='position() != last()'>
                                        <xsl:text>box-sharp-edge</xsl:text>
                                    </xsl:if>
                                    <xsl:if test='/data/lesson/entry[@id = current()/@id]/completed/@current-member="Yes"'>
                                        <xsl:text>completed-lesson</xsl:text>
                                    </xsl:if>
                                </xsl:attribute>
                            </div> 
                        </xsl:for-each>
                        <!-- <div class="box-sharp-edge" style="width: 25%; background-color: orange; ">
                        </div>
                        <div class="box-sharp-edge" style="width: 25%; background-color: #3489DA;">
                        </div> -->
                    </div>
                </div>
            </div>
        </div>

        <div class="study-timeline-progress" >

            <div class="container">
                <div class="row">
                    <div class="col-xs-8 col-xs-offset-2 col-lg-6 col-lg-offset-3 text-center" >
                        <div class='relative'>
                            <xsl:variable name='each-offset' select='100 div count(lessons/item)'/>
                            <xsl:variable name='centering-adjustment' select='$each-offset div 2'/>

                            <xsl:for-each select='lessons/item'>
                                <div class="study-timeline-progress-circles">
                                    <xsl:attribute name='style'>
                                        <xsl:text>margin-left:</xsl:text>
                                        <xsl:value-of select='$each-offset * position() - $centering-adjustment'/>
                                        <xsl:text>%;</xsl:text>
                                    </xsl:attribute>
                                    <xsl:value-of select='position()'/>
                                </div> 
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row">

                <div class="col-xs-8 col-xs-offset-2 col-lg-6 col-lg-offset-3 text-center each-features">
                
                    <div class="guide-team-content">  
                        <xsl:variable name='module' select='current()'/>
                        <!-- TODO show next lesson and change on hover of numbers currently shows only next lesson -->
                        <xsl:for-each select='lessons/item[@id = /data/lesson/entry[current()/@id and completed/@current-member="No"]/@id][1]'>
                            <xsl:apply-templates select="/data/lesson/entry[@id = current()/@id]" mode="list-item">
                                <xsl:with-param name='module' select='$module'/>
                            </xsl:apply-templates>
                        </xsl:for-each>
                    </div>
                </div>

            </div> 
        </div>
    </xsl:template>


    <xsl:template match="*[section/@handle='modules']//entry" mode='explore-module'>
        
        <div class="col-xs-12 each-features">

            <div class="modules-slider col-sm-offset-1 col-sm-10">
                <div class=".modules-slider-wrapper three-slides">       
                    
                    <!-- Start: Section Header -->
                    <div class="section-header relative text-center col-xs-12" >

                        <h2>
                            <xsl:value-of select="title"/>
                        </h2>
                        <p class='sub-heading'>
                            <xsl:value-of select="subtext"/>
                        </p>

                    </div> 
                    <!-- End: Section Header -->

                    <div class="guide-team-content timeline col-lg-8 col-lg-offset-2 col-sm-10 col-md-offset-2 col-xs-12 " style="padding-left: 0px;">
                        <div class="row">
                            <xsl:for-each select="lessons/item"> 
                                <xsl:apply-templates select="/data/lesson/entry[@id = current()/@id]" mode="list-item">
                                    <xsl:with-param name='no-link' select='true()'/>
                                </xsl:apply-templates>
                            </xsl:for-each>
                        </div>
                    </div>

                </div>
            </div>
        </div> <!-- /.each-features -->

        <div class="col-xs-12 each-features">  <!-- /.comments -->
             <div class="comments col-lg-8 col-lg-offset-2 col-sm-10 col-sm-offset-1 col-xs-12">
                
                <xsl:call-template name="show-comments"/> 
                
            </div> <!-- /.comments -->
        </div> <!-- /.each-features -->

        <div class="col-xs-12 each-features">
            <div class="single-comment col-lg-6 col-lg-offset-3 col-sm-8 col-sm-offset-2 col-xs-12">
                <div class="row single-comments-inner">
                    <div class="media">
                        <div class="media-left">
                            <img src="{/data/params/workspace}/assets/img/icons/icon-3.png"/>
                        </div> <!-- /.media-left -->
                        <div class="media-body">
                            <p class="pera" style="padding-left: 100px;">An incredibly informative module for all aspiring team and project leaders!.</p>
                        </div> <!-- /.media-body -->
                    </div> <!-- /.media -->
                    <div class="btn-form col-xs-12 text-center margin-t-50">
                        <xsl:choose>
                            <xsl:when test='enroled/@current-member = "No"'>
                                <a href="#" class="btn btn-border text-normal js-enrol-action" data-entry='{@id}' data-field='{enroled/@field-id}' data-current='{enroled/@current-member}'>Enrol</a>
                            </xsl:when>
                            <xsl:otherwise>
                                <span class="btn btn-border text-normal disabled">Already Enroled</span>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                </div>
            </div> <!-- /.single-comment -->
        </div> <!-- /.each-features -->
        
    </xsl:template>
</xsl:stylesheet>