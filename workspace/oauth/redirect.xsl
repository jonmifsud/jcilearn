<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">
	<link>
		<value-of select='/data/params/new'/>
		<xsl:choose>
			<xsl:when test='/data/params/new = "yes"'>
				<!-- new account -->
				<xsl:value-of select='/data/params/root'/>
				<!-- <xsl:text>/join/</xsl:text>
				<xsl:value-of select='/data/params/service'/>
				<xsl:text>/</xsl:text>
				<xsl:value-of select='/data/entry/@id'/>
				<xsl:text>/</xsl:text> -->
			</xsl:when>
			<xsl:when test='/data/params/linked = "yes"'>
				<!-- just been linked  -->
				<xsl:value-of select='/data/params/root'/>
				<!-- <xsl:text>/settings/</xsl:text>
				<xsl:value-of select='/data/entry/@id'/>
				<xsl:text>/</xsl:text> -->
			</xsl:when>
			<xsl:otherwise>
				<!-- existing account -->
				<xsl:value-of select='/data/params/root'/>
				<!-- <xsl:text>/</xsl:text>
				<xsl:value-of select='/data/entry/@id'/>
				<xsl:text>/</xsl:text> -->
			</xsl:otherwise>
		</xsl:choose>
	</link>
</xsl:template>

</xsl:stylesheet>
