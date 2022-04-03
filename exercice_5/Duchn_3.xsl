<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    
    <!-- Yimina & Noélie BOTTERO
       Exercice 5.3
       Feuille de style xslt dont le résultat est un document TXT contenant la liste des mots 
       contenant la séquence "citoy" et "patriot" et leurs fréquences -->
    
    
    <xsl:template match="/">
        <xsl:text>Mots possèdant la racine "citoy" : </xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each-group select="//w[contains(forme/text(), 'citoy')]" group-by="substring-before(concat(forme/text(), '.'), '.')">
            <xsl:sort select="count(current-group())" data-type="number" order="descending"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>Nombre de mots : </xsl:text>
            <xsl:text> </xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="count(current-group())"/>
        </xsl:for-each-group>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>Nombre total de mots avec citoy : </xsl:text>
        <xsl:text> </xsl:text>
        <xsl:value-of select="count(//w[contains(forme/text(), 'citoy')])"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>Mots possèdent la racine "patriot" : </xsl:text>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:for-each-group select="//w[contains(forme/text(), 'patriot')]" group-by="substring-before(concat(forme/text(), '.'), '.')">
            <xsl:sort select="count(current-group())" data-type="number" order="descending"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:text>Nombre de mots : </xsl:text>
            <xsl:text> </xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="count(current-group())"/>
        </xsl:for-each-group>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>Nombre total de mots avec patriot : </xsl:text>
        <xsl:value-of select="count(//w[contains(forme/text(), 'patriot')])"/>
        
    </xsl:template>
</xsl:stylesheet>