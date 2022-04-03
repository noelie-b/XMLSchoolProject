<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <!-- Noélie BOTTERO & Yimina
       Exercice 5.7
       Feuille de style xslt dont le résultat est un document TXT contenant la liste
       des patrons morpho-syntaxiques NOM - PREP - NOM -->
    
    <xsl:template match="/">
        <xsl:text>Patron NOM-PREP-NOM </xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:apply-templates select="//w"/>
    </xsl:template>
    
    <xsl:template match="w">
    <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::w[1]"/>
        <xsl:variable name="item3" select="following-sibling::w[2]"/>
        <xsl:choose>
        <xsl:when test="(not(contains($item1/forme, '.'))) and (not(contains($item2/forme, '.'))) and (not(contains($item3/forme, '.')))">
            <xsl:if test="(contains($item1/categorie, 'NC')) and (contains($item2/categorie, 'PR')) and (contains($item3/categorie, 'NC'))">
                <xsl:value-of select="concat($item1/forme/text(),' ', $item2/forme/text(), ' ', $item3/forme/text())"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    
    
</xsl:stylesheet>