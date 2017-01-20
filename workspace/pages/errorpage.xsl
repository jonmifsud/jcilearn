<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>
<xsl:import href="../sections/lesson.xsl"/>
<xsl:import href="../sections/user.xsl"/>
<xsl:import href="../sections/comment.xsl"/>
<xsl:import href="../sections/likeviews.xsl"/>
<xsl:import href="../sections/learnfilesubheader.xsl"/>

<xsl:template match="/data">
	<h1><xsl:value-of select="/data/params/page-title"/></h1>
	<div class="container">
                <div class="row features-item section-separator">

        <div class="col-md-6">
			<h2> PAGE NOT FOUND </h2>
		</div>
		<div class="col-md-6">
			<h2> <img src="{/data/params/workspace}/assets/images/pagenotfound.jpg" style="height: 300px;"/> </h2>
		</div>
	</div>
</div>
</xsl:template>

</xsl:stylesheet>
