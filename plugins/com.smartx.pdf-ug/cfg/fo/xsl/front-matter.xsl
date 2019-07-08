<?xml version='1.0'?>



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    exclude-result-prefixes="opentopic"
    version="2.0">

    <xsl:template name="createFrontMatter">
      <xsl:if test="$generate-front-cover">
        <fo:page-sequence master-reference="front-matter" xsl:use-attribute-sets="page-sequence.cover">
            <xsl:call-template name="insertFrontMatterStaticContents"/>
            <fo:flow flow-name="xsl-region-body">
              <fo:block-container xsl:use-attribute-sets="__frontmatter">
                <xsl:call-template name="createFrontCoverContents"/>
              </fo:block-container>
            </fo:flow>
        </fo:page-sequence>
      </xsl:if>
    </xsl:template>
  
  <xsl:template name="createFrontCoverContents">
    <!--
	
	<fo:block xsl:use-attribute-sets="__frontmatter__product">
      <xsl:value-of select="$smtx.productName"/><xsl:text> </xsl:text>
      <xsl:value-of select="$smtx.productVersion"/>
    </fo:block>
	
	-->
	<!-- set the title -->
    
	<!--
	<fo:block xsl:use-attribute-sets="__frontmatter__title">-->
      <!--
	  <xsl:choose>
        <xsl:when test="$map/*[contains(@class,' topic/title ')][1]">
          <xsl:apply-templates select="$map/*[contains(@class,' topic/title ')][1]"/>
        </xsl:when>
        <xsl:when test="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]">
          <xsl:apply-templates select="$map//*[contains(@class,' bookmap/mainbooktitle ')][1]"/>
        </xsl:when>
        <xsl:when test="//*[contains(@class, ' map/map ')]/@title">
          <xsl:value-of select="//*[contains(@class, ' map/map ')]/@title"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="/descendant::*[contains(@class, ' topic/topic ')][1]/*[contains(@class, ' topic/title ')]"/>
        </xsl:otherwise>
      </xsl:choose>-->
	  
	  <!--
	  <xsl:value-of select="$smtx.bookTitle"/>
    </fo:block>-->

	<fo:block-container xsl:use-attribute-sets="__frontmatter__product__container">
		<fo:block xsl:use-attribute-sets="__frontmatter__product">
		  <xsl:value-of select="$smtx.productName"/><xsl:text> </xsl:text>
		  <xsl:value-of select="$smtx.productVersion"/>
		</fo:block>
		<fo:block xsl:use-attribute-sets="__frontmatter__title">
		  <xsl:value-of select="$smtx.bookTitle"/>
		</fo:block>
		<fo:block-container xsl:use-attribute-sets="__frontmatter__date__container">
		<fo:block xsl:use-attribute-sets="__frontmatter__date">
		  <xsl:text>产品发布日期：</xsl:text>
		  <xsl:value-of select="$smtx.pubDate"/>
		</fo:block>
		<fo:block xsl:use-attribute-sets="__frontmatter__date">
		  <xsl:text>文档更新日期：</xsl:text>
		  <xsl:value-of select="$smtx.currentDate"/>
		</fo:block>
		<fo:block xsl:use-attribute-sets="__frontmatter__date">
		  <xsl:if test="$DRAFT='yes'"><xsl:text>注意：该版本文档仍在开发中，当前草稿仅供预览。</xsl:text></xsl:if>
		</fo:block>
		</fo:block-container>
	</fo:block-container>



	
	<!-- 20190704 The following added a logo -->
	<fo:block-container xsl:use-attribute-sets="__frontmatter__logo__container">
		<fo:block xsl:use-attribute-sets="__frontmatter__logo">
		  <fo:external-graphic src="url(Customization/OpenTopic/common/artwork/logo.png)"/>
		</fo:block>
		<fo:block xsl:use-attribute-sets="__frontmatter__link">
		<!--<fo:basic-link external-destination="http://www.smartx.com/">http://www.smartx.com/</fo:basic-link>-->
		</fo:block>
	</fo:block-container>
    <!-- set the subtitle -->
    <xsl:apply-templates select="$map//*[contains(@class,' bookmap/booktitlealt ')]"/>
    <fo:block xsl:use-attribute-sets="__frontmatter__owner">
      <xsl:apply-templates select="$map//*[contains(@class,' bookmap/bookmeta ')]"/>
    </fo:block>
  </xsl:template>
    
</xsl:stylesheet>