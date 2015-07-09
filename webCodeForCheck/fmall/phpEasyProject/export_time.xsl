<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method = "html" encoding="utf-8" />
	<xsl:variable name="hintergrund1">background-color:#EFEFEF;</xsl:variable>
	<xsl:variable name="hintergrund2">background-color:white;</xsl:variable>
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
		<div style="width:800px;">
		<h1><xsl:value-of select="@title" /></h1>
		<p><xsl:value-of select="@startdate" /> - <xsl:value-of select="@finishdate" /></p>

		<table style="width:100%;padding-bottom:16px" cellspacing="0" cellpadding="4">
			<xsl:apply-templates mode="html" />
		</table>
		</div>
	</xsl:template>
	
	<xsl:template match="user" mode="html">
		<tr>
			<td colspan="9"><xsl:text>&#160;</xsl:text></td>
		</tr>
		<tr>
			<th colspan="9" style="text-align:left;"><h2><xsl:value-of select="@surname" />, <xsl:value-of select="@firstname" /></h2></th>
		</tr>
		<xsl:apply-templates mode="html" />
	</xsl:template>

	<xsl:template match="usersum" mode="html">
		<tr>
			<td colspan="8"><strong><xsl:value-of select="@name" /></strong></td>
			<td style="text-align:right;"><strong>
				<xsl:apply-templates mode="html" />
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="@suffix" /></strong>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="totalsum" mode="html">
		<tr>
			<td colspan="8"><hr /><strong><xsl:value-of select="@name" /></strong></td>
			<td style="text-align:right;"><hr /><strong>
				<xsl:apply-templates mode="html" />
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="@suffix" /></strong>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="month" mode="html">
			<tr>
				<td colspan="9"><strong><xsl:value-of select="@name" /></strong></td>
			</tr>
		<xsl:apply-templates mode="html" />
	</xsl:template>

	<xsl:template match="monthsum" mode="html">
		<tr>
			<td><xsl:text>&#160;</xsl:text></td>
			<td colspan="7"><xsl:value-of select="@name" /></td>
			<td style="text-align:right;">
				<strong><xsl:apply-templates mode="html" />
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="@suffix" /></strong>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="day" mode="html">
			<tr>
				<td><xsl:text>&#160;</xsl:text></td>
				<td><xsl:text>&#160;</xsl:text></td>
				<td colspan="7" style="text-align:left;"><strong><xsl:value-of select="@name" /></strong></td>
			</tr>
		<xsl:apply-templates mode="html" />
	</xsl:template>
	
	<xsl:template match="daysum" mode="html">
		<tr>
			<td><xsl:text>&#160;</xsl:text></td>
			<td><xsl:text>&#160;</xsl:text></td>
			<td colspan="6"><xsl:value-of select="@name" /></td>
			<td style="text-align:right;"><strong>
				<xsl:apply-templates mode="html" />
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="@suffix" /></strong>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="record" mode="html">
		<tr>
		<xsl:attribute name="style">
				<xsl:call-template name="changebgcolor">
					<xsl:with-param name="rspos" select="position()"/>
				</xsl:call-template>
			</xsl:attribute>
			<td style="background-color:white;"><xsl:text>&#160;</xsl:text></td>
			<td style="background-color:white;"><xsl:text>&#160;</xsl:text></td>
			<td style="background-color:white;"><xsl:text>&#160;</xsl:text></td>
			<xsl:apply-templates mode="html" />
		</tr>
	</xsl:template>

	<xsl:template match="projectname" mode="html">
		<td><xsl:apply-templates mode="html" /></td>
	</xsl:template>
	
	<xsl:template match="prposname" mode="html">
		<td><xsl:apply-templates mode="html" /></td>
	</xsl:template>
	
	<xsl:template match="start" mode="html">
		<td><xsl:apply-templates mode="html" /></td>
	</xsl:template>
	
	<xsl:template match="finish" mode="html">
		<td>:</td><td><xsl:apply-templates mode="html" /></td>
	</xsl:template>
	
	<xsl:template match="duration" mode="html">
		<td style="text-align:right">
			<xsl:apply-templates mode="html" />
			<xsl:text>&#160;</xsl:text>
			<xsl:value-of select="@suffix" />
		</td>
	</xsl:template>

<xsl:template name="changebgcolor">
	<xsl:param name="rspos" />
  		<xsl:choose>
  			<xsl:when test="$rspos mod 2 = 1">
  				<xsl:value-of select="$hintergrund2" />
    		</xsl:when>
    					
    		<xsl:otherwise>
    			<xsl:value-of select="$hintergrund1" />
    		</xsl:otherwise>
  		</xsl:choose>
  </xsl:template>
</xsl:stylesheet>
