xquery version "3.0"  encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";


declare variable $c:start := doc("../Startscreen.xml");
declare variable $c:memorydb := db:open("memory");
declare variable $c:xslt := doc("Game.xsl");




declare
%rest:path("/memory")
%rest:GET
function c:start() {
  $c:start
};