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
	<xsl:copy-of select='/'/>
	<!-- <member>
		<first-name>
			<xsl:value-of select='/data/entry/first-name'/>
		</first-name>
		<last-name>
			<xsl:value-of select='/data/entry/last-name'/>
		</last-name>
		<name>
			<xsl:value-of select='/data/entry/name'/>
		</name>
		<email>
			<xsl:value-of select='/data/entry/email'/>
		</email>
		<role>public</role>
		<activation>yes</activation>
	</member> -->
</xsl:template>

</xsl:stylesheet>
