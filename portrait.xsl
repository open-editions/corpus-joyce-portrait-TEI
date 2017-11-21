<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
		<head>
		<link rel="stylesheet" href="portrait.css" />
		<link href='https://fonts.googleapis.com/css?family=Droid+Serif' rel='stylesheet' type='text/css'/>
		<script src="vendor/jquery-2.1.4.min.js"></script>
		<script src="portrait.js"></script>
		</head>
		<body>
			<h1 class="mainTitle"><em>A Portrait of the Artist as a Young Man</em></h1>
			<h2 class="mainTitle">James Joyce</h2>
			<h3 class="mainTitle">The Open-Source Critical Edition</h3>
			<div id="controls">
				Show: <br/>
				<input type="checkbox" id="dialog" name="dialog" value="" checked="checked"/>Dialog attribution<br/>
				<input type="checkbox" id="type" name="type" value="" checked="checked"/>Text genre (poem, song, prayer)<br/>
				<input type="checkbox" id="lang" name="lang" value="" checked="checked"/>Language<br/>
				<input type="checkbox" id="lineNumber" name="lineNumber" value="" checked="checked"/>Line numbers
			</div>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template>

<xsl:template match="TEI/teiHeader">
	<div id="metadata">
		<xsl:apply-templates/>
	</div><!-- End of Metadata -->
</xsl:template>

<!--This is for the whole body of the text -->
<xsl:template match="TEI/text/body">
	<div id="textBody">
			<xsl:apply-templates/>
	</div> <!--End of Container-->
</xsl:template>

<xsl:template match="p">
	<p class="textParagraph"><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="lb">
	<xsl:apply-templates/>
  <xsl:if test="@n mod 10 = 0" >
    <span class="tag lineNumber">
      <xsl:value-of select="number(substring(@n, 2))" />
    </span>
  </xsl:if>
  <br/>
</xsl:template>

<xsl:template match="lg">
	<p class="lg">
		<xsl:apply-templates/>
	</p>
</xsl:template>

<xsl:template match="geo">
	<span class="hide"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="emph">
	<span class="emph"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="head">
	<h2 class="heading"><xsl:apply-templates/></h2>
</xsl:template>

<!-- Match <milestone unit="section" rend="asterixes"/> -->
<xsl:template match="milestone">
  <div class="divider">* * *</div>
</xsl:template>

<xsl:template match="said">
	<p>
		<xsl:apply-templates select="@who | node()"/>
	</p>
</xsl:template>

<xsl:template match="@who">
	<xsl:attribute name="class">dialog</xsl:attribute>
	<span class="tag dialog">
		<xsl:value-of select="."/>
	</span>
</xsl:template>

<xsl:template match="quote/ref">
  <span class="hide"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="epigraph">
	<span class="lang">
		<xsl:apply-templates select="@xml:lang | node()"/>
	</span>
</xsl:template>

<xsl:template match="@xml:lang">
	<span class="tag lang">
		<xsl:choose>
			<xsl:when test=".='la'">
				Latin
			</xsl:when>
			<xsl:when test=".='fr'">
				French
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
			</xsl:otherwise>
		</xsl:choose>
	</span>
</xsl:template>

<xsl:template match="lg[@type]">
	<p class="lg">
		<xsl:apply-templates select="@type | node()"/>
	</p>
</xsl:template>

<xsl:template match="@type">
	<span class="tag type">
		<xsl:value-of select="."/>
	</span>
</xsl:template>

<!--<xsl:template match="TEI/teiHeader/fileDesc/titleStmt">-->
	<!--<h1 id="bookTitle">-->
		<!--<xsl:apply-templates/>-->
	<!--</h1>-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/fileDesc/editionStmt">-->
	<!--<div id="editionStmt" class="metadata">-->
		<!--<h2>About this Edition:</h2>-->
		<!--<xsl:apply-templates/>-->
	<!--</div> [>end of editionStmt<]-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/fileDesc/publicationStmt">-->
	<!--<div id="publicationStmt" class="metadata">-->
		<!--<h2>About this Publication:</h2>-->
		<!--<p>-->
			<!--<span class="infoHeader">Published by: </span><xsl:value-of select="publisher"/><br/>-->
			<!--<span class="infoHeader">Place: </span><xsl:value-of select="pubPlace"/><br/>-->
			<!--<span class="infoHeader">Date: </span><xsl:value-of select="date"/><br/>-->
			<!--<span class="infoHeader">Availability: </span><xsl:value-of select="availability"/><br/>-->
		<!--</p>-->
	<!--</div> [>end of editionStmt<]-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/fileDesc/sourceDesc">-->
	<!--<div id="sourceDesc" class="metadata">-->
		<!--<xsl:apply-templates/>-->
	<!--</div> [>end of sourceDesc<]-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/fileDesc/encodingDesc">-->
	<!--<div id="encodingDesc" class="metadata">-->
		<!--<h2>About the Encoding: </h2>-->
		<!--<xsl:apply-templates/>-->
	<!--</div> [>end of sourceDesc<]-->
<!--</xsl:template>-->

<!--<xsl:template match="TEI/teiHeader/profileDesc">-->
	<!--<div id="profileDesc" class="metadata">-->
		<!--<xsl:apply-templates/>-->
	<!--</div>-->
<!--</xsl:template>-->

</xsl:stylesheet>
