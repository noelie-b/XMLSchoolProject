<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="text" encoding="UTF-8"/>
    
    <!-- Yimina & Noélie BOTTERO
       Exercice 15.1
       Feuille de style xslt produisant un document au format TXT
       contenant le texte d'un document xml annoté -->
    
    
    <xsl:template match="/">
        <xsl:for-each-group select="//item" group-ending-with="item[f/text() = 'RETURN']">
            <xsl:variable name="sentence" select="string-join(current-group()/f/text(), ' ')"/>
            <xsl:value-of select="normalize-space(replace(translate(concat(upper-case(substring($sentence, 1, 1)), substring($sentence, 2), ' '[not(last())]), '#£§', ''), '\s*RETURN', '.'))"/>
            <xsl:text>&#xD;&#xA;</xsl:text>
        </xsl:for-each-group>
    </xsl:template>
    
</xsl:stylesheet>