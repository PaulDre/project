<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:variable name="scale" select="1"/>
    <xsl:variable name="button_height" select="100 * $scale"/>
    <xsl:variable name="button_width" select="300 * $scale"/>
    <xsl:variable name="button_y" select="40 * $scale"/>
    <xsl:output method="xml" indent="yes"/>


    <!--Anfangsbild-->
    <xsl:template match="Menu">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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

                    <!-- Überschrift -->
                    <text x="100" y="28" font-size="10" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">Willkommen im
                        Spiel ! </text>
                </svg>
            </xsl:if>

            <!-- Button -->
            <xsl:if test="Button//id = 1">
                <svg>
                    <rect x="75" y="{$button_y}" rx="20" ry="20" width="50" height="10" fill="gray"/>
                    <text x="100" y="{$button_y+6}" font-size="4" font-weight="bold" fill="black"
                        text-anchor="middle">New Game</text>
                </svg>
            </xsl:if>

            <xsl:if test="Button//id = 2">
                <svg>
                    <rect x="75" y="{$button_y+15}" rx="20" ry="20" width="50" height="10"
                        fill="gray"/>
                    <text x="100" y="{$button_y+15+6}" font-size="4" font-weight="bold" fill="black"
                        text-anchor="middle">Load Game</text>
                </svg>
            </xsl:if>

            <xsl:if test="Button//id = 3">
                <svg>
                    <rect x="75" y="{$button_y+30}" rx="20" ry="20" width="50" height="10"
                        fill="gray"/>
                    <text x="100" y="{$button_y+30+6}" font-size="4" font-weight="bold" fill="black"
                        text-anchor="middle">High Scores</text>
                </svg>
            </xsl:if>

            <xsl:if test="backButton//id = 1">
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Quit</text>
                </svg>
            </xsl:if>
        </svg>
    </xsl:template>

    <!-- Spielerabfrage -->
    <xsl:template match="Menu2">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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

                    <!-- Überschrift -->
                    <text x="100" y="28" font-size="10" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">Wie viele
                        Spieler seid ihr? </text>
                </svg>
            </xsl:if>

            <!-- Buttons -->
            <xsl:if test="pButton//id = 1">
                <svg>
                    <circle r="8" fill="black" cx="30" cy="55" style="fill-opacity:0.8"/>
                    <text x="28" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 2 </text>
                </svg>
            </xsl:if>

            <xsl:if test="pButton//id = 2">
                <svg>
                    <circle r="8" fill="black" cx="65" cy="55" style="fill-opacity:0.8"/>
                    <text x="63" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 3 </text>
                </svg>
            </xsl:if>

            <xsl:if test="pButton//id = 3">
                <svg>
                    <circle r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                    <text x="97" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 4 </text>
                </svg>
            </xsl:if>

            <xsl:if test="pButton//id = 4">
                <svg>
                    <circle r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
                    <text x="133" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 5 </text>
                </svg>
            </xsl:if>

            <xsl:if test="pButton//id = 5">
                <svg>
                    <circle r="8" fill="black" cx="170" cy="55" style="fill-opacity:0.8"/>
                    <text x="167" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 6 </text>
                </svg>
            </xsl:if>


            <xsl:if test="backButton//id = 1">

                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Back</text>
                </svg>

            </xsl:if>
        </svg>
    </xsl:template>

    <!-- Kartenabfrage -->
    <xsl:template match="Menu3">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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

                    <!-- Überschrift -->
                    <text x="100" y="28" font-size="8" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">Bitte Anzahl
                        Karten auswählen! </text>
                </svg>
            </xsl:if>

            <!-- Buttons -->
            <xsl:if test="kButton//id = 1">
                <svg>
                    <circle r="8" fill="black" cx="65" cy="55" style="fill-opacity:0.8"/>
                    <text x="60" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 16 </text>
                </svg>
            </xsl:if>

            <xsl:if test="kButton//id = 2">
                <svg>
                    <circle r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                    <text x="95" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 24 </text>
                </svg>
            </xsl:if>

            <xsl:if test="kButton//id = 3">
                <svg>
                    <circle r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
                    <text x="130" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 32 </text>
                </svg>
            </xsl:if>

            <xsl:if test="backButton//id = 1">
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Back</text>
                </svg>
            </xsl:if>
        </svg>
    </xsl:template>

    <!-- Karten 32 -->
    <xsl:template match="Gamescreen">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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
                </svg>
            </xsl:if>

            <!-- Karten 32 -->
            <xsl:for-each select="Cards32/Card">
                <xsl:if test="Visibility = 1">
                    <xsl:choose>
                        <xsl:when test="StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <xsl:variable select="fill" name="fillcard"/>
                            <xsl:variable select="fillinner" name="fillcard2"/>
                            <xsl:variable select="fillinnerinner" name="fillcard3"/>
                            <xsl:variable select="fillinner2" name="fillcard4"/>
                            <xsl:variable select="fillcorner" name="fillcard5"/>

                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="{$fillcard}"
                                    stroke="black" stroke-width="0.5"/>
                                <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                    fill="{$fillcard2}" stroke-width="0.5"/>
                                <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                    fill="{$fillcard4}" stroke-width="0.5"/>
                                <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                    fill="{$fillcard3}" stroke-width="0.5"/>
                                <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                    fill="{$fillcard5}" stroke-width="0.5"/>

                            </svg>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>
            <xsl:for-each select="Players/Player">
                <xsl:if test="Active = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y}" width="16" height="10" fill="transparent"/>
                        <text x="{$x+3}" y="{$y+3}" font-size="3">
                            <xsl:value-of select="Nickname/text()"/>
                        </text>
                        <text x="{$x+3}" y="{$y+8}" font-size="3">Score:</text>
                        <text x="{$x+12}" y="{$y+8}" font-size="3">
                            <xsl:value-of select="Points/text()"/>
                        </text>
                    </svg>
                </xsl:if>
                <xsl:if test="Turn = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y+(-0.5)}" width="16" height="10" fill="transparent"
                            stroke="tomato" stroke-width="1"> </rect>
                    </svg>
                </xsl:if>
            </xsl:for-each>
            <xsl:if test="backButton//id = 1">
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Back</text>
                </svg>
            </xsl:if>

        </svg>
    </xsl:template>

    <!-- Karten 24 -->
    <xsl:template match="Gamescreen2">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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
                </svg>
            </xsl:if>
            <xsl:for-each select="Cards24/Card">
                <xsl:if test="Visibility = 1">
                    <xsl:choose>
                        <xsl:when test="StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <xsl:variable select="fill" name="fillcard"/>
                            <xsl:variable select="fill1" name="fillcard1"/>
                            <xsl:variable select="fill2" name="fillcard2"/>
                            <xsl:variable select="fill3" name="fillcard3"/>
                            <xsl:variable select="fill4" name="fillcard4"/>
                            <xsl:variable select="fill5" name="fillcard5"/>
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="{$fillcard}"
                                    stroke="black" stroke-width="0.5"/>
                                <polygon
                                    points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                    style="fill:{$fillcard1};fill-rule:nonzero;"/>
                                <polygon
                                    points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                    style="fill:{$fillcard2} ;fill-rule:nonzero;"/>
                                <polygon
                                    points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                    style="fill:{$fillcard3} ;fill-rule:nonzero;"/>
                                <polygon
                                    points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                    style="fill:{$fillcard4} ;fill-rule:nonzero;"/>
                                <polygon
                                    points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                    style="fill:{$fillcard5} ;fill-rule:nonzero;"/>
                            </svg>
                          
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>

            <!-- Spieler -->

            <xsl:for-each select="Players/Player">
                <xsl:if test="Active = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y}" width="16" height="10" fill="transparent"/>
                        <text x="{$x+3}" y="{$y+3}" font-size="3">
                            <xsl:value-of select="Nickname/text()"/>
                        </text>
                        <text x="{$x+3}" y="{$y+8}" font-size="3">Score:</text>
                        <text x="{$x+12}" y="{$y+8}" font-size="3">
                            <xsl:value-of select="Points/text()"/>
                        </text>
                    </svg>
                </xsl:if>
                <xsl:if test="Turn = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y+(-0.5)}" width="16" height="10" fill="transparent"
                            stroke="blue" stroke-width="1"/>
                    </svg>
                </xsl:if>
            </xsl:for-each>
            <xsl:if test="backButton//id = 1">
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Back</text>
                </svg>
            </xsl:if>
        </svg>
    </xsl:template>

    <!-- Karten 16 -->
    <xsl:template match="Gamescreen3">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- Logo -->
            <xsl:if test=".//id = 1">
                <defs>
                    <filter id="f1" x="0" y="0">
                        <feGaussianBlur in="SourceGraphic" stdDeviation="3"/>
                    </filter>
                </defs>
                <svg>
                    <rect x="0" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="lightblue"/>
                    <rect x="10" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="red"/>
                    <rect x="20" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="yellow"/>
                    <rect x="30" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="green"/>
                    <rect x="40" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="orange"/>
                    <rect x="50" y="5" width="10" height="10" filter="url(#f1)"
                        style="fill-opacity:0.6" fill="pink"/>
                    <text x="1" y="14" font-size="10" fill="darkgrey" font-style="normal"
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
                </svg>
            </xsl:if>
            <xsl:for-each select="Cards16/Card">
                <xsl:if test="Visibility = 1">
                    <xsl:choose>
                        <xsl:when test="StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <xsl:variable select="fill" name="fillcard"/>
                            <xsl:variable select="fill1" name="fillcard1"/>
                            <xsl:variable select="fill2" name="fillcard2"/>
                            <xsl:variable select="fill3" name="fillcard3"/>
                            <xsl:variable select="fill4" name="fillcard4"/>
                            <xsl:variable select="fill5" name="fillcard5"/>
                            <xsl:variable select="fill6" name="fillcard6"/>
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="{$fillcard}"
                                    stroke="black" stroke-width="0.5"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="{$fillcard1}"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="{$fillcard2}"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="{$fillcard3}"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="{$fillcard4}"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="{$fillcard5}"/>
                                <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="{$fillcard6}"/>
                            </svg>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>

            <!-- Spieler -->

            <xsl:for-each select="Players/Player">
                <xsl:if test="Active = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y}" width="16" height="10" fill="transparent"/>
                        <text x="{$x+3}" y="{$y+3}" font-size="3">
                            <xsl:value-of select="Nickname/text()"/>
                        </text>
                        <text x="{$x+3}" y="{$y+8}" font-size="3">Score:</text>
                        <text x="{$x+12}" y="{$y+8}" font-size="3">
                            <xsl:value-of select="Points/text()"/>
                        </text>
                    </svg>
                </xsl:if>
                <xsl:if test="Turn = 1">
                    <xsl:variable select="XCoordinate" name="x"/>
                    <xsl:variable select="YCoordinate" name="y"/>
                    <svg>
                        <rect x="{$x}" y="{$y+(-0.5)}" width="16" height="10" fill="transparent"
                            stroke="lightgreen" stroke-width="1"/>
                    </svg>
                </xsl:if>
            </xsl:for-each>
            <xsl:if test="backButton//id = 1">
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                        text-anchor="middle" font-size="5" font-style="italic">Back</text>
                </svg>
            </xsl:if>
        </svg>

    </xsl:template>
</xsl:stylesheet>