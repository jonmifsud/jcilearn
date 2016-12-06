<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/data">
	<h1><xsl:value-of select="/data/params/page-title"/></h1>

	<div class="flower-preview"> 
		<div class="image">
			<img src="http://placehold.it/60x60" alt="tem title" />
		</div>	
		<div class="content">
			<h3 class="flowerName">
				<xsl:value-of select="featured-flowers/entry[@id = 19]/name"/>
			</h3>
			<span class="price">
				<xsl:value-of select="featured-flowers/entry[@id = 19]/price"/>
			</span>
			<ul>
				<xsl:for-each select="featured-flowers/entry[@id = 19]/tags/item">
				<li><a href=""><xsl:value-of select="."></xsl:value-of></a></li>
				</xsl:for-each>
			</ul>
		</div>	
	</div>
</xsl:template>

</xsl:stylesheet>
