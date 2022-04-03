<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:text> Exercice 14 - Noélie BOTTERO, YIMINA</xsl:text>
        <xsl:text>
       
        </xsl:text>
        <xsl:text>Exercice 14 partie 2 xslt exercice 5 : Construire une feuille de styles pour extraire (au format TXT) les items en relation de dépendance syntaxique de type OBJ (les classer et les compter).</xsl:text>
        <xsl:text>
        </xsl:text>
            
       <xsl:text>le nombre des relations OBJ : </xsl:text><xsl:value-of select="count(//p/item/a[8][contains(text(),'obj')])"/>     
          <xsl:text>  
        </xsl:text>
        <xsl:text>  
        </xsl:text>
        <xsl:text>Titre</xsl:text>
        <xsl:text> 
            </xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">
                    <xsl:if test="(./a[8]='obj')">
                        <xsl:variable name="obj" select="./a[2]"/>
                        <xsl:value-of select="$obj"/>
                        <xsl:text> 
                        </xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
        
        <xsl:text>
            
        </xsl:text>
        <xsl:text>Description</xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[1]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">
                    <xsl:if test="(./a[8]='obj')">
                        <xsl:variable name="obj" select="./a[2]"/>
                        <xsl:value-of select="$obj"/>

                        <xsl:text> 
                        </xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>