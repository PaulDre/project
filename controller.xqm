
xquery version "3.0" encoding "UTF-8";

module namespace c = "memory/controller";
declare namespace xslt = "http://basex.org/modules/xslt";
import module namespace d = "memory/DeleteDatabases" at "DeleteDatabases.xqm";
import module namespace t = "memory/turnCards" at "turnCards.xqm";
import module namespace request = "http://exquery.org/ns/request";

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
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 11]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 12]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 13]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 14]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 15]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 16]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 17]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 18]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 19]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 20]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 21]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 22]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 23]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 24]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 25]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/Visibility,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/StatusOpen,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Cards16/Card[@cardid = 26]/Visibility
            with
            $g16/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/Visibility,
        
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 1]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 1]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 1]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 2]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 2]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 2]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 3]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 3]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 3]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 4]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 4]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 4]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 5]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 5]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 5]/Points,
        
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Turn
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 6]/Turn,
        replace value of node fn:doc("SaveGame16.xml")/SaveGame16/insertNode/Players/Player[@playerid = 6]/Points
            with
            $g16/Gamescreen16/insertNode//Players/Player[@playerid = 6]/Points,
        
        
        db:output(c:redirectToTransformator("Gamescreen16")))



};


declare
%rest:path('/testsave24')
function c:saveGame24() {
    
    let $g24 := fn:doc("Gamescreen24.xml")
    
    return
        (
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 11]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 11]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 11]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 11]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 12]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 12]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 12]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 12]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 13]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 13]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 13]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 13]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 14]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 14]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 14]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 14]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 15]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 15]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 15]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 15]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 16]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 16]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 16]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 16]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 17]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 17]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 17]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 17]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 18]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 18]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 18]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 18]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 19]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 19]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 19]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 19]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 20]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 20]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 20]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 20]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 21]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 21]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 21]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 21]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 22]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 22]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 22]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 22]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 23]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 23]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 23]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 23]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 24]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 24]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 24]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 24]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 25]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 25]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 25]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 25]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 26]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 26]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 26]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 26]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 27]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 27]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 27]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 27]/Visibility,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 28]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 28]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 28]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 28]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 29]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 29]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 29]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 29]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 30]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 30]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 30]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 30]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 31]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 31]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 31]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 31]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 32]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 32]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 32]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 32]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 33]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 33]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 33]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 33]/Visibility,
        
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 34]/StatusOpen
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 34]/StatusOpen,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Cards24/Card[@cardid = 34]/Visibility
            with
            $g24/Gamescreen24/insertNode/Cards24/Card[@cardid = 34]/Visibility,
        
        (:Player :)
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 1]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 1]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 1]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 1]/Points,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 2]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 2]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 2]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 2]/Points,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 3]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 3]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 3]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 3]/Points,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 4]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 4]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 4]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 4]/Points,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 5]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 5]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 5]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 5]/Points,
        
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 6]/Turn
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 6]/Turn,
        replace value of node fn:doc("SaveGame24.xml")/SaveGame24/insertNode/Players/Player[@playerid = 6]/Points
            with
            $g24/Gamescreen24/insertNode//Players/Player[@playerid = 6]/Points,
        
        
        db:output(c:redirectToTransformator("Gamescreen24")))



};


declare
%rest:path('/testsave32')
function c:saveGame32() {
    
    let $g32 := fn:doc("Gamescreen32.xml")
    
    return
        (
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 11]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 11]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 11]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 11]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 12]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 12]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 12]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 12]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 13]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 13]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 13]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 13]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 14]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 14]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 14]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 14]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 15]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 15]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 15]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 15]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 16]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 16]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 16]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 16]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 17]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 17]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 17]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 17]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 18]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 18]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 18]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 18]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 19]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 19]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 19]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 19]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 20]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 20]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 20]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 20]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 21]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 21]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 21]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 21]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 22]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 22]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 22]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 22]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 23]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 23]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 23]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 23]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 24]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 24]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 24]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 24]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 25]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 25]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 25]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 25]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 26]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 26]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 26]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 26]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 27]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 27]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 27]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 27]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 28]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 28]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 28]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 28]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 29]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 29]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 29]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 29]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 30]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 30]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 30]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 30]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 31]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 31]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 31]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 31]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 32]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 32]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 32]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 32]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 33]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 33]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 33]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 33]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 34]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 34]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 34]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 34]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 35]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 35]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 35]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 35]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 36]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 36]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 36]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 36]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 37]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 37]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 37]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 37]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 38]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 38]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 38]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 38]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 39]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 39]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 39]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 39]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 40]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 40]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 40]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 40]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 41]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 4]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 41]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 41]/Visibility,
        
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 42]/StatusOpen
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 42]/StatusOpen,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Cards32/Card[@cardid = 42]/Visibility
            with
            $g32/Gamescreen32/insertNode/Cards32/Card[@cardid = 42]/Visibility,
            
            (:Player :)
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 1]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 1]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 1]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 1]/Points,
            
             replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 2]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 2]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 2]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 2]/Points,
        
        
         replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 3]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 3]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 3]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 3]/Points,
        
        
         replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 4]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 4]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 4]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 4]/Points,
        
        
         replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 5]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 5]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 5]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 5]/Points,
        
        
         replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 6]/Turn
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 6]/Turn,
        replace value of node fn:doc("SaveGame32.xml")/SaveGame32/insertNode/Players/Player[@playerid = 6]/Points
            with
            $g32/Gamescreen32/insertNode//Players/Player[@playerid = 6]/Points,
        
        
        
        
        
        
        db:output(c:redirectToTransformator("Gamescreen32")))




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
    d:deleteSavegame24(),
    d:deleteSaveGame32(),
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
    d:deleteSavegame16(),
    d:deleteSaveGame32(),
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
    d:deleteSavegame16(),
    d:deleteSavegame24(),
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
