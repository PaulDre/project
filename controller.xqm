
xquery version "3.0"  encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";
import module namespace d = "memory/DeleteDatabases" at "DeleteDatabases.xqm";
import module namespace t = "memory/turnCards" at "turnCards.xqm";

declare variable $c:start := doc("../memory/Startscreen.html");
declare variable $c:memorydb := db:open("memory");
declare variable $c:xslt := doc("Game.xsl");



(:this function shows the startsceen if 
you type localhost:8984/memory in the Browser:)
declare
%rest:path("/memory")
%rest:GET
function c:start() {
   $c:start
};



declare
%rest:path('/Card/turn/16/{$cardid}')
function c:openCard16($cardid as xs:string)
{
t:openCard16($cardid),
db:output(c:redirectToTransformator("Gamescreen16"))
};


declare
%rest:path('/Card/turn/24/{$cardid}')
function c:openCard24($cardid as xs:string)
{
t:openCard24($cardid),
db:output(c:redirectToTransformator("Gamescreen24"))
};


declare
%rest:path('/Card/turn/32/{$cardid}')
function c:openCard32($cardid as xs:string)
{
t:openCard32($cardid),
db:output(c:redirectToTransformator("Gamescreen32"))
};


declare
%rest:path('/popup/noMatch/continue/16')
function c:noMatch16(){
  t:noMatchPopup16(),
  db:output(c:redirectToTransformator("Gamescreen16"))  
};




declare
%rest:path('/show/16Cards/delete/24and32')
function c:delete24and32(){
  d:deleteDatabase24(),
  d:deleteDatabase32(),
  db:output(c:redirectToTransformator("Gamescreen16"))  
};


declare
%rest:path('/show/24Cards/delete/16and32')
function c:delete16and32(){
  d:deleteDatabase16(),
  d:deleteDatabase32(),
  db:output(c:redirectToTransformator("Gamescreen24"))  
};



declare
%rest:path('/show/32Cards/delete/16and24')
function c:delete16and24(){
  d:deleteDatabase16(),
  d:deleteDatabase24(),
  db:output(c:redirectToTransformator("Gamescreen32"))  
};



declare
%rest:path('/go/back/to/Startscreen')
function c:goBackToStartscreen(){
  d:deleteDatabase16(),
  d:deleteDatabase24(),
  d:deleteDatabase32(),
  db:output(c:redirectToTransformator("Startscreen"))  
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
