<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body  style="font-family:Arial;font-size:12pt;background-color:#EEEEEE">
    <h1>Comments:</h1>
    <xsl:for-each select="//centre">
    
    <div style="background-color:teal;color:white;padding:4px;">
    <span style="font-weight:bold">
    <xsl:value-of select="user"/> - </span>
    <xsl:value-of select="address"/>
    </div>
    <div style="margin-left:20px;margin-bottom:1em;font-size:10pt">
    </div>
      
      </xsl:for-each>
     
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>