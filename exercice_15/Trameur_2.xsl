<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
        <xsl:output method="html" encoding="utf-8"/>
   
    <!-- Yimina & Noélie BOTTERO
       Exercice 15.2
       Feuille de style xslt dont le résultat est un document HTML
       contenant le texte et la POS de chaque mot en rouge -->
    
        <xsl:template match="/">
            <html>
                <head>
                    <title>Exercice 15 : Question 2</title>
                </head>
                <body>
                    <H1 align="center">
                        <xsl:value-of select="//title"/>
                    </H1>
                    <p style="text-align:justify">
                        <xsl:apply-templates select="/baselexicometrique/trame/items"/>
                    </p>
                </body>
            </html>
        </xsl:template>
        <xsl:template match="/baselexicometrique/trame/items">
            <xsl:for-each select="./item">
                <xsl:choose>
                    <xsl:when test="f='#'">
                        <xsl:text/>
                    </xsl:when>
                    <xsl:when test="f='£'">
                    </xsl:when>
                    <xsl:when test="f='§'">
                        <xsl:text>§</xsl:text>
                        <br/>
                    </xsl:when>
                    <xsl:when test="f='RETURN'">
                        <br/>
                    </xsl:when>
                    <xsl:when test="f=' ' or ./c='-'">
                        <xsl:text> </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        
                            <xsl:value-of select="./f"/>
                            (<font color="red">
                                <xsl:value-of select="./c"/>
                            </font>)
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
        </xsl:template>
    
</xsl:stylesheet>