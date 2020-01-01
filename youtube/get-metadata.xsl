<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" omit-xml-declaration="yes"/>
<xsl:template match="/">
<xsl:for-each select="//title">
    <xsl:text>pageTitle&#xa;</xsl:text>
    <xsl:value-of select="text()"/>
    <xsl:text>&#xa;</xsl:text>
</xsl:for-each>
<xsl:for-each select="(//meta[@itemprop and @content])[position() != last()]">
    <xsl:value-of select="@itemprop"/>
    <xsl:text>&#xa;</xsl:text>
    <xsl:value-of select="@content"/>
    <xsl:text>&#xa;</xsl:text>
</xsl:for-each>
<xsl:for-each select="(//meta[@itemprop and @content])[last()]">
    <xsl:value-of select="@itemprop"/>
    <xsl:text>&#xa;</xsl:text>
    <xsl:value-of select="@content"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
