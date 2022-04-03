<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    
    <!-- Yimina & Noélie BOTTERO
        Exercice 5.1
        Feuille de style xslt dont le résultat est un document HTML contenant
        uniquement le texte du Père Duchesne. -->
    
    <xsl:template match ="/">
        <xsl:text disable-output-escaping='yes'>&#xD;&#xA;</xsl:text>
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <xsl:text disable-output-escaping='yes'>&#xD;&#xA;</xsl:text>
        <html>
            <h1 style="text-align:center">Père Duchesne</h1>
            <body>
               
                <xsl:for-each-group select="//w" group-ending-with="w[forme='.']"><p style="text-align:justify">
                    <xsl:for-each select="current-group()">
                        <xsl:choose>
                            <xsl:when test="position()=1">
                                <xsl:value-of select="concat(upper-case(substring(forme/text(),1,1)),
                                    substring(forme/text(), 2), ' '[not(last() )], ' ')"/>
                            </xsl:when>
                            <xsl:when test="contains(forme/text(), '.') and not(ends-with(forme/text(), '.'))">
                                <xsl:variable name="maj">
                                    <xsl:call-template name="upper">
                                        <xsl:with-param name="text" select="forme/text()"/>
                                    </xsl:call-template>
                                </xsl:variable>
                                <xsl:value-of select="concat(substring-before(forme/text(), '.'), ' . ')"/>
                                <xsl:value-of select="concat($maj, ' ')"/>
                            </xsl:when>
                            <xsl:when test="ends-with(forme/text(), '.')">
                                <xsl:value-of select="forme/text()"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat(forme/text(), ' ')"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </p></xsl:for-each-group>
            </body>
        </html>
    </xsl:template>

    
    <xsl:template name="upper">
        <xsl:param name="text"/>
        <xsl:variable name="trans" select="substring-after($text, '.')"/>
        <xsl:value-of select="concat(upper-case(substring($trans, 1, 1)), substring($trans, 2), ' '[not(last())])" />
    </xsl:template>
    
</xsl:stylesheet>