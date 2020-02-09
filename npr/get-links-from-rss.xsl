<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" indent="no"/>
    <xsl:template match="/"><xsl:for-each select="//item">
link
<xsl:value-of select="enclosure/@url" disable-output-escaping="yes" />
name
<xsl:value-of select="title" disable-output-escaping="yes" />
id
<xsl:value-of select="guid" disable-output-escaping="yes" />
date
<xsl:value-of select="pubDate" disable-output-escaping="yes" />
</xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
