<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="iso-8859-1"/>
<xsl:template match="/table">
  <html>
  <body>
  <h1 align="center">Infirmières</h1>
  <xsl:for-each select="ligne">
    <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=./classe_anciennete)">
      <h2><xsl:value-of select="./classe_anciennete"/></h2>
    </xsl:if>
  </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
