<?xml version="1.0" encoding="ISO-8859-1"?> 
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

<xsl:template match="/"> 
	<html>
			<style type="text/css">
				/* Turning Metadata off for the moment */
				div#metadata { display: none; } 

				/* Container */
				#textBody { 
					width: 500px; 
					margin: 0 auto; 
				}
				/* Colorize the characters' dialog */
				p.Bernard { color: red; } 
				p.Susan { color: blue; } 
				p.Rhoda { color: purple; } 
				p.Louis { color: cyan; } 
				p.Neville { color: orange; } 
				p.Jinny { color: green; } 

			</style>
		<body>
			<xsl:apply-templates/>
		</body>
	</html>
</xsl:template> 

<xsl:template match="TEI.2/teiHeader">
	<div id="metadata">
		<xsl:apply-templates/>
	</div> <!--end of Metadata-->
</xsl:template>

<xsl:template match="TEI.2/teiHeader/fileDesc/titleStmt">
	<h1 id="bookTitle">
		<xsl:apply-templates/>
	</h1>
</xsl:template>

<xsl:template match="TEI.2/teiHeader/fileDesc/editionStmt">
	<div id="editionStmt" class="metadata">
		<h2>About this Edition:</h2>
		<xsl:apply-templates/>
	</div> <!--end of editionStmt-->
</xsl:template>

<xsl:template match="TEI.2/teiHeader/fileDesc/publicationStmt">
	<div id="publicationStmt" class="metadata">
		<h2>About this Publication:</h2>
		<p>
			<span class="infoHeader">Published by: </span><xsl:value-of select="publisher"/><br/>
			<span class="infoHeader">Place: </span><xsl:value-of select="pubPlace"/><br/>
			<span class="infoHeader">Date: </span><xsl:value-of select="date"/><br/>
			<span class="infoHeader">Availability: </span><xsl:value-of select="availability"/><br/>
		</p>
	</div> <!--end of editionStmt-->
</xsl:template>

<xsl:template match="TEI.2/teiHeader/fileDesc/sourceDesc">
	<div id="sourceDesc" class="metadata">
		<xsl:apply-templates/>
	</div> <!--end of sourceDesc-->
</xsl:template>

<xsl:template match="TEI.2/teiHeader/fileDesc/encodingDesc">
	<div id="encodingDesc" class="metadata">
		<h2>About the Encoding: </h2>
		<xsl:apply-templates/>
	</div> <!--end of sourceDesc-->
</xsl:template>

<xsl:template match="TEI.2/teiHeader/profileDesc">
	<div id="profileDesc" class="metadata">
		<xsl:apply-templates/>
	</div>
</xsl:template>

<!--This is for the whole body of the text -->
<xsl:template match="TEI.2/text/body">
	<div id="textBody">
			<xsl:apply-templates/>
	</div> <!--End of Container-->
</xsl:template>

<xsl:template match="p">
	<p class="textParagraph"><xsl:apply-templates/></p>
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

</xsl:stylesheet> 
