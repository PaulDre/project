
xquery version "3.0" encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";
import module namespace d = "memory/DeleteDatabases" at "DeleteDatabases.xqm";
import module namespace t = "memory/turnCards" at "turnCards.xqm";
import module namespace request = "http://exquery.org/ns/request";
import module namespace i = "memory/insertCardsDB" at "InsertCardsInDB.xqm";

declare variable $c:memorydb := db:open("memory");
declare variable $c:xslt := doc("Game.xsl");


(:--------------------gerneral functions--------------------:)

(:this function shows the startsceen if 
you type localhost:8984/memory in the Browser:)
declare
%rest:path("/memory")
%rest:GET
function c:start() {
    db:output(c:redirectToTransformator("Startscreen"))
};

declare
%rest:path('/testsave16')
function c:saveGame16() {
    
    let $g16 := fn:doc("Gamescreen16.xml")
    
    return
        (
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/counterOfTurnedCards
            with
            $g16/Gamescreen16/insertNode/counterOfTurnedCards,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/idOfCardOne
            with
            $g16/Gamescreen16/insertNode/idOfCardOne,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/idOfCardTwo
            with
            $g16/Gamescreen16/insertNode/idOfCardTwo,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/attributeIdOfCardOne
            with
            $g16/Gamescreen16/insertNode/attributeIdOfCardOne,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/attributeIdOfCardTwo
            with
            $g16/Gamescreen16/insertNode/attributeIdOfCardTwo,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/compareCards
            with
            $g16/Gamescreen16/insertNode/compareCards,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/statusFoundPairButton/Found
            with
            $g16/Gamescreen16/insertNode/statusFoundPairButton/Found,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/nextturn
            with
            $g16/Gamescreen16/insertNode/nextturn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/numberOfPlayer
            with
            $g16/Gamescreen16/insertNode/numberOfPlayer,
        
        (:Cards:)
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/YCoordinate,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/id
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/id,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/XCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/XCoordinate,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/YCoordinate
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/YCoordinate,
        
        
        (:Player:)
        
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 0]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 0]/Turn,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Active,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Active,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Active,
        
        
        
        replace value of node fn:doc("Savegame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Active,
        
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Active,
        
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Nickname
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Nickname,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Turn,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Points
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Active
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Active,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 7]/Turn
            with
            $g16/Gamescreen16/insertNode/Players/Player[@playerid = 7]/Turn,
        
        
        db:output(c:redirectToTransformator("Gamescreen16")))



};




declare
%rest:path('/testload16')
function c:loadGame16() {
    
    let $s16 := fn:doc("SaveGame16.xml")
    
    return
        (
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards
            with
            $s16/SaveGame16/insertNode/counterOfTurnedCards,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne
            with
            $s16/SaveGame16/insertNode/idOfCardOne,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo
            with
            $s16/SaveGame16/insertNode/idOfCardTwo,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardOne
            with
            $s16/SaveGame16/insertNode/attributeIdOfCardOne,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardTwo
            with
            $s16/SaveGame16/insertNode/attributeIdOfCardTwo,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/compareCards
            with
            $s16/SaveGame16/insertNode/compareCards,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
            with
            $s16/SaveGame16/insertNode/statusFoundPairButton/Found,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn
            with
            $s16/SaveGame16/insertNode/nextturn,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer
            with
            $s16/SaveGame16/insertNode/numberOfPlayer,
        
        
        (: Cards :)
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/YCoordinate,
        
        
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/YCoordinate,
        
        
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/YCoordinate,
            
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/YCoordinate,
        
        
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/YCoordinate,
            
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/YCoordinate,
            
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/YCoordinate,
            
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/YCoordinate,
            
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/YCoordinate,
            
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/YCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/YCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/YCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/XCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/YCoordinate,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/XCoordinate,
            
            replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/YCoordinate,
            
              replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/XCoordinate,
            
            replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/YCoordinate,
            
              replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/id
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/id,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/Visibility
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/Visibility,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/XCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/XCoordinate,
            
            replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/YCoordinate
            with
            $s16/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/YCoordinate,
        
   
        
        
        (:Players:)
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 0]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 0]/Turn,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 7]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 7]/Turn,
        
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 1]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 1]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 1]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 1]/Active,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 2]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 2]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 2]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 2]/Active,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 3]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 3]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 3]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 3]/Active,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 4]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 4]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 4]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 4]/Active,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 5]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 5]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 5]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 5]/Active,
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Nickname
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 6]/Nickname,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Turn
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 6]/Turn,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Points
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 6]/Points,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Active
            with
            $s16/SaveGame16/insertNode/Players/Player[@playerid = 6]/Active,
        
        
        
        
        
        
        
        
        
        db:output(c:redirectToTransformator("Gamescreen16")))
};


declare
%rest:path('/insertDB/load')
function c:insertDBinL() {
    i:insert16Cards(),
    db:output(c:redirectToTransformator("LoadGame"))
};

declare
%rest:path('/insertDB/new')
function c:insertDBinN() {
    i:insert16Cards(),
    db:output(c:redirectToTransformator("NumberOfPlayer"))
};






declare
%rest:path("/enter/name")
%rest:GET
updating function c:entername() {
    
    let $p1 := request:parameter("Player 1", "Player 1")
    let $p2 := request:parameter("Player 2", "Player 2")
    let $p3 := request:parameter("Player 3", "Player 3")
    let $p4 := request:parameter("Player 4", "Player 4")
    let $p5 := request:parameter("Player 5", "Player 5")
    let $p6 := request:parameter("Player 6", "Player 6")
    
    
    return
        (
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Nickname
            with $p1,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Nickname
            with $p2,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Nickname
            with $p3,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Nickname
            with $p4,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Nickname
            with $p5,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Nickname
            with $p6,
        
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 1]/Nickname
            with $p1,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 2]/Nickname
            with $p2,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 3]/Nickname
            with $p3,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 4]/Nickname
            with $p4,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 5]/Nickname
            with $p5,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 6]/Nickname
            with $p6,
        
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 1]/Nickname
            with $p1,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 2]/Nickname
            with $p2,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 3]/Nickname
            with $p3,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 4]/Nickname
            with $p4,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 5]/Nickname
            with $p5,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 6]/Nickname
            with $p6,
        
        db:output(c:redirectToTransformator("NumberOfCards")))
};



(:this function deletes every Database and directs back to the startscreen:)
declare
%rest:path('/go/back/to/Startscreen')
function c:goBackToStartscreen() {
    d:deleteDatabase16(),
    d:deleteDatabase24(),
    d:deleteDatabase32(),
    db:output(c:redirectToTransformator("Startscreen"))
};




(: this function transforms ref links to url's :)
declare function c:redirectToTransformator($gameId as xs:string) {
    let $url := fn:concat("/memory/transform/", $gameId)
    return
        web:redirect($url)
};


(:this function connects the xml with the xslt:)
declare
%rest:path('/memory/transform/{$gameId}')
%rest:GET
%output:media-type("text/html")
function c:transformToHtml($gameId as xs:string) {
    let $game2 := fn:concat($gameId, ".xml")
    let $game := $c:memorydb/doc($game2)
    return
        xslt:transform-text($game, $c:xslt)
};




(:--------------------cards 16--------------------:)

(:this function deletes the database 24 and 32:)
declare
%rest:path('/show/16Cards/delete/24and32')
function c:delete24and32() {
    d:deleteDatabase24(),
    d:deleteDatabase32(),
    db:output(c:redirectToTransformator("Gamescreen16"))
};

(:this function flipps a card:)
declare
%rest:path('/Card/turn/16/{$cardid}')
function c:openCard16($cardid as xs:string)
{
    t:openCard16($cardid),
    db:output(c:redirectToTransformator("Gamescreen16"))
};

(:this function shows the "compare" popup:)
declare
%rest:path('/popup/compare/16')
function c:compareCards16() {
    t:compareCards16(),
    db:output(c:redirectToTransformator("Gamescreen16"))
};

(:this function shows the "No Match! popup":)
declare
%rest:path('/popup/noMatch/continue/16')
function c:noMatch16() {
    t:noMatchPopup16(),
    db:output(c:redirectToTransformator("Gamescreen16"))
};

(:this function shows the "Match!" popup:)
declare
%rest:path('/popup/Match/continue/16')
function c:Match16() {
    t:MatchPopup16(),
    db:output(c:redirectToTransformator("Gamescreen16"))
};


(:Winner:)
declare
%rest:path('/button/winner/16')
function c:giveWinner16() {
    t:getWinner16(),
    db:output(c:redirectToTransformator("Gamescreen16"))
};



(:--------------------cards 24--------------------:)

(:this function deletes the database 16 and 32:)
declare
%rest:path('/show/24Cards/delete/16and32')
function c:delete16and32() {
    d:deleteDatabase16(),
    d:deleteDatabase32(),
    db:output(c:redirectToTransformator("Gamescreen24"))
};

(:this function flipps a card:)
declare
%rest:path('/Card/turn/24/{$cardid}')
function c:openCard24($cardid as xs:string)
{
    t:openCard24($cardid),
    db:output(c:redirectToTransformator("Gamescreen24"))
};

(:this function shows the "compare" popup:)
declare
%rest:path('/popup/compare/24')
function c:compareCards24() {
    t:compareCards24(),
    db:output(c:redirectToTransformator("Gamescreen24"))
};

(:this function shows the "No Match! popup":)
declare
%rest:path('/popup/noMatch/continue/24')
function c:noMatch24() {
    t:noMatchPopup24(),
    db:output(c:redirectToTransformator("Gamescreen24"))
};

(:this function shows the "Match!" popup:)
declare
%rest:path('/popup/Match/continue/24')
function c:Match24() {
    t:MatchPopup24(),
    db:output(c:redirectToTransformator("Gamescreen24"))
};


(:Winner:)
declare
%rest:path('/button/winner/24')
function c:giveWinner24() {
    t:getWinner24(),
    db:output(c:redirectToTransformator("Gamescreen24"))
};

(:--------------------cards 32--------------------:)

(:this function deletes the database 16 and 24:)
declare
%rest:path('/show/32Cards/delete/16and24')
function c:delete16and24() {
    d:deleteDatabase16(),
    d:deleteDatabase24(),
    db:output(c:redirectToTransformator("Gamescreen32"))
};

(:this function flipps a card:)
declare
%rest:path('/Card/turn/32/{$cardid}')
function c:openCard32($cardid as xs:string)
{
    t:openCard32($cardid),
    db:output(c:redirectToTransformator("Gamescreen32"))
};

(:this function shows the "compare" popup:)
declare
%rest:path('/popup/compare/32')
function c:compareCards32() {
    t:compareCards32(),
    db:output(c:redirectToTransformator("Gamescreen32"))
};

(:this function shows the "No Match! popup":)
declare
%rest:path('/popup/noMatch/continue/32')
function c:noMatch32() {
    t:noMatchPopup32(),
    db:output(c:redirectToTransformator("Gamescreen32"))
};

(:this function shows the "Match!" popup:)
declare
%rest:path('/popup/Match/continue/32')
function c:Match32() {
    t:MatchPopup32(),
    db:output(c:redirectToTransformator("Gamescreen32"))
};



(:Winner:)
declare
%rest:path('/button/winner/32')
function c:giveWinner32() {
    t:getWinner32(),
    db:output(c:redirectToTransformator("Gamescreen32"))
};
