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


declare
%rest:path('/memory/transform/{$gameId}')
%rest:GET
%output:media-type("text/html")
function c:transformToHtml($game as xs:string) {
  let $game := $c:memorydb/Startscreen/
  return xslt:transform-text($game, $c:xslt)
};