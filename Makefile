index.html: portrait.xsl portrait.xml 
	xsltproc $^ > $@
