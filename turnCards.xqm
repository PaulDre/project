module namespace t = "memory/turnCards";
import module namespace c = "memory/controller" at "controller.xqm";









(:---------------16 Cards----------------:)




(:This Function gets activated if any Card from Gamescreen16 is clicked:)
declare function t:openCard16($cardid as xs:string) {
    
    (:Change the Status Open to "true"(1) and increase the counter of turned cards:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = $cardid]/StatusOpen
        with 1,
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards
        with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards + 1,
    
    (:The following functions are just activated if the first Card is flipped over:)
    
    (:if the first Card is turned over the "nextturn" counter is increased by 1. This counter is needed to know which player is the next one:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn
            with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn + 1
    else
        (),
    
    (:the id of the first flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne
            with
            doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardOne
            with
            doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:The following functions are just activated if the second Card is flipped over:)
    
    (:if the "nextturn" counter that identifys the next player is higher than the numer of player the conter changes back to 1 (player 1):)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 0 and (doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn mod (doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer + 1)) = 0) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn
            with 1
    else
        (),
    
    (:the id of the second flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo
            with
            doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardTwo
            with
            doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:now both cards are open and the "compare popup" have to appear:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/compareCards
            with 1
    else
        ()
};





(:this functions compares the 2 id's of the open Cards:)
declare function t:compareCards16() {
    (:the "compare popup" dissapears:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/compareCards
        with 0,
    
    (:if the cards (id's) are the same then the "Match!" popup gets activated:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne = doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
            with 1
    else
        (),
    
    (:if the cards (id's) are the not same then the "No Match!" popup gets activated:)
    if (doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardOne != doc("Gamescreen16.xml")/Gamescreen16/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
            with 0
    else
        ()
};





(:this function gets activated if you have no Match:)
declare function t:noMatchPopup16() {
    
    (:this function flipps the card one back over :)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card
    [@cardid = doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardOne]/StatusOpen
        with 0,
    
    (:this function flipps the card two back over :)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card
    [@cardid = doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardTwo]/StatusOpen
        with 0,
    
    (:the nextPlayer function move the turn to the next Player:)
    t:nextPlayer16(),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
        with 2
};




(:this function gets activated if you have a Match:)
declare function t:MatchPopup16() {
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card
    [@cardid = doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardOne]/Visibility
        with 0,
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card
    [@cardid = doc("Gamescreen16.xml")/Gamescreen16/insertNode/attributeIdOfCardTwo]/Visibility
        with 0,
    
    
    (:this function is responisble that the player can make another turn:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn
        with xs:integer(fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn - 1),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/statusFoundPairButton/Found
        with 2,
    
    
    (:Give Points:)
    if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Turn = 1)
    then
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Points
            with
            fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 1]/Points + 1
    else
        if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Turn = 1)
        then
            replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Points
                with
                fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 2]/Points + 1
        else
            if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Turn = 1)
            then
                replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Points
                    with
                    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 3]/Points + 1
            else
                if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Turn = 1)
                then
                    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Points
                        with
                        fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 4]/Points + 1
                else
                    if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Turn = 1)
                    then
                        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Points
                            with
                            fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 5]/Points + 1
                    else
                        if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Turn = 1)
                        then
                            replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Points
                                with
                                fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = 6]/Points + 1
                        else
                            ()
                            
                          
};


(:Winner:)
declare
%rest:path('/popup/Winner/to/Startscreen/16')
function t:getWinner() {
    if (fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 11]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 12]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 13]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 14]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 15]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 16]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 17]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 18]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 19]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 20]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 21]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 22]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 23]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 24]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 25]/Visibility = 0 and
    fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Cards16/Card[@cardid = 26]/Visibility = 0) then
        
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/winnerPopup/Visibility
            with 1
    else
        ( 
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/winnerPopup/Visibility
            with 0)


};


(:this function passes on to the next Player:)
declare function t:nextPlayer16() {
    let $nextturn := doc("Gamescreen16.xml")/Gamescreen16/insertNode/nextturn
    let $playerturn := $nextturn - 1
    (:the activated player gets set on flase and the next player gets set in true:)
    return
        (
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = $playerturn]/Turn
            with 0,
        replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid = $nextturn]/Turn
            with 1,
        
        (:this function is needed that the last player gets set on false:)
        if ($nextturn = 1) then
            replace value of node
            fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player
            [@playerid = doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer]/Turn
                with 0
        else
            ()
        )
};



(:Save Funktion:)
declare
function t:saveGame16() {
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/saveButton/Popup
        with 1
};
(:Save Funktion . Popup disappears :)

declare
function t:nosavedPopup16() {
    replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/saveButton/Popup
        with 0
};





(:---------------24 Cards----------------:)




(:This Function gets activated if any Card from Gamescreen24 is clicked:)
declare function t:openCard24($cardid as xs:string) {
    
    (:Change the Status Open to "true"(1) and increase the counter of turned cards:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid = $cardid]/StatusOpen
        with 1,
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards
        with fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards + 1,
    
    (:The following functions are just activated if the first Card is flipped over:)
    
    (:if the first Card is turned over the "nextturn" counter is increased by 1. This counter is needed to know which player is the next one:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn
            with fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn + 1
    else
        (),
    
    (:the id of the first flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardOne
            with
            doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardOne
            with
            doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:The following functions are just activated if the second Card is flipped over:)
    
    (:if the "nextturn" counter that identifys the next player is higher than the numer of player the conter changes back to 1 (player 1):)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 0 and (doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn mod (doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer + 1)) = 0) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn
            with 1
    else
        (),
    
    (:the id of the second flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardTwo
            with
            doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardTwo
            with
            doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:now both cards are open and the "compare popup" have to appear:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/compareCards
            with 1
    else
        ()
};






(:this functions compares the 2 id's of the open Cards:)
declare function t:compareCards24() {
    (:the "compare popup" dissapears:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/compareCards
        with 0,
    
    (:if the cards (id's) are the same then the "Match!" popup gets activated:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardOne = doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/statusFoundPairButton/Found
            with 1
    else
        (),
    
    (:if the cards (id's) are the not same then the "No Match!" popup gets activated:)
    if (doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardOne != doc("Gamescreen24.xml")/Gamescreen24/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/statusFoundPairButton/Found
            with 0
    else
        ()
};






(:this function gets activated if you have no Match:)
declare function t:noMatchPopup24() {
    
    (:this function flipps the card one back over :)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card
    [@cardid = doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardOne]/StatusOpen
        with 0,
    
    (:this function flipps the card two back over :)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card
    [@cardid = doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardTwo]/StatusOpen
        with 0,
    
    (:the nextPlayer function move the turn to the next Player:)
    t:nextPlayer24(),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/statusFoundPairButton/Found
        with 2
};




(:this function gets activated if you have a Match:)
declare function t:MatchPopup24() {
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card
    [@cardid = doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardOne]/Visibility
        with 0,
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Cards24/Card
    [@cardid = doc("Gamescreen24.xml")/Gamescreen24/insertNode/attributeIdOfCardTwo]/Visibility
        with 0,
    
    (:this function is responisble that the player can make another turn:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn
        with xs:integer(fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn - 1),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/statusFoundPairButton/Found
        with 2,
    
    
    (:Give Points:)
    if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 1]/Turn = 1)
    then
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 1]/Points
            with
            fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 1]/Points + 1
    else
        if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 2]/Turn = 1)
        then
            replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 2]/Points
                with
                fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 2]/Points + 1
        else
            if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 3]/Turn = 1)
            then
                replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 3]/Points
                    with
                    fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 3]/Points + 1
            else
                if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 4]/Turn = 1)
                then
                    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 4]/Points
                        with
                        fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 4]/Points + 1
                else
                    if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 5]/Turn = 1)
                    then
                        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 5]/Points
                            with
                            fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 5]/Points + 1
                    else
                        if (fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 6]/Turn = 1)
                        then
                            replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 6]/Points
                                with
                                fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = 6]/Points + 1
                        else
                            ()
};





(:this function passes on to the next Player:)
declare function t:nextPlayer24() {
    let $nextturn := doc("Gamescreen24.xml")/Gamescreen24/insertNode/nextturn
    let $playerturn := $nextturn - 1
    (:the activated player gets set on flase and the next player gets set in true:)
    return
        (
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = $playerturn]/Turn
            with 0,
        replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid = $nextturn]/Turn
            with 1,
        
        (:this function is needed that the last player gets set on false:)
        if ($nextturn = 1) then
            replace value of node
            fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player
            [@playerid = doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer]/Turn
                with 0
        else
            ()
        )
};



(:Save Function:)
declare
function t:saveGame24() {
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/saveButton/Popup
        with 1
};


(:Save Function. Popup disappears:)
declare
function t:nosavedPopup24() {
    replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/saveButton/Popup
        with 0
};






(:---------------32 Cards----------------:)




(:This Function gets activated if any Card from Gamescreen32 is clicked:)
declare function t:openCard32($cardid as xs:string) {
    
    (:Change the Status Open to "true"(1) and increase the counter of turned cards:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid = $cardid]/StatusOpen
        with 1,
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards
        with fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards + 1,
    
    (:The following functions are just activated if the first Card is flipped over:)
    
    (:if the first Card is turned over the "nextturn" counter is increased by 1. This counter is needed to know which player is the next one:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn
            with fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn + 1
    else
        (),
    
    (:the id of the first flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardOne
            with
            doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 1) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardOne
            with
            doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:The following functions are just activated if the second Card is flipped over:)
    
    (:if the "nextturn" counter that identifys the next player is higher than the numer of player the conter changes back to 1 (player 1):)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 0 and (doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn mod (doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer + 1)) = 0) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn
            with 1
    else
        (),
    
    (:the id of the second flipped card that identifys the two cards that matches gets saved:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardTwo
            with
            doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid = $cardid]/id
    else
        (),
    
    (:the id of the first flipped card that identifys the "real Id" that is connected to the coordinates gets saved:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardTwo
            with
            doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card[@cardid = $cardid]/[@cardid]
    else
        (),
    
    (:now both cards are open and the "compare popup" have to appear:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/counterOfTurnedCards mod 2 = 0) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/compareCards
            with 1
    else
        ()
};





(:this functions compares the 2 id's of the open Cards:)
declare function t:compareCards32() {
    (:the "compare popup" dissapears:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/compareCards
        with 0,
    
    (:if the cards (id's) are the same then the "Match!" popup gets activated:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardOne = doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/statusFoundPairButton/Found
            with 1
    else
        (),
    
    (:if the cards (id's) are the not same then the "No Match!" popup gets activated:)
    if (doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardOne != doc("Gamescreen32.xml")/Gamescreen32/insertNode/idOfCardTwo) then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/statusFoundPairButton/Found
            with 0
    else
        ()
};





(:this function gets activated if you have no Match:)
declare function t:noMatchPopup32() {
    
    (:this function flipps the card one back over :)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card
    [@cardid = doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardOne]/StatusOpen
        with 0,
    
    (:this function flipps the card two back over :)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card
    [@cardid = doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardTwo]/StatusOpen
        with 0,
    
    (:the nextPlayer function move the turn to the next Player:)
    t:nextPlayer32(),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/statusFoundPairButton/Found
        with 2
};




(:this function gets activated if you have a Match:)
declare function t:MatchPopup32() {
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card
    [@cardid = doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardOne]/Visibility
        with 0,
    
    (:this function deletes Card One:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Cards32/Card
    [@cardid = doc("Gamescreen32.xml")/Gamescreen32/insertNode/attributeIdOfCardTwo]/Visibility
        with 0,
    
    (:this function is responisble that the player can make another turn:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn
        with xs:integer(fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn - 1),
    
    (:this function deletes all popups:)
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/statusFoundPairButton/Found
        with 2,
    
    
    (:Give Points:)
    if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 1]/Turn = 1)
    then
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 1]/Points
            with
            fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 1]/Points + 1
    else
        if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 2]/Turn = 1)
        then
            replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 2]/Points
                with
                fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 2]/Points + 1
        else
            if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 3]/Turn = 1)
            then
                replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 3]/Points
                    with
                    fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 3]/Points + 1
            else
                if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 4]/Turn = 1)
                then
                    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 4]/Points
                        with
                        fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 4]/Points + 1
                else
                    if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 5]/Turn = 1)
                    then
                        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 5]/Points
                            with
                            fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 5]/Points + 1
                    else
                        if (fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 6]/Turn = 1)
                        then
                            replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 6]/Points
                                with
                                fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = 6]/Points + 1
                        else
                            (
    
    )
   
};





(:this function passes on to the next Player:)
declare function t:nextPlayer32() {
    let $nextturn := doc("Gamescreen32.xml")/Gamescreen32/insertNode/nextturn
    let $playerturn := $nextturn - 1
    (:the activated player gets set on flase and the next player gets set in true:)
    return
        (
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = $playerturn]/Turn
            with 0,
        replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid = $nextturn]/Turn
            with 1,
        
        (:this function is needed that the last player gets set on false:)
        if ($nextturn = 1) then
            replace value of node
            fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player
            [@playerid = doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer]/Turn
                with 0
        else
            ()
        )
};





(:Save Function:)
declare
function t:saveGame32() {
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/saveButton/Popup
        with 1
};


(:Save Function. Popup disappears:)
declare
function t:nosavedPopup32() {
    replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/saveButton/Popup
        with 0
};


