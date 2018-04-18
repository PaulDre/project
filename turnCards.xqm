module namespace t = "memory/turnCards";
import module namespace c = "memory/controller" at "controller.xqm";



declare function t:openCard16($cardid as xs:string)
{
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid=$cardid]/StatusOpen
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards + 1,

 if( doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2= 1 )then
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne with 
 doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid=$cardid]/id
 
 else if( doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2= 0 )then
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo with
 doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid=$cardid]/id
 else(),
 
 if( doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2= 0 and 
 doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne=doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo)then
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
 with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1
 
 else if( doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2= 0 and 
 doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne!=doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo)then
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
 with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value0 
 else(),
 
 if( fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Playerturn = 6) then 
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Playerturn with
 fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1 
 else()
  
 
};


declare function t:openCard24($cardid as xs:string)
{
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid=$cardid]/StatusOpen
with fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards
with fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards + 1
};


declare function t:openCard32($cardid as xs:string)
{
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid=$cardid]/StatusOpen
with fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards
with fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards + 1
};




(:Popup verschwindet:)
declare
function t:noMatchPopup16(){  
let $playerturn := doc("Gamescreen16.xml")/Gamescreen16/insertNode/Playerturn
let $nextturn := $playerturn + 1
let $cardOneid := doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne
let $cardTwoid := doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo
return(
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
 with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value2
(:replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=$playerturn]/Turn
 with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value0,
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=$nextturn]/Turn
 with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
 fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Playerturn +1,
 replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid=$cardOneid]/StatusOpen
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value0,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid=$cardTwoid]/StatusOpen
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value0:)
 
)
 
 
  
};