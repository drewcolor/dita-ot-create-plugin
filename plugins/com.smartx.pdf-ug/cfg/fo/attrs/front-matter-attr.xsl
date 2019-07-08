<?xml version='1.0'?>

<!-- 
Copyright © 2004-2006 by Idiom Technologies, Inc. All rights reserved. 
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
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="2.0">

    <xsl:attribute-set name="__frontmatter__title" use-attribute-sets="common.title">
        <xsl:attribute name="space-before">24pt</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
        <xsl:attribute name="font-size">36pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="color">black</xsl:attribute>
    </xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__product">
        <xsl:attribute name="space-before">24pt</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
        <xsl:attribute name="font-size">36pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="font-family">Source Han Sans CN, Trebuchet MS, Arial Unicode MS, Helvetica</xsl:attribute>
		<xsl:attribute name="color">#0096ff</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__logo">
		<xsl:attribute name="text-align">left</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__link">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
		<xsl:attribute name="font-weight">bold</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="font-family">Source Han Sans CN, Trebuchet MS, Arial Unicode MS, Helvetica</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__date">
		<xsl:attribute name="font-size">12pt</xsl:attribute>
		<xsl:attribute name="text-align">left</xsl:attribute>
		<xsl:attribute name="font-family">Source Han Sans CN, Trebuchet MS, Arial Unicode MS, Helvetica</xsl:attribute>
        <xsl:attribute name="line-height">140%</xsl:attribute> 
	</xsl:attribute-set>	
	
<!--	<xsl:attribute-set name="__frontmatter__logo__container">
		<xsl:attribute name="position">absolute</xsl:attribute>
		<xsl:attribute name="top">3in</xsl:attribute>
		<xsl:attribute name="left">1in</xsl:attribute>		
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__product__container">
		<xsl:attribute name="position">absolute</xsl:attribute>
		<xsl:attribute name="top">3in</xsl:attribute>
		<xsl:attribute name="left">4in</xsl:attribute>
	</xsl:attribute-set>-->
	
	<xsl:attribute-set name="__frontmatter__logo__container">
		<xsl:attribute name="position">absolute</xsl:attribute>
		<xsl:attribute name="top">0.5in</xsl:attribute>
		<xsl:attribute name="left">0.5in</xsl:attribute>		
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__product__container">
		<xsl:attribute name="position">absolute</xsl:attribute>
		<xsl:attribute name="top">2in</xsl:attribute>
		<xsl:attribute name="left">1in</xsl:attribute>
		<xsl:attribute name="right">1in</xsl:attribute>
	</xsl:attribute-set>
	
	<xsl:attribute-set name="__frontmatter__date__container">
	    <xsl:attribute name="space-before">24pt</xsl:attribute>
        <xsl:attribute name="space-before.conditionality">retain</xsl:attribute>
		<xsl:attribute name="position">relative</xsl:attribute>
	</xsl:attribute-set>

</xsl:stylesheet>