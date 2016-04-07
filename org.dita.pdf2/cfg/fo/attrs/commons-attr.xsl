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

This file is part of the DITA Open Toolkit project hosted on Sourceforge.net.
See the accompanying license.txt file for applicable licenses.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:rx="http://www.renderx.com/XSL/Extensions"
    version="2.0">

    <!--Custom add use variable value to change font size-->
    <!--<xsl:variable name="commons.text-indent" select="'70pt'"/>-->
    <!--<xsl:variable name="side-col-width" select="'70pt'"/>-->
	<xsl:variable name="default-font-size">11pt</xsl:variable>
    <!--end-->
    
    
    <!--Custom add-->
    <xsl:attribute-set name="__title__lines__image__left">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="left">-5pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
        
        <xsl:attribute name="top">-120px</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="__title__lines__image__right">
        <xsl:attribute name="position">absolute</xsl:attribute>
        <xsl:attribute name="right">70pt</xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
        
        <xsl:attribute name="top">-120px</xsl:attribute>
    </xsl:attribute-set>
    <!--end-->
    
    <!--Custom add-->
    <xsl:attribute-set name="__chapter__frontmatter__number__container">
        <!--<xsl:attribute name="color">#0079C2</xsl:attribute>-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="height">2.5cm</xsl:attribute>
        <xsl:attribute name="width">2.5cm</xsl:attribute>
        <xsl:attribute name="top">-1.1cm</xsl:attribute>
        <xsl:attribute name="bottom">0.5cm</xsl:attribute>
        <xsl:attribute name="left">13.5cm</xsl:attribute>
        <xsl:attribute name="position">absolute</xsl:attribute>
        <!--<xsl:attribute name="border-color">green</xsl:attribute>-->
        <!--<xsl:attribute name="border-width">0.011cm</xsl:attribute>-->
        <!--<xsl:attribute name="border-top-style">solid</xsl:attribute>    -->
     </xsl:attribute-set>
        <!--end-->
    
    <!--Custom add-->
    <xsl:attribute-set name="__chapter__frontmatter__title__name__container">
        <xsl:attribute name="color">black</xsl:attribute>
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-size">30pt</xsl:attribute>
        
        <xsl:attribute name="height">2.5cm</xsl:attribute>
        <xsl:attribute name="width">12.5cm</xsl:attribute>
        <xsl:attribute name="top">-1.2cm</xsl:attribute>
        <xsl:attribute name="bottom">0.5cm</xsl:attribute>
        <xsl:attribute name="left">0.2cm</xsl:attribute>
        <xsl:attribute name="position">absolute</xsl:attribute>
        <!--<xsl:attribute name="border-color">red</xsl:attribute>
        <xsl:attribute name="border-width">0.011cm</xsl:attribute>
        <xsl:attribute name="border-style">groove</xsl:attribute>   --> 
    </xsl:attribute-set>
    <!--end-->
    
    <!-- common attribute sets -->
  <xsl:attribute-set name="common.border__top">
    <xsl:attribute name="border-top-style">solid</xsl:attribute>
    <xsl:attribute name="border-top-width">1pt</xsl:attribute>
    <xsl:attribute name="border-top-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.border__bottom">
    <xsl:attribute name="border-bottom-style">solid</xsl:attribute>
    <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
    <xsl:attribute name="border-bottom-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.border__right">
    <xsl:attribute name="border-right-style">solid</xsl:attribute>
    <xsl:attribute name="border-right-width">1pt</xsl:attribute>
    <xsl:attribute name="border-right-color">black</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.border__left">
    <xsl:attribute name="border-left-style">solid</xsl:attribute>
    <xsl:attribute name="border-left-width">1pt</xsl:attribute>
    <xsl:attribute name="border-left-color">black</xsl:attribute>
  </xsl:attribute-set>
    
<!--Custom add Table Borders-->
    <xsl:attribute-set name="table.frame__top">
        <xsl:attribute name="border-top-style">solid</xsl:attribute><!--? hidden-->
        <xsl:attribute name="border-top-width">1pt</xsl:attribute>
        <xsl:attribute name="border-top-color">#0079C2</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.frame__bottom">
        <xsl:attribute name="border-bottom-style">solid</xsl:attribute><!--? hidden-->
        <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
        <xsl:attribute name="border-bottom-color">#0079C2</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.frame__left">
        <xsl:attribute name="border-left-style">hidden</xsl:attribute><!--? hidden-->
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">#0079C2</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.frame__right">
        <xsl:attribute name="border-right-style">hidden</xsl:attribute><!--? hidden-->
        <xsl:attribute name="border-right-width">1pt</xsl:attribute>
        <xsl:attribute name="border-right-color">#0079C2</xsl:attribute>
    </xsl:attribute-set>
    
<!--rows & columns-->

    <xsl:attribute-set name="table.rule__top">
        <xsl:attribute name="border-top-style">none</xsl:attribute><!--? none-->
        <xsl:attribute name="border-top-width">1pt</xsl:attribute>
        <xsl:attribute name="border-top-color">green</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.rule__bottom">
        <xsl:attribute name="border-bottom-style">none</xsl:attribute>
        <xsl:attribute name="border-bottom-width">1pt</xsl:attribute>
        <xsl:attribute name="border-bottom-color">#0079C2</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.rule__left">
        <xsl:attribute name="border-left-style">none</xsl:attribute><!--? none-->
        <xsl:attribute name="border-left-width">1pt</xsl:attribute>
        <xsl:attribute name="border-left-color">green</xsl:attribute>
    </xsl:attribute-set>
    
    <xsl:attribute-set name="table.rule__right">
        <xsl:attribute name="border-right-style">none</xsl:attribute>
        <xsl:attribute name="border-right-width">1pt</xsl:attribute>
        <xsl:attribute name="border-right-color">green</xsl:attribute>
    </xsl:attribute-set>

<!--end-->
  <xsl:attribute-set name="common.border" use-attribute-sets="common.border__top common.border__right common.border__bottom common.border__left"/>

  <xsl:attribute-set name="base-font">
  <!--<xsl:attribute name="font-family">Apple</xsl:attribute>-->
    <xsl:attribute name="font-size"><xsl:value-of select="$default-font-size"/></xsl:attribute>
  </xsl:attribute-set>

  <!-- titles -->
  <xsl:attribute-set name="common.title">
    <xsl:attribute name="font-family">Apple</xsl:attribute>
  </xsl:attribute-set>

  <!-- paragraph-like blocks -->
  <xsl:attribute-set name="common.block">
  <xsl:attribute name="font-family">Apple</xsl:attribute>
    <xsl:attribute name="space-before">0.6em</xsl:attribute>
    <xsl:attribute name="space-after">0.6em</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="common.link">
  <xsl:attribute name="font-family">Apple</xsl:attribute>
      <!--custom add-->
      <xsl:attribute name="color">#0079C2</xsl:attribute>
      <!--end-->
    <xsl:attribute name="font-style">italic</xsl:attribute>
  </xsl:attribute-set>

  <!-- common element specific attribute sets -->

    <xsl:attribute-set name="tm">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tm__content">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-size">75%</xsl:attribute>
        <xsl:attribute name="baseline-shift">20%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="tm__content__service">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-size">40%</xsl:attribute>
        <xsl:attribute name="baseline-shift">50%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="author">
    </xsl:attribute-set>

    <xsl:attribute-set name="source">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.title" use-attribute-sets="common.title">
        <!--Custom add-->
	    <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="color">black</xsl:attribute>
        <!--<xsl:attribute name="color">#0079C2</xsl:attribute>-->
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
		<xsl:attribute name="border-bottom">0pt solid white</xsl:attribute>
        <xsl:attribute name="border-top">0pt solid white</xsl:attribute>
        <!--<xsl:attribute name="space-before">100pt</xsl:attribute>-->
        <xsl:attribute name="space-after"><!--16.8pt-->30pt</xsl:attribute>
        <xsl:attribute name="font-size"><!--18pt-->20pt</xsl:attribute>
        <xsl:attribute name="font-weight">500</xsl:attribute>
        <xsl:attribute name="padding-top">16.8pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <!--<xsl:attribute name="border-left">thin groove #0079C2</xsl:attribute>
        <xsl:attribute name="border-right">1pt groove #0079C2</xsl:attribute>-->
        <xsl:attribute name="text-align">left</xsl:attribute>
                      
    </xsl:attribute-set>
	
	<!--custom add-->
	 <xsl:attribute-set name="topic.title.hide" use-attribute-sets="common.title">
        <!--Custom add-->
	    <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="color">#ffffff</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
		<!--<xsl:attribute name="border-bottom">2pt solid black</xsl:attribute>-->    
        <xsl:attribute name="space-before">0pt</xsl:attribute>
        <xsl:attribute name="space-after"><!--16.8pt-->100pt</xsl:attribute>
        <xsl:attribute name="font-size"><!--18pt-->0pt</xsl:attribute>
        <xsl:attribute name="font-weight">500</xsl:attribute>
        <xsl:attribute name="padding-top">16.8pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <!--<xsl:attribute name="border-left">thin groove #0079C2</xsl:attribute>
        <xsl:attribute name="border-right">1pt groove #0079C2</xsl:attribute>-->
        <xsl:attribute name="line-height">4pt</xsl:attribute>
                      
    </xsl:attribute-set>
	<!--end-->

    <xsl:attribute-set name="topic.title__content">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="line-height">100%</xsl:attribute>
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.title" use-attribute-sets="common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="color">#0079C2</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-weight">500</xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">15pt</xsl:attribute>
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">5pt</xsl:attribute>
        <xsl:attribute name="font-size">15pt</xsl:attribute>
        <!--<xsl:attribute name="font-weight">bold</xsl:attribute>-->
        <xsl:attribute name="padding-top">12pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.title__content">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.title" use-attribute-sets="common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">12pt</xsl:attribute>
        <xsl:attribute name="space-after">2pt</xsl:attribute>
        <xsl:attribute name="font-size">12pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.title__content">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.title__content">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.title__content">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title" use-attribute-sets="base-font common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-style">italic</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic.topic.topic.topic.topic.topic.title__content">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="section.title" use-attribute-sets="common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="space-before">15pt</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="example.title" use-attribute-sets="common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="keep-with-next.within-column">always</xsl:attribute>
        <xsl:attribute name="space-after">5pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fig">
		<!--<!-\-custom add-\->
		<xsl:attribute name="content-width">2.00in</xsl:attribute>
		<xsl:attribute name="content-height">2.00in</xsl:attribute>
		<xsl:attribute name="scaling">non-uniform</xsl:attribute>
		<!-\-end-\->-->
    </xsl:attribute-set>

    <xsl:attribute-set name="fig.title" use-attribute-sets="base-font common.title">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="space-before">5pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="keep-with-previous.within-page">always</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topic" use-attribute-sets="base-font">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="titlealts" use-attribute-sets="common.border">
        <xsl:attribute name="background-color">#f0f0d0</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="navtitle" use-attribute-sets="common.title">
    </xsl:attribute-set>

    <xsl:attribute-set name="navtitle__label">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body__toplevel" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body__secondLevel" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="body" use-attribute-sets="base-font">
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="abstract" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="shortdesc">
    </xsl:attribute-set>

    <xsl:attribute-set name="topic__shortdesc" use-attribute-sets="body">
    </xsl:attribute-set>

    <xsl:attribute-set name="section" use-attribute-sets="base-font">
        <xsl:attribute name="line-height"><xsl:value-of select="$default-line-height"/></xsl:attribute>
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
    </xsl:attribute-set>
    <xsl:attribute-set name="section__content">
    </xsl:attribute-set>

    <xsl:attribute-set name="example" use-attribute-sets="base-font"><!-- common.border-->
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <!--<xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>-->
        <!--end-->
        <xsl:attribute name="line-height"><xsl:value-of select="$default-line-height"/></xsl:attribute>
        <xsl:attribute name="space-before">0.6em</xsl:attribute>
        <!--<xsl:attribute name="start-indent">36pt + from-parent(start-indent)</xsl:attribute>-->
        <xsl:attribute name="end-indent">36pt</xsl:attribute>
        <!--<xsl:attribute name="padding">5pt</xsl:attribute>-->
    </xsl:attribute-set>
    <xsl:attribute-set name="example__content">
        <!--custom add-->
        <!--<xsl:attribute name="padding">5pt</xsl:attribute>-->
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="desc">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prolog" use-attribute-sets="base-font">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <!--<xsl:attribute name="start-indent">72pt</xsl:attribute>-->
    </xsl:attribute-set>

    <xsl:attribute-set name="p" use-attribute-sets="common.block">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="text-indent">0em</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq" use-attribute-sets="base-font common.border">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="padding-left">6pt</xsl:attribute>
        <!--<xsl:attribute name="start-indent">92pt</xsl:attribute>-->
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_simple" use-attribute-sets="base-font common.border">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">10pt</xsl:attribute>
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="padding-left">6pt</xsl:attribute>
        <!--<xsl:attribute name="start-indent">92pt</xsl:attribute>-->
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">start</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_link" use-attribute-sets="base-font common.link">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="lq_title" use-attribute-sets="base-font">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-after">10pt</xsl:attribute>
        <xsl:attribute name="end-indent">92pt</xsl:attribute>
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="q">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="figgroup">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note" use-attribute-sets="common.block">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <!--<xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>-->
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="note__table" use-attribute-sets="common.block">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <!--<xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>-->
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__column">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="column-number">1</xsl:attribute>
        <xsl:attribute name="column-width">32pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__column">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
      <xsl:attribute name="column-number">2</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__image__entry">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="padding-right">5pt</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__text__entry">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <!--<xsl:attribute name="color">#990033</xsl:attribute>-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__note">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__notice">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__tip">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__fastpath">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__restriction">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__important">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__remember">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__attention">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__caution">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__danger">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__warning">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="note__label__other">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="pre" use-attribute-sets="base-font common.block">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="white-space-treatment">preserve</xsl:attribute>
        <xsl:attribute name="white-space-collapse">false</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
        <xsl:attribute name="background-color">#f0f0f0</xsl:attribute>
        <xsl:attribute name="font-family">monospace</xsl:attribute>
        <xsl:attribute name="line-height">106%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__spectitle">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__top">
        <xsl:attribute name="border-top-color">black</xsl:attribute>
        <xsl:attribute name="border-top-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__bot">
        <xsl:attribute name="border-bottom-color">black</xsl:attribute>
        <xsl:attribute name="border-bottom-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__sides">
        <xsl:attribute name="border-left-color">black</xsl:attribute>
        <xsl:attribute name="border-left-width">thin</xsl:attribute>
        <xsl:attribute name="border-right-color">black</xsl:attribute>
        <xsl:attribute name="border-right-width">thin</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__border__all" use-attribute-sets="common.border">
    </xsl:attribute-set>

    <xsl:attribute-set name="lines" use-attribute-sets="base-font">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="space-before">0.8em</xsl:attribute>
        <xsl:attribute name="space-after">0.8em</xsl:attribute>
<!--        <xsl:attribute name="white-space-treatment">ignore-if-after-linefeed</xsl:attribute>-->
        <xsl:attribute name="white-space-collapse">true</xsl:attribute>
        <xsl:attribute name="linefeed-treatment">preserve</xsl:attribute>
        <xsl:attribute name="wrap-option">wrap</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="keyword">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="term">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="ph">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="boolean">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="color">green</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="state">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="border-left-width">0pt</xsl:attribute>
        <xsl:attribute name="border-right-width">0pt</xsl:attribute>
        <xsl:attribute name="color">red</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="alt">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="object">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="param">
    </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment" use-attribute-sets="common.border">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="background-color">#FF99FF</xsl:attribute>
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="draft-comment__label">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="background">yellow</xsl:attribute>
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="required-cleanup__label">
        <!--Custom add-->
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="start-indent"><xsl:value-of select="$side-col-width"/></xsl:attribute>
        <!--end-->
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-size">8pt</xsl:attribute>
        <xsl:attribute name="color">purple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__id">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__callout">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="keep-with-previous.within-line">always</xsl:attribute>
        <xsl:attribute name="baseline-shift">super</xsl:attribute>
        <xsl:attribute name="font-size">75%</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="fn__body" use-attribute-sets="base-font">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="provisional-distance-between-starts">8mm</xsl:attribute>
        <xsl:attribute name="provisional-label-separation">2mm</xsl:attribute>
        <xsl:attribute name="line-height">1.2</xsl:attribute>
        <xsl:attribute name="start-indent">0pt</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__left">
        <xsl:attribute name="text-align">start</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__right">
        <xsl:attribute name="text-align">end</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__center">
        <xsl:attribute name="text-align">center</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__align__justify">
        <xsl:attribute name="text-align">justify</xsl:attribute>
        <xsl:attribute name="display-align">before</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="indextermref">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="cite">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-style">italic</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="concept">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="conbody" use-attribute-sets="body">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topichead">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topicgroup">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="topicmeta">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="searchtitle__label">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="font-weight">bold</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="publisher">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="copyright">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="copyryear">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="copyrholder">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="critdates">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="created">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="revised">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="permissions">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="category">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="audience">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="keywords">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prodinfo">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prodname">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="vrmlist">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="vrm">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="brand">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="series">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="platform">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="prognum">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="featnum">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="component">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="othermeta">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="resourceid">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="reference">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="refbody" use-attribute-sets="body">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="refsyn">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="metadata">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="image__float">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__block">
    </xsl:attribute-set>

    <xsl:attribute-set name="image__inline">
    </xsl:attribute-set>

    <xsl:attribute-set name="image">
		<!--custom add-->
        <xsl:attribute name="content-width">70%</xsl:attribute>
		<xsl:attribute name="content-height">100%</xsl:attribute>
		<xsl:attribute name="scaling">uniform</xsl:attribute>
        <!-- <xsl:attribute name="inline-progression-dimension.maximum">100%</xsl:attribute>
        <xsl:attribute name="scalefit">1</xsl:attribute>-->
		<!-- <xsl:attribute name="height">100mm</xsl:attribute>-->
        <xsl:attribute name="width">100%</xsl:attribute>
        <!--end-->
    </xsl:attribute-set>

    <xsl:attribute-set name="flag.image" use-attribute-sets="image">
    </xsl:attribute-set>

    <xsl:attribute-set name="__unresolved__conref">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="color">#CC3333</xsl:attribute>
    </xsl:attribute-set>

    <xsl:attribute-set name="__fo__root" use-attribute-sets="base-font">
        <xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="xml:lang" select="translate($locale, '_', '-')"/>
        <xsl:attribute name="writing-mode" select="$writing-mode"/>
    </xsl:attribute-set>

    <xsl:attribute-set name="__force__page__count">
	<xsl:attribute name="font-family">Apple</xsl:attribute>
        <xsl:attribute name="force-page-count">
            <xsl:choose>
                <xsl:when test="name(/*) = 'bookmap'">
                    <xsl:value-of select="'even'"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="'auto'"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:attribute>
    </xsl:attribute-set>

</xsl:stylesheet>
