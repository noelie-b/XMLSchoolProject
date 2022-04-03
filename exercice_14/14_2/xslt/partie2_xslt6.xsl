<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8"/>
    <xsl:template match="/">
                <xsl:text> Exercice 14 - Noélie BOTTERO, YIMINA</xsl:text>
                <xsl:text>
       
        </xsl:text>
                <xsl:text>Exercice 14 partie 2 xslt exercice 6 : Construire une feuille de styles pour extraire la liste des POS en relation de dépendance syntaxique de type OBJ (les classer et les compter).</xsl:text>
                <xsl:text>
        </xsl:text>
                
                <xsl:text>le nombre total des POS en relation OBJ : </xsl:text><xsl:value-of select="count(//p/item/a[8][contains(text(),'obj')])"/>     
                <xsl:text>  
        </xsl:text>
                <xsl:text>  
        </xsl:text>
        <xsl:text> </xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[1]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">
                    <xsl:if test="(./a[8]='obj')">
                        <xsl:variable name="type" select="./a[3]"/>
                        <xsl:value-of select="$type"/>
                        <xsl:text> </xsl:text>
                        <xsl:variable name="pos" select="./a[4]"/>
                        <xsl:value-of select="$pos"/>
                        <xsl:text> </xsl:text>
                        <xsl:variable name="obj" select="./a[8]"/>
                        <xsl:value-of select="$obj"/>
                        <xsl:text> 
                        </xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>