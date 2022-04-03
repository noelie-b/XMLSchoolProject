<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Exercice 14 - Noélie BOTTERO, YIMINA</title>
            </head>
            <body>
                <h1 align="center">Exercice 14 - partie 2 - XSLT - 4 - titre</h1>
                <table border="1" align="center">
                    <tr> 
                        <th>Numéro</th><th>Type</th><th>lemme</th><th>POS</th>
                    </tr>
                    <xsl:for-each select="//p">
                        <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                            <xsl:for-each select="./item">
                                <xsl:choose>
                                    <xsl:when test="(./a[4][contains(text(),'NOUN')]) and following-sibling::item[1][./a[4][contains(text(),'ADJ')]]">
                                        <tr>
                                            <td align="center">
                                                <mark><xsl:value-of select=".//a[1]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select=".//a[2]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select=".//a[3]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select=".//a[4]"/></mark>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <mark><xsl:value-of select="following-sibling::item[1]/a[1]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select="following-sibling::item[1]/a[2]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select="following-sibling::item[1]/a[3]"/></mark>
                                            </td>
                                            <td align="center">
                                                <mark><xsl:value-of select="following-sibling::item[1]/a[4]"/></mark>
                                            </td>
                                        </tr>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <tr>
                                            <td align="center">
                                                <xsl:value-of select=".//a[1]"/>
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select=".//a[2]"/>
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select=".//a[3]"/>
                                            </td>
                                            <td align="center">
                                                <xsl:value-of select=".//a[4]"/>
                                            </td>
                                        </tr>
                                    </xsl:otherwise>
                                </xsl:choose> 
                            </xsl:for-each>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>