<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="4.0" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title> Exercice 14, partie 2 - Noélie BOTTERO, Yimina </title>
            </head>
            <body>
                <h1 align="center"> Exercice 14, Partie2, XSLT 1 </h1>
                <table align="center" border="1">
                    <tr>
                        <th>Numéro</th>
                        <th>Type</th>
                        <th>Lemme</th>
                        <th>POS</th>
                        <th>info_grammaticales</th>
                        <th>Dépendance</th>
                    </tr>
                    <xsl:for-each select="//p">
                        <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                            <tr><td colspan="6"> <b>Titre_numéro</b> </td></tr>
                        <xsl:for-each select=".//item">      
                        <tr>    
                            <td><span style="color:#F00"><xsl:value-of select="a[1]"/></span></td>
                            <td><xsl:value-of select="a[2]"/></td>
                            <td><xsl:value-of select="a[3]"/></td>
                            <td><xsl:value-of select="a[4]"/></td>
                            <td><xsl:value-of select="a[6]"/></td>
                            <td><xsl:value-of select="a[8]"/></td>
                        </tr>    
                     </xsl:for-each> 
                        </xsl:if>
                    </xsl:for-each>
                                           
                </table>
            </body>
        </html>
     </xsl:template>
</xsl:stylesheet>