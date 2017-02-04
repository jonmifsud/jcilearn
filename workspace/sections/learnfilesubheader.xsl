<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name='learn-subheader'>

        <div class="col-xs-12 each-features" style="margin-bottom: 80px;">
            <div class="btn-form col-xs-12 text-center margin-t-20">
                <a href="{/data/params/root}/study/" class="btn btn-border">
                	<xsl:if test='/data/params/root-page = "study"'>
                		<xsl:attribute name='class'>btn btn-fill</xsl:attribute>
                	</xsl:if>
                	<xsl:text>Study</xsl:text>
                </a>
                <a href="{/data/params/root}/explore/" class="btn btn-border">
                	<xsl:if test='/data/params/root-page = "explore"'>
                		<xsl:attribute name='class'>btn btn-fill</xsl:attribute>
                	</xsl:if>
                	<xsl:text>Explore</xsl:text>
                </a>
                <a href="{/data/params/root}/collab/" class="btn btn-border disabled">Collab</a>
            </div>
        </div>

        <xsl:if test='/data/params/current-page != /data/params/root-page'>

            <div class="col-xs-12 each-features"> 
                <div class="tab-item">
                    <div class="tab-inner">    
                        <div role="tabpanel">

                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li role="presentation">
                                	<xsl:if test='/data/params/current-page = "module"'>
                                		<xsl:attribute name='class'>active</xsl:attribute>
                                	</xsl:if>
                                	<a href="{/data/params/root}/{/data/params/root-page}/#modules">
                                		<xsl:if test='/data/params/current-page = "module"'>
	                                		<xsl:attribute name='data-toggle'>tab</xsl:attribute>
	                                	</xsl:if>
                                		<xsl:text>Modules</xsl:text>
                                	</a>
                                </li>
                                <li role="presentation">
                                	<xsl:if test='/data/params/current-page = "project"'>
                                		<xsl:attribute name='class'>active</xsl:attribute>
                                	</xsl:if>
                                	<a href="{/data/params/root}/{/data/params/root-page}/#projects">
										<xsl:if test='/data/params/current-page = "project"'>
	                                		<xsl:attribute name='data-toggle'>tab</xsl:attribute>
	                                	</xsl:if>
                                		<xsl:text>Projects</xsl:text>
                                	</a>
                                </li>
                                <li role="presentation">
                                	<xsl:if test='/data/params/current-page = "story"'>
                                		<xsl:attribute name='class'>active</xsl:attribute>
                                	</xsl:if>
                                	<a href="{/data/params/root}/{/data/params/root-page}/#stories">
										<xsl:if test='/data/params/current-page = "story"'>
	                                		<xsl:attribute name='data-toggle'>tab</xsl:attribute>
	                                	</xsl:if>
                                		<xsl:text>Stories</xsl:text>
                                	</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div> <!-- End: .each-item -->
            </div>
        </xsl:if>

    </xsl:template>

    <xsl:template name='share-subheader'>

        <div class="col-xs-12 each-features" style="margin-bottom: 80px;">
            <div class="btn-form col-xs-12 text-center margin-t-20">
                <a href="{/data/params/root}/{/data/params/root-page}/lesson/" class="btn btn-border">
                	<xsl:if test='/data/params/current-page = "lesson"'>
                		<xsl:attribute name='class'>btn btn-fill</xsl:attribute>
                	</xsl:if>
                	<xsl:text>Lesson</xsl:text>
                </a>
                <a href="{/data/params/root}/{/data/params/root-page}/project/" class="btn btn-border">
                	<xsl:if test='/data/params/current-page = "project"'>
                		<xsl:attribute name='class'>btn btn-fill</xsl:attribute>
                	</xsl:if>
                	<xsl:text>Project</xsl:text>
                </a>
                <a href="{/data/params/root}/{/data/params/root-page}/story/" class="btn btn-border">
                	<xsl:if test='/data/params/current-page = "story"'>
                		<xsl:attribute name='class'>btn btn-fill</xsl:attribute>
                	</xsl:if>
                	<xsl:text>story</xsl:text>
                </a>
            </div>
        </div>

    </xsl:template>

</xsl:stylesheet>