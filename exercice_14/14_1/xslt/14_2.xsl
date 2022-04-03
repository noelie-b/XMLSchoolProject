<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:text> Exercice 14 - Noélie BOTTERO, YIMINA</xsl:text>
        <xsl:text> Exercice 14 - XSLT - 2</xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:text> Premier patron : VER + NOM </xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:for-each select="//element">
            <xsl:if test="starts-with(data[1],'VER')">
                <xsl:if test="starts-with(./following-sibling::element[1]/data[1],'NOM')">
                    <xsl:variable name="M1" select="data[3]"/>
                    <xsl:variable name="M2" select="./following-sibling::element[1]/data[3]"/>
                    <xsl:text>
                    </xsl:text>
                    <xsl:value-of select="$M1"/><xsl:text> </xsl:text><xsl:value-of select="$M2"/><xsl:text>
                    </xsl:text>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
        <xsl:text> 
</xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:text> Deuxième patron : DET + NOM + VER </xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:for-each select="//element">
            <xsl:if test="starts-with(data[1],'DET')">
                <xsl:if test="starts-with(./following-sibling::element[1]/data[1],'NOM')">
                    <xsl:if test="starts-with(./following-sibling::element[2]/data[1],'VER')">
                        <xsl:variable name="M1" select="data[3]"/>
                        <xsl:variable name="M2" select="./following-sibling::element[1]/data[3]"/>
                        <xsl:variable name="M3" select="./following-sibling::element[2]/data[3]"/>
                        <xsl:text>
                        </xsl:text>
                        <xsl:value-of select="$M1"/><xsl:text> </xsl:text><xsl:value-of select="$M2"/><xsl:text> </xsl:text><xsl:value-of select="$M3"/><xsl:text>
                        </xsl:text>
                </xsl:if>
            </xsl:if>
            </xsl:if>
        </xsl:for-each>
        <xsl:text> 
</xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:text> Troisième patron : DET + NOM + VER + NOM </xsl:text>
        <xsl:text> 
        </xsl:text>
        <xsl:for-each select="//element">
            <xsl:if test="starts-with(data[1],'DET')">
                <xsl:if test="starts-with(./following-sibling::element[1]/data[1],'NOM')">
                    <xsl:if test="starts-with(./following-sibling::element[2]/data[1],'VER')">
                        <xsl:if test="starts-with(./following-sibling::element[3]/data[1],'NOM')">
                        <xsl:variable name="M1" select="data[3]"/>
                        <xsl:variable name="M2" select="./following-sibling::element[1]/data[3]"/>
                        <xsl:variable name="M3" select="./following-sibling::element[2]/data[3]"/>
                        <xsl:variable name="M4" select="./following-sibling::element[3]/data[3]"/>
                        <xsl:text>
                        </xsl:text>
                        <xsl:value-of select="$M1"/><xsl:text> </xsl:text><xsl:value-of select="$M2"/><xsl:text> </xsl:text><xsl:value-of select="$M3"/><xsl:text> </xsl:text><xsl:value-of select="$M4"/><xsl:text>
                        </xsl:text>
                        </xsl:if>
                </xsl:if>
                </xsl:if>
            </xsl:if>
        </xsl:for-each>
        <xsl:text> 
</xsl:text>
        <xsl:text> 
</xsl:text>
        </xsl:template>
</xsl:stylesheet>