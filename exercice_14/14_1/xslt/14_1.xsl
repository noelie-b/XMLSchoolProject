<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" version="4.0" encoding="utf-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Exercice 14 - Noélie BOTTERO, YIMINA</title>
			</head>
		<body>
			<h1 align="center">Exercice 14 - XSLT - 1</h1>
			<table border="1">
				<tr> 
					<th>string</th><th>POS</th><th>lemme</th>
				</tr>
			<xsl:for-each select="//element">
				<tr>
					<td><xsl:value-of select="data[3]"/></td>
					<td><xsl:value-of select="data[1]"/></td>
					<td><xsl:value-of select="data[2]"/></td>
				</tr>
			</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>





















