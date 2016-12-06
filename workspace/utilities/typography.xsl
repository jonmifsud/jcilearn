<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--
Name: HTML Manipulation
Version: 1.0
Author: Allen Chang <allen@chaoticpattern.com>
URL: http://symphony21.com/downloads/xslt/file/20035/

Description:
This is the starter utility (dubbed "The Ninja Technique") in which all awesome HTML manipulation works off.
Be sure to check out http://chaoticpattern.com/article/manipulating-html-in-xml/ for more info.

Usage:
1. Invoke the HTML output using: <xsl:apply-templates select="path/to/your/body/*" mode="html"/>.
2. Write your own overriding matching templates to manipulate the HTML.
-->

<xsl:template match="*" mode="html">
	<xsl:param name='replacements'/>
	<xsl:element name="{name()}">
		<xsl:apply-templates select="* | @* | text()" mode="html">
			<xsl:with-param name='replacements' select='$replacements'/>
		</xsl:apply-templates>
	</xsl:element>
</xsl:template>

<!-- ignore all YAML entries as it is not valid HTML -->
<xsl:template match="yaml" mode="html">
	<xsl:param name='replacements'/>
</xsl:template>

<xsl:template match="*" mode="html-child">
	<xsl:param name='replacements'/>
	<xsl:apply-templates select="* | text()" mode="html">
		<xsl:with-param name='replacements' select='$replacements'/>
	</xsl:apply-templates>
</xsl:template>

<xsl:template match="*" mode="html-plain">
	<xsl:apply-templates select="* | @* | text()" mode="html-plain"/>
</xsl:template>

<xsl:template match="*" mode="html-plain">
	<xsl:copy-of select="current()" />
</xsl:template>

<xsl:template match="@*" mode="html">
	<xsl:choose>
		<xsl:when test="name(.) = 'page'">
			<xsl:attribute name="href">
				<!-- The replacement -->
				<xsl:variable name="replace">
					<xsl:call-template name="getPageUrl">
						<xsl:with-param name='en-page-handle' select='current()'/>
					</xsl:call-template>
				</xsl:variable>
				<xsl:value-of select="$replace" />
			</xsl:attribute>
		</xsl:when>
		<xsl:otherwise>
			<xsl:attribute name="{name()}">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="@href" mode="html">
	<xsl:attribute name="{name()}">
		<!-- if link does not start with - 'http', '/', 'mailto:', '?', or '#' then add 'http://' to the link -->
		<xsl:if test="substring(.,1,4) != 'http' and substring(.,1,1) != '/' and substring(.,1,7) != 'mailto:' and substring(.,1,1) != '?' and substring(.,1,1) != '#'">
			<xsl:text>http://</xsl:text>
		</xsl:if>
		<xsl:if test="substring(.,1,1) = '/'">
			<xsl:value-of select='$root'/>
		</xsl:if>
		<xsl:value-of select="."/>
	</xsl:attribute>
	<!-- if not http://forward.com or https://forward.com or forward.com / or mailto then target blank -->
	<xsl:if test="substring(.,7,12) != 'maze.digital' and substring(.,8,12) != 'maze.digital' and substring(.,1,12) != 'maze.digital' and substring(.,1,1) != '/' and substring(.,1,7) != 'mailto:'">
		<xsl:attribute name='target'>_blank</xsl:attribute>
	</xsl:if>
</xsl:template>

</xsl:stylesheet>