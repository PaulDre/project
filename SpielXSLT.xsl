<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:template match="Spiel">
        <xsl:variable name="Spielrunde" select="@Spielrunde" as="xs:integer"/>
        <xsl:apply-templates select="Spieler"/>
        <xsl:apply-templates select="Spielbrett"/>
        <xsl:apply-templates select="Karte"/>
    </xsl:template>

    <xsl:template match="Spielbrett">
        <xsl:variable name="AnzahlKartenAufBrett" select="@AnzahlKartenAufBrett" as="xs:integer"/>
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            width="100%" height="100%" viewBox="0 0 200 100">
            <desc/>
            <g alignment-baseline="baseline"/>
            <!-- Pattern für die verschwommenen Ecken -->
            <defs>
                <filter id="f1" x="0" y="0">
                    <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                </filter>
            </defs>
            <!-- Hintergrundfilter -->
            <defs>
                <pattern id="image2" patternUnits="userSpaceOnUse" height="100%" width="100%">
                    <image x="0" y="0" width="100%" height="100%" xlink:href="stone.jpg"/>
                </pattern>
            </defs>
            <rect id="background" width="100%" height="100%" fill="url(#image2)"/>

            <!-- logo -->
            <rect id="logosymbol" x="0" y="5" width="10" height="10" fill="" filter="url(#f1)"
                style="fill-opacity:0.6"/>
            <use x="0" xlink:href="#logosymbol" fill="lightblue"/>
            <use x="10" xlink:href="#logosymbol" fill="red"/>
            <use x="20" xlink:href="#logosymbol" fill="yellow"/>
            <use x="30" xlink:href="#logosymbol" fill="green"/>
            <use x="40" xlink:href="#logosymbol" fill="orange"/>
            <use x="50" xlink:href="#logosymbol" fill="pink"/>

            <text id="logoschrift" x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6">M</text>
            <text x="11" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6"> E </text>
            <text x="21" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6"> M </text>
            <text x="31" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6"> O </text>
            <text x="41" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6"> R </text>
            <text x="51" y="14" font-size="10" fill="darkgrey" font-style="normal"
                style="fill-opacity:0.6"> Y </text>
            <xsl:apply-templates select="Karte"/>
        </svg>
    </xsl:template>

    <xsl:template match="Spieler">
        <xsl:variable name="weiterZiehen" select="@weiterZiehen" as="xs:boolean"/>
        <xsl:variable name="AnzahlSpieler" select="@AnzahlSpieler" as="xs:integer"/>
        <xsl:variable name="SpielerID" select="@SpielerID"/>
        <xsl:variable name="SpielerNum" select="@SpielerNum"/>
        <xsl:variable name="SpielerPunkte" select="@SpielerPunkte" as="xs:string"/>
        <xsl:variable name="istAnDerReihe" select="@istAnDerReihe"/>

        <svg height="10%" width="{100 div $AnzahlSpieler}%"
            x="{($SpielerNum -1)*(100 div $AnzahlSpieler)}%" y="90%"
            xmlns="http://www.w3.org/2000/svg">
            <rect width="100%" height="100%" fill="red"/>
            <circle cx="72%" cy="45%" r="7%" fill="white"/>
            <text x="10%" y="52%" stroke="darkgrey" stroke-width="0.05%" font-size="200%"
                font-style="normal">
                <xsl:value-of select="$SpielerID"/>
            </text>
            <text x="70%" y="60%" stroke="darkgrey" stroke-width="0.05%" font-size="200%"
                font-style="normal">
                <xsl:value-of select="$SpielerPunkte"/>
            </text>
            <xsl:if test="$istAnDerReihe = 'true'">
                <text x="10%" y="90%" stroke="black" stroke-width="0.05px" font-size="25px"
                    font-style="normal">It's your turn!</text>
            </xsl:if>
        </svg>
    </xsl:template>

    <xsl:template match="Karte">
        <xsl:variable name="AnzahlZeilen" select="@AnzahlZeilen"/>
        <xsl:variable name="AnzahlSpalten" select="@AnzahlSpalten"/>
        <xsl:variable name="KarteVerdeckt" select="@KarteVerdeckt"/>
        <xsl:variable name="posX" select="@posX"/>
        <xsl:variable name="posY" select="@posY"/>
        <xsl:variable name="AnzahlKartenGesamt" select="@AnzahlKartenGesamt" as="xs:integer"/>
        <xsl:variable name="AnzahlKartenAufgedecktVomSpieler"
            select="@AnzahlKartenAufgedecktVomSpieler" as="xs:string"/>
        <xsl:variable name="KarteID" select="@KarteID"/>

        <svg width="100%" height="100%" xmlns:xlink="http://www.w3.org/1999/xlink"
            xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 100">  <!-- Creates a shadow for the cards on the table -->
            <xsl:choose>
                <xsl:when test="$KarteVerdeckt = 'true'">
                    <image x="{(($posX - 1) * (100 div $AnzahlSpalten)) + 2}%"
                        y="{($posY -1)* (100 div $AnzahlZeilen) + 3}%"
                        width="{50 div $AnzahlSpalten}%" height="{80 div $AnzahlZeilen}%"
                        xlink:href="{$KarteID}"/>
                </xsl:when>
                <xsl:otherwise>
                    <image x="{(($posX - 1) * (100 div $AnzahlSpalten)) + 2}%"
                        y="{($posY -1)* (100 div $AnzahlZeilen) + 3}%"
                        width="{50 div $AnzahlSpalten}%" height="{80 div $AnzahlZeilen}%"
                        xlink:href="karteVerdeckt.jpg"/>
                </xsl:otherwise>
            </xsl:choose>
        </svg>
    </xsl:template>
</xsl:stylesheet>
