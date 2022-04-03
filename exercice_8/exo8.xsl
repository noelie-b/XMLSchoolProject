<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>	
    
    <!-- Yimina & Noélie BOTTERO
       Exercice 8
       Feuille de style xslt produisant un tableau HTML
       contenant les données du fichier XML Infirmiere. -->
    
    <xsl:template match="/">

        <xsl:text disable-output-escaping='yes'>&#xD;&#xA;</xsl:text>
        <xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html&gt;</xsl:text>
        <xsl:text disable-output-escaping='yes'>&#xD;&#xA;</xsl:text>
        
        <html>
            <body>
                <table border="2" width="50%" style="border-width : 3px solid black; table-layout:fixed; border-collapse: collapse;">
                    <tr style="font-weight : bold; background-color : #9FEBCA;" align="center">
                        <td>Infirmiere</td>
                        <td>Age</td>
                        <td>Années d'étude</td>
                        <td>Diplôme</td>
                        <td>Ancienneté</td>
                        <td>Service</td>
                    </tr>
                    <xsl:for-each-group select="//ligne" group-by="classe_anciennete">
                        <tr style="text-align: center; font-weight : bold; background: #E9B6CE; color: black;"><td colspan="6"><xsl:value-of select="current-grouping-key()"/></td></tr>
                        <xsl:for-each select="current-group()">
                            <tr>
                                <td align="center"><xsl:value-of select="infirmiere"/></td>
                                <td align="center"><xsl:value-of select="age"/></td>
                                <td align="center"><xsl:value-of select="annees_etudes"/></td>
                                <td align="center"><xsl:value-of select="diplome"/></td>
                                <td align="center"><xsl:value-of select="anciennete_neonatalite"/></td>
                                <td align="center"><xsl:value-of select="service"/></td>
                            </tr>
                        </xsl:for-each>
                    </xsl:for-each-group>
                </table>
            </body>
        </html>
        
    </xsl:template>
     
</xsl:stylesheet>