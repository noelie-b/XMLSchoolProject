<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="1.0">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <!-- Noélie BOTTERO & Yimina
        Exercice 15.5
        Feuille de style qui extrait au format TXT les POS en relation de
        dépendances syntaxique de type Sujet et compte leurs occurrences -->
    
    <xsl:template match="/">
        

        <xsl:value-of select='count(//item[contains(./a[7],"SUB")])'/>
        <xsl:for-each select="//item">
            <xsl:sort select="./c"/>
            <xsl:if test="contains(./a[7], 'SUB')">
                <xsl:value-of select="./f"/>
                <xsl:text>_</xsl:text>
                <xsl:value-of select="./c"/>
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:for-each>
        
    </xsl:template>
    
</xsl:stylesheet>
