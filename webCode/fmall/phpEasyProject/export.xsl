<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method = "html" encoding="utf-8" />
	<xsl:template match="/">
<html>
<title>phpEasyProject - Export</title>
<meta http-equiv="expires" content="0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<style type="text/css">
<![CDATA[
<!--
body {
    background-color:white;
    font-family:Verdana, Geneva, Arial, Helvetica, sans-serif;
    padding-left:2em;
}

h1 {
    font-size:120%;
}

h2 {
    font-size:110%;
}

h3 {
    font-size:100%;
}


th {
    background-color:#e0e0e0;
    font-size:95%;
}

td {
    font-size:90%;
}
-->
]]>
</style>
	<body><xsl:apply-templates mode="html" /></body>
</html>
	</xsl:template>

	<xsl:template match="activity" mode="html">
		<div style="width:450px;">
		<h1><xsl:value-of select="@title" /></h1>
		<p><xsl:value-of select="@startdate" /> - <xsl:value-of select="@finishdate" /></p>
		<xsl:apply-templates mode="html" />
		</div>
	</xsl:template>
	
	<xsl:template match="user" mode="html">
		<h2><xsl:value-of select="@surname" />, <xsl:value-of select="@firstname" /></h2>
		<xsl:apply-templates mode="html" />
	</xsl:template>
	
	<xsl:template match="project" mode="html">
		<table style="width:100%;padding-bottom:16px" cellspacing="6" cellpadding="2">
			<tr>
				<th colspan="3" style="text-align:left;"><xsl:value-of select="@name" /></th>
			</tr>
		<xsl:apply-templates mode="html" />
		</table>
	</xsl:template>
	
	<xsl:template match="prposition" mode="html">
		<tr>
			<xsl:apply-templates mode="html" />
		</tr>
	</xsl:template>

	<xsl:template match="prposname" mode="html">
		<td>
			<xsl:apply-templates mode="html" />
		</td>
		<td><xsl:text>&#160;</xsl:text></td>
	</xsl:template>
	
	<xsl:template match="duration" mode="html">
		<td style="text-align:right">
			<xsl:apply-templates mode="html" /><xsl:text>&#160;</xsl:text><xsl:value-of select="@suffix" />
		</td>
	</xsl:template>
	
	<xsl:template match="projectsum" mode="html">
		<tr>
			<td colspan="2"><strong><xsl:value-of select="@name" /></strong></td>
			<td style="text-align:right;"><strong>
				<xsl:apply-templates mode="html" />
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="@suffix" /></strong></td>
		</tr>
	</xsl:template>
	
	<xsl:template match="description" mode="html">
		<td>
			<strong><xsl:apply-templates mode="html" /></strong>
		</td>
		<td><xsl:text>&#160;</xsl:text></td>
	</xsl:template>
	
	<xsl:template match="summe" mode="html">
		<td style="text-align:right">
			<strong><xsl:apply-templates mode="html" /><xsl:text>&#160;</xsl:text><xsl:value-of select="@suffix" /></strong>
		</td>
	</xsl:template>
	
	<xsl:template match="totalsum" mode="html">
			<br />
			<br />
			<br />
			<hr />
			<div style="text-align:right;"><strong><xsl:value-of select="@name" />
			<xsl:text>&#160;</xsl:text>
			<xsl:text>&#160;</xsl:text>
			<xsl:text>&#160;</xsl:text>
			<xsl:text>&#160;</xsl:text>
			<xsl:text>&#160;</xsl:text>
			<xsl:text>&#160;</xsl:text>
			<xsl:apply-templates mode="html" /><xsl:text>&#160;</xsl:text>
			<xsl:value-of select="@suffix" /></strong></div>
	</xsl:template>

	<xsl:template match="usersum" mode="html">
			<div style="text-align:right;">
			<hr />
			<strong><xsl:value-of select="@name" />
					<xsl:text>&#160;</xsl:text>
					<xsl:text>&#160;</xsl:text>
					<xsl:text>&#160;</xsl:text>
					<xsl:text>&#160;</xsl:text>
					<xsl:text>&#160;</xsl:text>
					<xsl:text>&#160;</xsl:text>
					<xsl:apply-templates mode="html" />
					<xsl:text>&#160;</xsl:text>
					<xsl:value-of select="@suffix" /></strong></div>
	</xsl:template>
	
</xsl:stylesheet>
