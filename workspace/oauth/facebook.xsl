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
	<member>
		<name>
			<xsl:value-of select='/data/entry/first-name'/>
		</name>
		<surname>
			<xsl:value-of select='/data/entry/last-name'/>
		</surname>
		<!-- <birthday>
			<xsl:value-of select='/data/entry/birthday'/>
		</birthday> -->
		<!-- <gender>
			<xsl:value-of select='/data/entry/gender'/>
		</gender> -->
		<!-- <name>
			<xsl:value-of select='/data/entry/name'/>
		</name> -->
		<email>
			<xsl:value-of select='/data/entry/email'/>
		</email>
		<access>public</access>
		<!-- <activation>yes</activation> -->
	</member>
</xsl:template>

</xsl:stylesheet>
