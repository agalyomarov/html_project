<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">


<html>
    <head>
        <title>Semestrální projekt - knizky</title>

        <style>h1 {text-align: center; font-size: 50px; text-decoration: underline;}body {margin-left: 15%; margin-right: 15%; font-family: verdana;}</style>
    </head>
    <body>
        <h1>Knihovna</h1>
        <xsl:for-each select="knihovna/kniha">
            <h2>
                <xsl:value-of select="nazev/cesky"/>
            </h2>
        <xsl:if test="nazev/cesky!=nazev/original">
            <h3>
                <xsl:value-of select="nazev/original"/>
            </h3>
        </xsl:if>
        <p>
            <i>
                <xsl:value-of select="autor/krestni_jmeno"/>
                <xsl:text> </xsl:text>
                <xsl:value-of select="autor/prijmeni"/>
                <xsl:text> (*</xsl:text>
                <xsl:value-of select="autor/@rok_narozeni"/>
                <xsl:if test="autor/@rok_umrti!=''">
                <xsl:text> – †</xsl:text>
                <xsl:value-of select="autor/@rok_umrti"/>
                </xsl:if>
                <xsl:text>)</xsl:text>
            </i>
        </p>
        <p>
            <xsl:text>Žánr: </xsl:text>
            <xsl:value-of select="zanr"/>
            <xsl:text> (</xsl:text>
            <xsl:value-of select="@druh_textu"/>
            <xsl:text>)</xsl:text>
        </p>
        <p>
            <xsl:text>Rok prvního vydání: </xsl:text>
            <xsl:value-of select="rok_vydani"/>
        </p>
        <p>
            <xsl:text>Počet slov: </xsl:text>
            <xsl:value-of select="pocet_stran"/>
        </p>
        <p>
            <xsl:text>Hodnocení podle Goodreads: </xsl:text>
            <xsl:value-of select="hodnoceni"/>
        </p>
        <p>
            <xsl:value-of select="popis"/>
        </p>
        <hr color="#6b2bfa"/>
        <br/>
    </xsl:for-each>
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>