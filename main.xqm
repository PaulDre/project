xquery version "3.0"  encoding "UTF-8";

module namespace m = "memory/main";
import module namespace p = "memory/choosePlayer" at "choosePlayer.xqm";
import module namespace p = "memory/chooseCards" at "chooseCards.xqm";
xquery version "3.0"  encoding "UTF-8";
declare namespace xslt = "http://basex.org/modules/xslt";


declare variable $c:start := doc("../Startscreen.xml");
declare variable $c:memorydb := db:open("DatabaseMemory");
declare variable $c:xslt := doc("Game.xsl");




(: redirects to the Transformator-URL :)
declare function c:redirectToTransformator($gameId as xs:string) {
  let $url := fn:concat("/memory/transform/", $gameId)
  return web:redirect($url)
};


declare
%updating
%rest:path('/memory/transform/{$gameId}')
%rest:GET
%output:media-type("text/html")
function c:transformToHtml($gameId as xs:string) {
  let $game2 := fn:concat($gameId, ".xml")
  let $game := $c:memorydb/doc($game2)
  return xslt:transform-text($game, $c:xslt)
};

(: open database blackjack, locate resource within database and navigate to its top element :)
declare variable $g:casino := db:open("blackjack")/casino;

(: this function creates a new game instance, with players' names and lower and upper bet limits as parameters :)
declare function g:createNewGame() as element(game) {
 
  let $choosePlayer23456 :=  element(player2)
                                
  let $chooseCards162432 :=  element(cards16)
     
  return
    <game>    
      <NumberOfPlayer>{$choosePlayer23456}</NumberOfPlayer>
      <NumberOfCards>{$chooseCards162432}</NumberOfCards>
    </game>
};







  