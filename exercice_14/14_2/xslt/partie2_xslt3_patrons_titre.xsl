<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:text> Exercice 14 - Noélie BOTTERO, YIMINA</xsl:text>
        <xsl:text>
       
        </xsl:text>
        <xsl:text>Exercice 14 partie 2 xslt exercice 3 : extraire 3 patrons de tailles différentes dans le titre</xsl:text>
        <xsl:text>
            
        </xsl:text>
        <xsl:text>Patron 1 NOM-DET-ADP-DET</xsl:text>
        <xsl:text> 
            </xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">                                 
                    <xsl:if test="./a[4] = 'VERB'">
                        <xsl:variable name="M1" select="./a[2]/text()"/>
                        <xsl:if test="./following-sibling::item[1]/a[4]/text() = 'ADV'">
                            <xsl:variable name="M2" select="./following-sibling::item[1]/a[2]/text()"/>
                            <xsl:if test="./following-sibling::item[2]/a[4]/text() = 'ADJ'">
                                <xsl:variable name="M3" select="./following-sibling::item[2]/a[2]/text()"/>
                                <xsl:if test="./following-sibling::item[3]/a[4]/text() = 'ADP'">
                                    <xsl:variable name="M4" select="./following-sibling::item[3]/a[2]/text()"/>
                                    <xsl:value-of select="$M1"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="$M2"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="$M3"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="$M4"/>
                                    <xsl:text> 
                                    </xsl:text>
                                </xsl:if>
                            </xsl:if>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each> 
            </xsl:if>
        </xsl:for-each>
        <xsl:text>
        </xsl:text>
        <xsl:text>
            
        </xsl:text>
        <xsl:text>Patron 2 VERB-ADP</xsl:text>
        <xsl:text> 
            </xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">                                 
                    <xsl:if test="./a[4] = 'VERB'">
                        <xsl:variable name="M1" select="./a[2]/text()"/>
                        <xsl:if test="./following-sibling::item[1]/a[4]/text() = 'ADP'">
                            <xsl:variable name="M2" select="./following-sibling::item[1]/a[2]/text()"/>
                            <xsl:value-of select="$M1"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="$M2"/>
                            <xsl:text>
                        </xsl:text>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each> 
            </xsl:if>
        </xsl:for-each>
        
        <xsl:text>
        </xsl:text>
        <xsl:text>
            
        </xsl:text>
        <xsl:text>Patron 3 NOM-VERB-DET</xsl:text>
        <xsl:text> 
            </xsl:text>
        <xsl:for-each select="//p">
            <xsl:if test="following-sibling::*[2]/item[1]/a[2]/text()='-'">
                <xsl:for-each select="./item">                                 
                    <xsl:if test="./a[4] = 'NOUN'">
                        <xsl:variable name="M1" select="./a[2]/text()"/>
                        <xsl:if test="./following-sibling::item[1]/a[4]/text() = 'VERB'">
                            <xsl:variable name="M2" select="./following-sibling::item[1]/a[2]/text()"/>
                            <xsl:if test="./following-sibling::item[2]/a[4]/text() = 'DET'">
                                <xsl:variable name="M3" select="./following-sibling::item[2]/a[2]/text()"/>
                                <xsl:value-of select="$M1"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$M2"/>
                                <xsl:text> </xsl:text>
                                <xsl:value-of select="$M3"/>
                                <xsl:text> 
                                </xsl:text>
                            </xsl:if>
                        </xsl:if>
                    </xsl:if>
                </xsl:for-each> 
            </xsl:if>
        </xsl:for-each>
        

    </xsl:template>
</xsl:stylesheet>        
