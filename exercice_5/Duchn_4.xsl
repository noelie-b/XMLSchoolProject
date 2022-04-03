<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="text"/>
    
    <!-- Yimina & Noélie BOTTERO
       Exercice 5.4
       Feuille de style xslt dont le résultat est un document TXT contenant la liste des parties
       du discours des mots et leur fréquence -->
    
    
    <xsl:template match="/">
        <xsl:text>Catégories et occurrences</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:for-each-group select="//w[matches(categorie/text(), '([A-Z]*)')]" group-by="categorie/text()">
            <xsl:sort select="count(current-group())" data-type="text" order="descending"/>
            <xsl:text>&#10;</xsl:text>
            <xsl:value-of select="current-grouping-key()"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="count(current-group())"/>
        </xsl:for-each-group>
        <xsl:text>&#10;</xsl:text>
    </xsl:template>
</xsl:stylesheet>