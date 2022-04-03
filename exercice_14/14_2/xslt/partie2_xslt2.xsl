<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title> EXO14_2_2, Noélie BOTTERO, YIMINA </title>
            </head>
            <style type="text/css">
                table{
                empty-cells: hide;
                }
                td{
                empty-cells: hide;
                }
                
                </style>
            <body>
                <h1 align="center"> Paire titre - description </h1>
                <table align="center" border="1">
                    <tr>
                        <th>Titre</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="//p">
                        <xsl:choose>
                            <xsl:when test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                                <tr>
                                <td>
                                    <xsl:for-each select="./item">
                                        <xsl:value-of select="./a[2]"/>
                                        <xsl:text> </xsl:text>
                                    </xsl:for-each>
                                </td>
                                    <td style="empty-cells:hide;"> </td>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr>
                              <td> </td>
                                <td>
                                    <xsl:for-each select="./item">
                                        <xsl:value-of select="./a[2]"/>
                                        <xsl:text> </xsl:text>
                                    </xsl:for-each>
                                </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
