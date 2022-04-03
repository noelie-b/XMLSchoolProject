<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text" encoding="utf-8"/>
    
    <!-- Yimina & Noélie BOTTERO
       Exercice 15.3
       Feuille de style xslt dont le résultat est un document TXT
       qui extrait deux patrons morpho-syntaxiques de longueurs différentes -->
    
    
    <xsl:template match="/">
        <xsl:text>Exercice 15 Question 3</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>Patron Adj Nom</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="Adjnom"/>
        <xsl:text>-----------------&#10;</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>Patron Cl Verb Det Nom</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="NDNPreN"/>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:text>Patron Nom Adj</xsl:text>
        <xsl:text>&#10;&#10;</xsl:text>
        <xsl:apply-templates select="baselexicometrique/trame/items/item" mode="Nomadj"/>
        
    </xsl:template>
    
    
    <xsl:template match="item" mode="Adjnom">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[2]"/>
        <xsl:if test="($item1/c = 'Adj') and ($item2/c = 'N')">
            <xsl:value-of select="concat($item1/f, ' ', $item2/f)"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="item" mode="Nomadj">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[2]"/>
        <xsl:if test="($item1/c = 'N') and ($item2/c = 'Adj')">
            <xsl:value-of select="concat($item1/f, ' ', $item2/f)"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
    </xsl:template>

    <xsl:template match="item" mode="NDNPreN">
        <xsl:variable name="item1" select="."/>
        <xsl:variable name="item2" select="following-sibling::item[1]"/>
        <xsl:variable name="item3" select="following-sibling::item[2]"/>
        <xsl:variable name="item4" select="following-sibling::item[3]"/>
        <xsl:variable name="item5" select="following-sibling::item[4]"/>
        <xsl:variable name="item6" select="following-sibling::item[5]"/>
        <xsl:variable name="item7" select="following-sibling::item[6]"/>
        <xsl:if test="(contains($item1/c, 'D')) and (contains($item3/c, 'N')) and (contains($item5/c, 'Pre')) and (contains($item7/c, 'N'))">
            <xsl:value-of select="concat($item1/f, $item2/f, $item3/f, $item4/f, $item5/f, $item6/f, $item7/f)"/>
            <xsl:text>&#10;</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>