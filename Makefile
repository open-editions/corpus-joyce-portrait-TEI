index.html: portrait.xsl portrait.xml 
	xsltproc $^ > $@

valid:
	xmllint --dtdvalid dtd/tei_all.dtd portrait.xml
