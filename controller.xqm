
xquery version "3.0"  encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";


declare variable $c:start := doc("../memory/Startscreen.html");
declare variable $c:memorydb := db:open("memory")/DatabaseMemory;
declare variable $c:xslt := doc("Game.xsl");
declare variable $c:counterOfTurnedCards := "0";

(:this function shows the startsceen if 
you type localhost:8984/memory in the Browser:)
declare
%rest:path("/memory")
%rest:GET
function c:start() {
   $c:start
};



declare
%rest:path('/Card/turn/{$cardid}')
function c:openCard($cardid as xs:string)
{
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/Cards16/Card[@id=$cardid]/StatusOpen
with fn:doc("Gamescreen16.xml")/Gamescreen16/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/counterOfTurnedCards
with fn:doc("Gamescreen16.xml")/Gamescreen16/counterOfTurnedCards + 1,
db:output(c:redirectToTransformator("Gamescreen16"))
};





declare
%rest:path('/TheNumberOfPlayerIs/{$numberOfPlayerid}')
function c:chooseNumberOfPlayer($numberOfPlayerid as xs:string)
{

db:output(c:redirectToTransformator("NumberOfCards"))
};





(: redirects to the Transformator-URL :)

declare function c:redirectToTransformator($gameId as xs:string) {
  let $url := fn:concat("/memory/transform/", $gameId)
  return web:redirect($url)
};



declare
%rest:path('/memory/transform/{$gameId}')
%rest:GET
%output:media-type("text/html")
function c:transformToHtml($gameId as xs:string) {
  let $game2 := fn:concat($gameId, ".xml")
  let $game := $c:memorydb/doc($game2)
  return xslt:transform-text($game, $c:xslt)
};
