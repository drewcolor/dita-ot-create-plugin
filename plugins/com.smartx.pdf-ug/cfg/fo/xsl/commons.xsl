<?xml version='1.0'?>

<!--
Copyright ? 2004-2006 by Idiom Technologies, Inc. All rights reserved.
IDIOM is a registered trademark of Idiom Technologies, Inc. and WORLDSERVER
and WORLDSTART are trademarks of Idiom Technologies, Inc. All other
trademarks are the property of their respective owners.

IDIOM TECHNOLOGIES, INC. IS DELIVERING THE SOFTWARE "AS IS," WITH
ABSOLUTELY NO WARRANTIES WHATSOEVER, WHETHER EXPRESS OR IMPLIED,  AND IDIOM
TECHNOLOGIES, INC. DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE AND WARRANTY OF NON-INFRINGEMENT. IDIOM TECHNOLOGIES, INC. SHALL NOT
BE LIABLE FOR INDIRECT, INCIDENTAL, SPECIAL, COVER, PUNITIVE, EXEMPLARY,
RELIANCE, OR CONSEQUENTIAL DAMAGES (INCLUDING BUT NOT LIMITED TO LOSS OF
ANTICIPATED PROFIT), ARISING FROM ANY CAUSE UNDER OR RELATED TO  OR ARISING
OUT OF THE USE OF OR INABILITY TO USE THE SOFTWARE, EVEN IF IDIOM
TECHNOLOGIES, INC. HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

Idiom Technologies, Inc. and its licensors shall not be liable for any
damages suffered by any person as a result of using and/or modifying the
Software or its derivatives. In no event shall Idiom Technologies, Inc.'s
liability for any damages hereunder exceed the amounts received by Idiom
Technologies, Inc. as a result of this transaction.

These terms and conditions supersede the terms and conditions in any
licensing agreement to the extent that such terms and conditions conflict
with those set forth herein.

This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:opentopic="http://www.idiominc.com/opentopic"
    xmlns:opentopic-index="http://www.idiominc.com/opentopic/index"
    xmlns:opentopic-func="http://www.idiominc.com/opentopic/exsl/function"
    xmlns:dita2xslfo="http://dita-ot.sourceforge.net/ns/200910/dita2xslfo"
    xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
    xmlns:ot-placeholder="http://suite-sol.com/namespaces/ot-placeholder"
    exclude-result-prefixes="dita-ot ot-placeholder opentopic opentopic-index opentopic-func dita2xslfo xs"
    version="2.0">
<!--
    <xsl:template name="insertChapterFirstpageStaticContent">
      <xsl:param name="type" as="xs:string"/>
      <xsl:apply-templates select="." mode="insertChapterFirstpageStaticContent">
        <xsl:with-param name="type" select="$type" as="xs:string"/>
      </xsl:apply-templates>
    </xsl:template>
-->
   <xsl:template match="*" mode="insertChapterFirstpageStaticContent">
        <xsl:param name="type" as="xs:string"/>
        <fo:block>
            <xsl:attribute name="id">
                <xsl:call-template name="generate-toc-id"/>
            </xsl:attribute>
            <xsl:choose>
                <xsl:when test="$type = 'chapter'">
                    <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                        <xsl:call-template name="getVariable">
                            <xsl:with-param name="id" select="'Chapter with number'"/>
                            <xsl:with-param name="params">
                                <number>
                                    <fo:inline xsl:use-attribute-sets="__chapter__frontmatter__number__container">
                                        <xsl:apply-templates select="key('map-id', @id)[1]" mode="topicTitleNumber"/>
                                    </fo:inline>
                                </number>
                            </xsl:with-param>
                        </xsl:call-template>
                    </fo:block>
                </xsl:when>
                <xsl:when test="$type = 'appendix'">
                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="'Appendix with number'"/>
                                <xsl:with-param name="params">
                                    <number>
                                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__number__container">
                                            <xsl:apply-templates select="key('map-id', @id)[1]" mode="topicTitleNumber"/>
                                        </fo:block>
                                    </number>
                                </xsl:with-param>
                            </xsl:call-template>
                        </fo:block>
                </xsl:when>
              <xsl:when test="$type = 'appendices'">
                <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                  <xsl:call-template name="getVariable">
                    <xsl:with-param name="id" select="'Appendix with number'"/>
                    <xsl:with-param name="params">
                      <number>
                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__number__container">
                          <xsl:text>&#xA0;</xsl:text>
                        </fo:block>
                      </number>
                    </xsl:with-param>
                  </xsl:call-template>
                </fo:block>
              </xsl:when>
                <xsl:when test="$type = 'part'">
                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="'Part with number'"/>
                                <xsl:with-param name="params">
                                    <number>
                                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__number__container">
                                            <xsl:apply-templates select="key('map-id', @id)[1]" mode="topicTitleNumber"/>
                                        </fo:block>
                                    </number>
                                </xsl:with-param>
                            </xsl:call-template>
                        </fo:block>
                </xsl:when>
                <xsl:when test="$type = 'preface'">
                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="'Preface title'"/>
                            </xsl:call-template>
                        </fo:block>
                </xsl:when>
                <xsl:when test="$type = 'notices'">
                        <fo:block xsl:use-attribute-sets="__chapter__frontmatter__name__container">
                            <xsl:call-template name="getVariable">
                                <xsl:with-param name="id" select="'Notices title'"/>
                            </xsl:call-template>
                        </fo:block>
                </xsl:when>
            </xsl:choose>
        </fo:block>
    </xsl:template>
	
<xsl:template match="*" mode="processTopicChapterInsideFlow">
        <fo:block xsl:use-attribute-sets="topic">
            <xsl:call-template name="commonattributes"/>
            <xsl:variable name="level" as="xs:integer">
              <xsl:apply-templates select="." mode="get-topic-level"/>
            </xsl:variable>
            <xsl:if test="$level eq 1">
                <fo:marker marker-class-name="current-topic-number">
                  <xsl:variable name="topicref" 
                    select="key('map-id', ancestor-or-self::*[contains(@class, ' topic/topic ')][1]/@id)[1]" 
                    as="element()?"/>
                  <xsl:for-each select="$topicref">
                    <xsl:apply-templates select="." mode="topicTitleNumber"/>
                  </xsl:for-each>
                </fo:marker>
                <xsl:apply-templates select="." mode="insertTopicHeaderMarker"/>
            </xsl:if>
            <xsl:apply-templates select="." mode="customTopicMarker"/>

            <xsl:apply-templates select="*[contains(@class,' topic/prolog ')]"/>

            <xsl:apply-templates select="." mode="insertChapterFirstpageStaticContent">
                <xsl:with-param name="type" select="'chapter'"/>
            </xsl:apply-templates>

            <fo:block xsl:use-attribute-sets="topic.title">
                <xsl:apply-templates select="." mode="customTopicAnchor"/>
                <xsl:call-template name="pullPrologIndexTerms"/>
                <xsl:apply-templates select="*[contains(@class,' ditaot-d/ditaval-startprop ')]"/>
                <xsl:for-each select="*[contains(@class,' topic/title ')]">
                    <xsl:apply-templates select="." mode="getTitle"/>
                </xsl:for-each>
            </fo:block>

            <xsl:choose>
              <xsl:when test="$chapterLayout='BASIC'">
                  <xsl:apply-templates select="* except(*[contains(@class, ' topic/title ') or contains(@class,' ditaot-d/ditaval-startprop ') or
                      contains(@class, ' topic/prolog ') or contains(@class, ' topic/topic ')])"/>
                  <!--xsl:apply-templates select="." mode="buildRelationships"/-->
              </xsl:when>
              <xsl:otherwise>
                  <xsl:apply-templates select="." mode="createMiniToc"/>
              </xsl:otherwise>
            </xsl:choose>

            <xsl:apply-templates select="*[contains(@class,' topic/topic ')]"/>
            <xsl:call-template name="pullPrologIndexTerms.end-range"/>
        </fo:block>
    </xsl:template>

</xsl:stylesheet>
