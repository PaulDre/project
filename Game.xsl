<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">

    <xsl:variable name="scale" select="1"/>
    <xsl:variable name="button_height" select="100 * $scale"/>
    <xsl:variable name="button_width" select="300 * $scale"/>
    <xsl:variable name="button_y" select="40 * $scale"/>
    <xsl:output method="xml" indent="yes"/>














    <!--Startscreen-->
    <xsl:template match="Startscreen">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- "Memory" Logo -->
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

                    <!-- Header "Willkommen im Spiel" -->
                    <text x="100" y="28" font-size="10" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">Willkommen im
                        Spiel ! </text>
                </svg>
            </xsl:if>

            <!-- Button "New Game" -->
            <xsl:if test="Button//id = 1">
                <a xlink:href="/insertDB">
                    <svg>
                        <rect x="75" y="{$button_y}" rx="20" ry="20" width="50" height="10"
                            fill="gray"/>
                        <text x="100" y="{$button_y+6}" font-size="4" font-weight="bold"
                            fill="black" text-anchor="middle">New Game</text>
                    </svg>
                </a>
            </xsl:if>

            <!-- Button "Load Game" -->
            <xsl:if test="Button//id = 2">
                <a xlink:href="/memory/transform/Startscreen">
                    <svg>
                        <rect x="75" y="{$button_y+15}" rx="20" ry="20" width="50" height="10"
                            fill="gray"/>
                        <text x="100" y="{$button_y+15+6}" font-size="4" font-weight="bold"
                            fill="black" text-anchor="middle">Load Game</text>
                    </svg>
                </a>
            </xsl:if>

            <!-- Button "High Scores" -->
            <xsl:if test="Button//id = 3">
                <a xlink:href="/memory/transform/Startscreen">
                    <svg>
                        <rect x="75" y="{$button_y+30}" rx="20" ry="20" width="50" height="10"
                            fill="gray"/>
                        <text x="100" y="{$button_y+30+6}" font-size="4" font-weight="bold"
                            fill="black" text-anchor="middle">High Scores</text>
                    </svg>
                </a>
            </xsl:if>

            <!-- Button "Quit" -->
            <xsl:if test="backButton//id = 1">
                <a xlink:href="/memory/transform/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Quit</text>
                    </svg>
                </a>
            </xsl:if>
        </svg>
    </xsl:template>

















    <!-- NumberOfPlayer Menu -->
    <xsl:template match="NumberOfPlayer">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- "Memory" Logo -->
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

                    <!-- Header "please enter the number of player!" -->
                    <text x="100" y="28" font-size="10" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">please enter
                        the number of player! </text>
                </svg>
            </xsl:if>

            <!-- Buttons "1, 2, 3, 4, 5, 6" -->
            <xsl:if test="pButton//id = 1">
                <a xlink:href="/TheNumberOfPlayerIs/2">
                    <svg>
                        <circle r="8" fill="black" cx="30" cy="55" style="fill-opacity:0.8"/>
                        <text x="28" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 2 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="pButton//id = 2">
                <a xlink:href="/TheNumberOfPlayerIs/3">
                    <svg>
                        <circle r="8" fill="black" cx="65" cy="55" style="fill-opacity:0.8"/>
                        <text x="63" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 3 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="pButton//id = 3">
                <a xlink:href="/TheNumberOfPlayerIs/4">
                    <svg>
                        <circle r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                        <text x="97" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 4 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="pButton//id = 4">
                <a xlink:href="/TheNumberOfPlayerIs/5">
                    <svg>
                        <circle r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
                        <text x="133" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 5 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="pButton//id = 5">
                <a xlink:href="/TheNumberOfPlayerIs/6">
                    <svg>
                        <circle r="8" fill="black" cx="170" cy="55" style="fill-opacity:0.8"/>
                        <text x="167" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 6 </text>
                    </svg>
                </a>
            </xsl:if>

            <!-- Button "back" -->
            <xsl:if test="backButton//id = 1">
                <a xlink:href="/go/back/to/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Back</text>
                    </svg>
                </a>
            </xsl:if>
        </svg>
    </xsl:template>





















    <!-- NumberOfCards Menu -->
    <xsl:template match="NumberOfCards">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">

            <!-- "Memory" Logo -->
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

                    <!-- Header "please enter the number of cards" -->
                    <text x="100" y="28" font-size="8" fill="black" alignment-baseline="middle"
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">please enter
                        the number of cards! </text>
                </svg>
            </xsl:if>

            <!-- Buttons "16, 24, 32" -->
            <xsl:if test="kButton//id = 1">
                <a xlink:href="/show/16Cards/delete/24and32">
                    <svg>
                        <circle r="8" fill="black" cx="65" cy="55" style="fill-opacity:0.8"/>
                        <text x="60" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 16 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="kButton//id = 2">
                <a xlink:href="/show/24Cards/delete/16and32">
                    <svg>
                        <circle r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                        <text x="95" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 24 </text>
                    </svg>
                </a>
            </xsl:if>

            <xsl:if test="kButton//id = 3">
                <a xlink:href="/show/32Cards/delete/16and24">
                    <svg>
                        <circle r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
                        <text x="130" y="58" fill="white" font-size="10" font-style="italic"
                            font-weight="bold"> 32 </text>
                    </svg>
                </a>
            </xsl:if>

            <!-- Button "back" -->
            <xsl:if test="insertNode/backButton//id = 1">
                <a xlink:href="/go/back/to/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Back</text>
                    </svg>
                </a>
            </xsl:if>
        </svg>
    </xsl:template>





















    <!-- Cards 16 -->
    <xsl:template match="Gamescreen16">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- "Memory" Logo -->
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
            <xsl:for-each select="insertNode/Cards16/Card">
                <xsl:if test="Visibility = 1">
                   
                   
                    <xsl:choose>       
                        <xsl:when test="@cardid='11' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>                            
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="red"
                                        stroke="black" stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="indianred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="darkred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="salmon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="maroon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="orange"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="firebrick"/>
                                </g>
                            </xsl:when>
                          <xsl:when test="@cardid='11' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                              <a xlink:href="/Card/turn/16/11">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            

                  

                             <xsl:when test="@cardid='12' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="red"
                                        stroke="black" stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="indianred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="darkred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="salmon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="maroon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="orange"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="firebrick"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='12' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/12">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>
 
                            
                            
                            

                            <xsl:when test="@cardid='13' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="pink"
                                        stroke="black" stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="mediumvioletred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="plum "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="hotpink"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="lightcoral"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="mediumorchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="lightpink"/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='13' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/13">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            

                            <xsl:when test="@cardid='14' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>            
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="pink"
                                        stroke="black" stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="mediumvioletred"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="plum "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="hotpink"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="lightcoral"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="mediumorchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="lightpink"/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='14' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/14">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>
                             

                         

                            <xsl:when test="@cardid='15' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen " stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="green"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="mediumspringgreen "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="palegreen"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="yellowgreen "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="olivedrab "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="forestgreen"/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='15' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/15">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            
                            <xsl:when test="@cardid='16' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen " stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="green"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="mediumspringgreen "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="palegreen"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="yellowgreen "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="olivedrab "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="forestgreen"/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='16' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/16">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            
                            <xsl:when test="@cardid='17' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="saddlebrown"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="peru "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="maroon "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="sandybrown"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="tan "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill=" orange "/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='17' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/17">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>


                            
                            
                            <xsl:when test="@cardid='18' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="saddlebrown"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="peru "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="maroon "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="sandybrown"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="tan "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill=" orange "/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='18' and StatusOpen = 0">>
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/18">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            
                            <xsl:when test="@cardid='19' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="lightpink "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="magenta"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill=" salmon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="orchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="violet"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="oldlace"/>
                                </g>
                            </xsl:when>
                        <xsl:when test="@cardid='19' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/16/19">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            

                            <xsl:when test="@cardid='20' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="lightpink "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="magenta"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill=" salmon"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="orchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="violet"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="oldlace"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='20' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/20">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            

                             <xsl:when test="@cardid='21' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="plum " stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="lightblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="lightgreen"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill=" lightpink"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="thistle"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="mediumorchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="pink"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='21' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/21">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
                            

                             <xsl:when test="@cardid='22' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="plum " stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="lightblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="lightgreen"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill=" lightpink"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="thistle"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="mediumorchid"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="pink"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='22' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/22">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>
                         
                         
                            

                             <xsl:when test="@cardid='23' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightblue" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="mediumslateblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="lightsteelblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="steelblue "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="powderblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill=" mediumaquamarine"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="midnightblue"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='23' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/23">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>

                            
 
                            <xsl:when test="@cardid='24' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightblue" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="mediumslateblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="lightsteelblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="steelblue "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="powderblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill=" mediumaquamarine"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="midnightblue"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='24' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/24">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>
                          
                            

                             <xsl:when test="@cardid='25' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="dodgerblue "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="slateblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="lightcyan"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="darkturquoise"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="aqua"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="aquamarine"/>
                                </g>
                            </xsl:when>
                         <xsl:when test="@cardid='25' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/25">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>




                             <xsl:when test="@cardid='26' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                                <g>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue" stroke="black"
                                        stroke-width="0.5"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5.7" fill="dodgerblue "/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="5" fill="slateblue"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="4" fill="lightcyan"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="3" fill="darkturquoise"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="2" fill="aqua"/>
                                    <circle cx="{$x+6}" cy="{$y+6}" r="1" fill="aquamarine"/>
                                </g>
                        </xsl:when>
                         <xsl:when test="@cardid='26' and StatusOpen = 0">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                             <a xlink:href="/Card/turn/16/26">
                            <svg>
                                <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                    stroke="black" stroke-width="0.5"/>
                                <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                    font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                    Memory </text>
                            </svg>
                            </a>
                        </xsl:when>
                        </xsl:choose>
                     
                      
                        
                   
                </xsl:if>
            </xsl:for-each>


            <!-- Player -->
            <xsl:for-each select="insertNode/Players/Player">
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
            
            
            <!-- Gefunden Status-->


            <xsl:if test="insertNode/statusFoundPairButton//Found = 1">
                <a xlink:href="/popup/Match/continue/16">
                <svg>
                    <rect x="50" y="20" width="90" height="70" fill="white" stroke="green" stroke-width="1" style="fill-opacity:0.8"/>
           
                    <text x="94" y="42" fill="green" alignment-baseline="middle" text-anchor="middle" font-size="10" font-style="italic">Match!</text>
                    <text x="94" y="56" fill="green" alignment-baseline="middle" text-anchor="middle" font-size="10" font-style="italic">Try again! </text>
                    <text x="94" y="70" fill="green" alignment-baseline="middle" text-anchor="middle" font-size="7" font-style="italic">Continue</text>
                </svg>
                </a>
            </xsl:if>
            <xsl:if test="insertNode/statusFoundPairButton//Found = 0">
                <a xlink:href="/popup/noMatch/continue/16">
                <svg>
                    <rect x="50" y="20" width="90" height="70" fill="white" stroke="red" stroke-width="1" style="fill-opacity:0.8"/>
              
                    <text x="94" y="42" fill="red" alignment-baseline="middle" text-anchor="middle" font-size="10" font-style="italic">No Match!</text>
                    <text x="94" y="56" fill="red" alignment-baseline="middle" text-anchor="middle" font-size="10" font-style="italic">Next Player </text>
                    <text x="94" y="70" fill="red" alignment-baseline="middle" text-anchor="middle" font-size="7" font-style="italic">Continue</text>
                </svg>
                </a>
            </xsl:if>
            
            
            <!-- Button "Back" -->
            <xsl:if test="insertNode/backButton//id = 1">
                <a xlink:href="/go/back/to/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Quit Game</text>
                    </svg>
                </a>
            </xsl:if>
        </svg>
    </xsl:template>
























 <!-- Cards 24 -->
    <xsl:template match="Gamescreen24">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- "Memory" Logo -->
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
            <xsl:for-each select="insertNode/Cards24/Card">
                <xsl:if test="Visibility = 1">

                    <xsl:choose>
                        <xsl:when test="@cardid='11' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="firebrick"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="indianred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="darkred " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="salmon" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="maroon" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="orange" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='11'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/11">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='12' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="firebrick"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="indianred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="darkred " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="salmon" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="maroon" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="orange" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='12'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/12">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='13' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="darkviolet"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" mediumvioletred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="plum" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="hotpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="lightcoral" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumorchid" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='13'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/13">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='14' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="darkviolet"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="mediumvioletred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="plum" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="hotpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="lightcoral" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumorchid" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='14'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/14">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='15' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="fuchsia"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" green" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="mediumspringgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="palegreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="yellowgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="olivedrab " fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='15'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/15">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='16' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="fuchsia"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" green" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="mediumspringgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="palegreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="yellowgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="olivedrab " fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='16'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/16">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='17' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill=" forestgreen" stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" saddlebrown" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill=" peru" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="maroon " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="sandybrown " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="tan" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='17'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/17">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='18' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill=" forestgreen" stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" saddlebrown" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill=" peru" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="maroon " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="sandybrown " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="tan" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='18'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/18">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='19' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="salmon"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="magenta" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="mediumvioletred " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="orchid" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="violet " fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='19'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/19">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='20' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="salmon"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="magenta" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="mediumvioletred " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="orchid" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="violet " fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='20'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/20">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>






                        <xsl:when test="@cardid='21' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="lightblue " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="purple" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="thistle" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumorchid" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='21'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/21">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='22' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="lightblue " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="purple" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="thistle" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumorchid" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='22'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/22">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='23' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="mediumslateblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightsteelblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="steelblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="powderblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumaquamarine" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='23'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/23">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='24' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="mediumslateblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightsteelblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="steelblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="powderblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="mediumaquamarine" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='24'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/24">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='25' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="dodgerblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="slateblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightcyan" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="darkturquoise" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="aqua" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='25'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/25">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='26' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="dodgerblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="slateblue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightcyan" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="darkturquoise" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="aqua" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='26'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/26">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>






                        <xsl:when test="@cardid='27' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="steelblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="red " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="plum" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="indigo" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="aqua" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='27'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/27">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='28' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="steelblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="red " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="plum" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="indigo" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="aqua" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='28'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/28">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='29' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill="deepskyblue" stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" purple " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="yellow" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="orange" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='29'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/29">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>






                        <xsl:when test="@cardid='30' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill="deepskyblue" stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill=" purple " fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="lightpink" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="lightgreen" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="yellow" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="orange" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='30'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/30">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>








                        <xsl:when test="@cardid='31' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill="darkorange " stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="darkred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="orchid" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="blue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="gray" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="yellow" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='31'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/31">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='32' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12"
                                        fill="darkorange " stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="darkred" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="orchid" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="blue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="gray" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="yellow" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='32'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/32">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='33' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="yellow"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="green" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="blue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="red" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="orange" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="green" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='33'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/33">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='34' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="yellow"
                                        stroke="black" stroke-width="0.5"/>
                                    <polygon
                                        points=" {$x+6.25},{$y+0.125} {$x+2},{$y+11.875} {$x+11.875},{$y+4.375} {$x+0.125},{$y+4.375} {$x+10},{$y+11.875}"
                                        fill="green" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.9)},{$y+(0.125*0.9)} {$x+(2*0.9)},{$y+(11.875*0.9)} {$x+(11.875*0.9)},{$y+(4.375*0.9)} {$x+(0.125*0.9)},{$y+(4.375*0.9)} {$x+(10*0.9)},{$y+(11.875*0.9)}"
                                        fill="blue" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.8)},{$y+(0.125*0.8)} {$x+(2*0.8)},{$y+(11.875*0.8)} {$x+(11.875*0.8)},{$y+(4.375*0.8)} {$x+(0.125*0.8)},{$y+(4.375*0.8)} {$x+(10*0.8)},{$y+(11.875*0.8)}"
                                        fill="red" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.7)},{$y+(0.125*0.7)} {$x+(2*0.7)},{$y+(11.875*0.7)} {$x+(11.875*0.7)},{$y+(4.375*0.7)} {$x+(0.125*0.7)},{$y+(4.375*0.7)} {$x+(10*0.7)},{$y+(11.875*0.7)}"
                                        fill="orange" fill-rule="nonzero"/>
                                    <polygon
                                        points=" {$x+(6.25*0.6)},{$y+(0.125*0.6)} {$x+(2*0.6)},{$y+(11.875*0.6)} {$x+(11.875*0.6)},{$y+(4.375*0.6)} {$x+(0.125*0.6)},{$y+(4.375*0.6)} {$x+(10*0.6)},{$y+(11.875*0.6)}"
                                        fill="green" fill-rule="nonzero"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='34'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/24/34">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>


            <!-- Player -->
            <xsl:for-each select="insertNode/Players/Player">
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
            <!-- Button "Back" -->
            <xsl:if test="insertNode/backButton//id = 1">
                <a xlink:href="/go/back/to/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Quit Game</text>
                    </svg>
                </a>
            </xsl:if>
        </svg>
    </xsl:template>












































    <!-- Cards 32 -->
    <xsl:template match="Gamescreen32">
        <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
            height="100%" width="100%" viewBox="0 0 200 100">
            <!-- "Memory" Logo -->
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

            <xsl:for-each select="insertNode/Cards32/Card">
                <xsl:if test="Visibility = 1">


                    <xsl:choose>
                        <xsl:when test="@cardid='11' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="red"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="yellow" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="orange " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="orange" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='11'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/11">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='12' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="red"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="yellow" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="orange " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="orange" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='12'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/12">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='13' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="blue"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8" fill="pink"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" plum" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="lightgreen " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="lightgreen" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='13'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/13">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='14' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="blue"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8" fill="pink"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" plum" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="lightgreen " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="lightgreen" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='14'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/14">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='15' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="plum"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill=" hotpink " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightgreen" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="oldlace " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="oldlace" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='15'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/15">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='16' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="plum"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill=" hotpink " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightgreen" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="oldlace " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="oldlace" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='16'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/16">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>







                        <xsl:when test="@cardid='17' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="gray"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="royalblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="blue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="blue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='17'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/17">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='18' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="gray"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="royalblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="blue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="blue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='18'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/18">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='19' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="pink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8" fill="plum"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="oldlace " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="hotpink " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="hotpink" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='19'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/19">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='20' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="pink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8" fill="plum"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="oldlace " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="hotpink " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="hotpink" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='20'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/20">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='21' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="green "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="indigo " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="oldlace" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="tomato  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="tomato " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='21'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/21">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='22' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="green "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="indigo " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="oldlace" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="tomato  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="tomato " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='22'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/22">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='23' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="purple" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="orange  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="orange " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='23'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/23">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='24' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="purple" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="orange  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="orange " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='24'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/24">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='25' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightblue "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="tomato " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="fuchsia " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="pink  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="pink " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='25'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/25">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='26' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightblue "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="tomato " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="fuchsia " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="pink  " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="pink " stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='26'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/26">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='27' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="yellow"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6" fill="red"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="green " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="green" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='27'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/27">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='28' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="yellow"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6" fill="red"
                                        stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="green " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="green" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='28'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/28">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='29' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="fuchsia"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="hotpink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" pink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4" fill="red "
                                        stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="red" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='29'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/29">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='30' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="fuchsia"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="hotpink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" pink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4" fill="red "
                                        stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="red" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='30'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/30">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='31' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill=" indigo"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="fuchsia" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightgreen" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="royalblue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="royalblue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='31'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/31">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='32' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill=" indigo"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="fuchsia" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightgreen" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="royalblue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="royalblue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='32'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/32">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>







                        <xsl:when test="@cardid='33' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="lightblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="fuchsia" stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="fuchsia" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='33'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/33">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='34' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="hotpink"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="lightblue" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="fuchsia" stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="fuchsia" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='34'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/34">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>





                        <xsl:when test="@cardid='35' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="oldlace" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightblue " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="indigo " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="indigo" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='35'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/35">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='36' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="lightgreen "
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="oldlace" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="lightblue " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="indigo " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="indigo" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='36'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/36">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>



                        <xsl:when test="@cardid='37' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="red " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill=" yellow " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="yellow" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='37'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/37">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='38' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="tomato"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="red " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill="orange" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill=" yellow " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="yellow" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='38'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/38">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='39' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                   
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="oldlace"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="plum " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" pink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="lightblue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="lightblue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='39'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/39">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>




                        <xsl:when test="@cardid='40' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="oldlace"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="plum " stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" pink" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="lightblue " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="lightblue" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='40'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/40">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>


                        <xsl:when test="@cardid='41' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="gray" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="tomato " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="tomato" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='41'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/41">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>

                        <xsl:when test="@cardid='42' and StatusOpen = 1">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <g>
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="royalblue"
                                        stroke="black" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="8" height="8"
                                        fill="gray" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="6" height="6"
                                        fill=" green" stroke-width="0.5"/>
                                    <rect x="{$x+0.2}" y="{$y+0.2}" width="4" height="4"
                                        fill="tomato " stroke-width="0.5"/>
                                    <rect x="{$x+8.2}" y="{$y+8.2}" width="3.5" height="3.5"
                                        fill="tomato" stroke-width="0.5"/>
                                </svg>
                            </g>
                        </xsl:when>
                        <xsl:when test="StatusOpen = 0 and @cardid='42'">
                            <xsl:variable select="XCoordinate" name="x"/>
                            <xsl:variable select="YCoordinate" name="y"/>
                            <a xlink:href="/Card/turn/32/42">
                                <svg>
                                    <rect x="{$x}" y="{$y}" width="12" height="12" fill="white"
                                        stroke="black" stroke-width="0.5"/>
                                    <text x="{$x}" y="{$y}" fill="black" font-size="3"
                                        font-style="italic" transform="rotate(-40 {$x+15},{$y+1})">
                                        Memory </text>
                                </svg>
                            </a>
                        </xsl:when>
                    </xsl:choose>
                </xsl:if>
            </xsl:for-each>

            <!-- Player -->
            <xsl:for-each select="insertNode/Players/Player">
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
            <!-- Button "Back" -->
            <xsl:if test="insertNode/backButton//id = 1">
                <a href="/go/back/to/Startscreen">
                    <svg>
                        <text x="20" y="90" fill="lightgray" alignment-baseline="middle"
                            text-anchor="middle" font-size="5" font-style="italic">Quit Game</text>
                    </svg>
                </a>
            </xsl:if>

        </svg>
    </xsl:template>



    
    
    
</xsl:stylesheet>
