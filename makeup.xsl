<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:template match="*">
        <xsl:applytemplates/>
    </xsl:template>
    <xsl:template match="text()">
        <xsl:applytemplates/>
    </xsl:template>
    <xsl:template match="/">
        <html>
            <head>
                <title>Products</title>
            </head>
            <body>
                <!-- 1. Eye Liner all brands-->
                <h2>Eye Liner</h2>
                <xsl:apply-templates select="/makeup/products/eyeshadow"/>
                <!-- 2. Mascara all brands -->
                <h2>Mascara</h2>
                <xsl:apply-templates select="/makeup/products/mascara"/>
                <!--
                3. Eye Shadow all brands
                -->
                <h2>Eye Shadow</h2>
                <xsl:apply-templates select="/makeup/products/eyeliner"/>
                <!-- 4. Published after 2001 -->
                <h2>Books published after 2001:</h2>
                <xsl:apply-templates select="/catalog/book/publish/publish_date[text()>'2001']"/>
                <!-- 5. Books costing more than 30  -->
                <h2>Books starting with the letter C:</h2>
                <xsl:apply-templates select="/catalog/book/price[text()>'30']"/>
            </body>
        </html>
    </xsl:template>
    <!-- 1. All book titles -->
    <xsl:template match="">
        <xsl:value-of select=""/>
    </xsl:template>
    <!-- 2. All out of print titles -->
    <xsl:template match="">
        <xsl:value-of select=""/>
    </xsl:template>
    <!-- 3. Fantasy book id numbers -->
    <xsl:template match=>
        <xsl:value-of select=/>
    </xsl:template>
    !-- 4. Published after 2001 -->
    <xsl:template match=>
        <xsl:value-of select=/>
    </xsl:template>
    <!-- 5. Books costing more than 30 -->
    <xsl:template match=>
        <xsl:value-of select=/>
        ,
        <xsl:value-of select=/>
        .
    </xsl:template>
</xsl:transform>