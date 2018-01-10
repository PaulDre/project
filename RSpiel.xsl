<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">



    <xsl:variable name="scale" select="1"/>
    <xsl:variable name="button_height" select="100 * $scale"/>
    <xsl:variable name="button_width" select="300 * $scale"/>
    <xsl:variable name="button_y" select="40 * $scale"/>


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
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle" text-anchor="middle"
                        font-size="5" font-style="italic">Quit</text>
                </svg>
                
            </xsl:if>
            
            
            
            
        </svg>
    </xsl:template>

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
                    <circle  r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                    <text x="97" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 4 </text>
                </svg>
            </xsl:if>

            <xsl:if test="pButton//id = 4">
                <svg>
                    <circle  r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
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
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle" text-anchor="middle"
                        font-size="5" font-style="italic">Back</text>
                </svg>
                
                </xsl:if>
          </svg>   
    </xsl:template>
    
    
    <xsl:template match = "Menu3">
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
                        text-anchor="middle" font-weight="bold" letter-spacing="2.5">Bitte Anzahl Karten auswählen! </text>
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
                    <circle  r="8" fill="black" cx="100" cy="55" style="fill-opacity:0.8"/>
                    <text x="95" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 24 </text>
                </svg>
            </xsl:if>
            
            <xsl:if test="kButton//id = 3">
                <svg>
                    <circle  r="8" fill="black" cx="135" cy="55" style="fill-opacity:0.8"/>
                    <text x="130" y="58" fill="white" font-size="10" font-style="italic"
                        font-weight="bold"> 32 </text>
                </svg>
            </xsl:if>
            
            <xsl:if test="backButton//id = 1">
                
                <svg>
                    <text x="20" y="90" fill="lightgray" alignment-baseline="middle" text-anchor="middle"
                        font-size="5" font-style="italic">Back</text>
                </svg>
                
            </xsl:if>
        </svg>
        
        
        
        
    </xsl:template>


</xsl:stylesheet>
