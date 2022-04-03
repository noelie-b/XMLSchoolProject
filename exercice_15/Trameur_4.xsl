<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <!-- Noélie BOTTERO & Yimina
        Exercice 15.4
        Feuille de style qui extrait au format TXT les items en relation de
        dépendances syntaxique de type Sujet et compte leurs occurrences -->
    
    <xsl:template match="/">
        <xsl:for-each select='//item'>
            <xsl:sort select="./f"/>
            <xsl:if test='contains(./a[7],"SUB")'>
                <xsl:value-of select='./f' />
                <xsl:text>&#10;</xsl:text>
            </xsl:if>
        </xsl:for-each>

    </xsl:template>
    
</xsl:stylesheet>
