xquery version "3.0"  encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";


declare variable $c:start := doc("../Startscreen.xml");
declare variable $c:memorydb := db:open("memory");
declare variable $c:xslt := doc("Game.xsl");



(:
declare
%rest:path("/memory")
%rest:GET
function c:start() {
  $c:start
};
:)



(: redirects to the Transformator-URL :)
declare function c:redirectToTransformator($gameId as xs:string) {
  let $url := fn:concat("/blackjack/transform/", $gameId)
  return web:redirect($url)
};


declare
%rest:path('/memory/transform/{$gameId}')
%rest:GET
%output:media-type("text/html")
function c:transformToHtml($gameId as xs:string) {
  let $gameId := $c:memorydb/NumberOfPlayer
  return xslt:transform-text($gameId, $c:xslt)
};