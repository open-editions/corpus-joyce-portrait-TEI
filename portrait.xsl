<?xml version="1.0" encoding="ISO-8859-1"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/"> 
	<html>
		<link rel="stylesheet" href="portrait.css" />
		<body>
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

<xsl:template match="lg">
	<p class="song">
		<xsl:apply-templates/>
	</p>
</xsl:template>

<xsl:template match="l">
	<xsl:apply-templates/><br/>
</xsl:template>

<xsl:template match="emph">
	<span class="emph"><xsl:apply-templates/></span>
</xsl:template>

<xsl:template match="seg">
	<span class="lexeme">
	<xsl:apply-templates select="@n | node()"/>
	</span>
</xsl:template>

<xsl:template match="@n">
	<sup class="lexeme-id">
	<xsl:value-of select="."/>
	</sup>
</xsl:template> 

<xsl:template match="head">
	<h2><xsl:apply-templates/></h2>
</xsl:template>

<xsl:template match="said">
	<p>
		<xsl:apply-templates select="@* | node()"/>
	</p>
</xsl:template>

<xsl:template match="@who">
	<xsl:attribute name="class">
		<xsl:value-of select="substring(., 2)"/>
	</xsl:attribute>
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
