<?xml version='1.0'?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic-i18n="http://www.idiominc.com/opentopic/i18n"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    exclude-result-prefixes="opentopic-index opentopic opentopic-i18n opentopic-func dita-ot xs ot-placeholder"
    version="2.0">
    
<xsl:variable name="smtx.productName">
	<xsl:variable name="mapProdname" select="(/*/opentopic:map//*[contains(@class, ' topic/prodname ')])[1]"/>
	<xsl:choose>
		<xsl:when test="$mapProdname">
			<xsl:value-of select="$mapProdname"/>
		</xsl:when>
			<xsl:otherwise>
				<xsl:call-template name="getVariable">
					<xsl:with-param name="id" select="'Product Name'"/>
				</xsl:call-template>
			</xsl:otherwise>
	</xsl:choose>
</xsl:variable>

<xsl:variable name="smtx.productVersion" select="(/*/opentopic:map//*[contains(@class,' topic/vrm')]/@version)[1]"/>

<xsl:variable name="smtx.pubDate" select="(/*/opentopic:map//*[contains(@class,' topic/revised ')]/@golive)[1]"/>

<xsl:variable name="smtx.bookTitle">
	<xsl:choose>
		<xsl:when test="exists($map/*[contains(@class, ' bookmap/booktitle ')]/*[contains(@class,' bookmap/mainbooktitle ')])">
			<xsl:value-of>
				<xsl:apply-templates select="$map/*[contains(@class, ' bookmap/booktitle ')]/*[contains(@class,' bookmap/mainbooktitle ')][1]" mode="dita-ot:text-only"/>
			</xsl:value-of>
		</xsl:when>
		<xsl:when test="exists($map/*[contains(@class,' topic/title ')])">
			<xsl:value-of>
				<xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]" mode="dita-ot:text-only"/>
			</xsl:value-of>
		</xsl:when>
		<xsl:when test="exists(//*[contains(@class, ' map/map ')]/@title)">
			<xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of>
				<xsl:apply-templates select="descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]" mode="dita-ot:text-only"/>
			</xsl:value-of>
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>

<xsl:variable name="smtx.copyYear">
	<xsl:choose>
		<xsl:when test="$map//*[contains(@class,' topic/data bookmap/copyrfirst ')]//*[contains(@class, ' topic/ph bookmap/year ')]">
			<xsl:apply-templates select="$map//*[contains(@class,' topic/data bookmap/copyrfirst ')]//*[contains(@class, ' topic/ph bookmap/year ')]"/>
		</xsl:when>
		<xsl:when test="$map//*[contains(@class,' topic/copyryear ')]/@year">
			<xsl:apply-templates select="$map//*[contains(@class,' topic/copyryear ')]/@year"/>
		</xsl:when>
		<xsl:otherwise>
			<xsl:call-template name="getVariable">
				<xsl:with-param name="id" select="'Copy Year'"/>
			</xsl:call-template>
		</xsl:otherwise>
	</xsl:choose>
</xsl:variable>

</xsl:stylesheet>
