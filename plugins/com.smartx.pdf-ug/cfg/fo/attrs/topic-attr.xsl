<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
version="2.0">

    <xsl:attribute-set name="image__block">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__inline">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.title" use-attribute-sets="common.title common.border__bottom">
		<xsl:attribute name="border-after-width">3pt</xsl:attribute>
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after">16.8pt</xsl:attribute>
        <xsl:attribute name="font-size">18pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="padding-top">16.8pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>
	
	<xsl:attribute-set name="topic.title.hide" use-attribute-sets="common.title common.border__bottom">
		<xsl:attribute name="border-after-width">0pt</xsl:attribute>
		<xsl:attribute name="space-before">0pt</xsl:attribute>
		<xsl:attribute name="space-after">30pt</xsl:attribute>
		<xsl:attribute name="font-size">2pt</xsl:attribute>
		<xsl:attribute name="font-weight">normal</xsl:attribute>
		<xsl:attribute name="padding-top">0pt</xsl:attribute>
		<xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
		<xsl:attribute name="border-bottom">0pt solid black</xsl:attribute>
		<xsl:attribute name="color">#ffffff</xsl:attribute>
		<xsl:attribute name="line-height">4pt</xsl:attribute>
    </xsl:attribute-set>
	
    <xsl:attribute-set name="lq" use-attribute-sets="common.blockquote">
        <xsl:attribute name="start-indent">30pt + from-parent(start-indent)</xsl:attribute>
        <xsl:attribute name="end-indent">15pt + from-parent(end-indent)</xsl:attribute>
		<xsl:attribute name="background-color">#fff7d0</xsl:attribute>
		<xsl:attribute name="padding-bottom">1pt</xsl:attribute>
		<xsl:attribute name="padding-left">5pt</xsl:attribute>
		<xsl:attribute name="border-left">3pt solid #ffe564</xsl:attribute>
    </xsl:attribute-set>
	
</xsl:stylesheet>