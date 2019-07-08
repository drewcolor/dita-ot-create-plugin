<?xml version="1.0" encoding="utf-8"?>
<!--
This file is part of the DITA Open Toolkit project.
See the accompanying LICENSE file for applicable license.
-->
<!-- (c) Copyright Suite Solutions -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">


  <!-- The default of 215.9mm x 279.4mm is US Letter size (8.5x11in) -->
  <!--<xsl:variable name="page-width">215.9mm</xsl:variable>
  <xsl:variable name="page-height">279.4mm</xsl:variable>-->
  <xsl:variable name="page-width">210mm</xsl:variable>
  <xsl:variable name="page-height">297mm</xsl:variable>

  <xsl:variable name="body-margin">25.4mm</xsl:variable>
  
  <xsl:variable name="page-margin-outside-front">0in</xsl:variable>
  <xsl:variable name="page-margin-inside-front">0in</xsl:variable>
  <xsl:variable name="page-margin-top-front">0in</xsl:variable>
  <xsl:variable name="page-margin-bottom-front">0in</xsl:variable>
  
  <xsl:variable name="default-line-height">12pt</xsl:variable>
  
  <xsl:variable name="chapterLayout" select="if (normalize-space($antArgsChapterLayout)) then $antArgsChapterLayout else 'BASIC'"/>
  
</xsl:stylesheet>
