<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Exercice 14 - Noélie BOTTERO, YIMINA</title>
            </head>
            <body>
                <h1 align="center">Exercice 14 - XSLT - 3</h1>
                <table border="1">
                    <tr> 
                        <th>Fichier initial</th><th>Contenu avec tag - frome [lemme | cat]</th> 
                    </tr>
                <xsl:for-each select="//item">                       
                    <tr>
                            <td><xsl:value-of select="./@number"/></td>
                            <td>
                                
                                <xsl:for-each select=".//element">
                                    <xsl:choose>
                                        <xsl:when test="(starts-with(data[1],'NOM') and starts-with(./following-sibling::element[1]/data[1],'ADJ')) or
                                            (starts-with(data[1],'ADJ') and starts-with(./preceding-sibling::element[1]/data[1],'NOM'))">
                                            <mark> <xsl:value-of select="data[3]"/></mark>    
                                        </xsl:when>
                                        <xsl:otherwise>
                                         <xsl:value-of select="data[3]"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    [<xsl:value-of select="data[2]"/>|<xsl:value-of select="data[1]"/>]
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>