module namespace i = "memory/insertCardsDB";
import module namespace c = "memory/controller" at "controller.xqm";




declare
%rest:path('/insertDB')
function i:insert16Cards() {
    
    
    
    (:--------------------Cards16------------------:)
    
    let $list16 := fn:random-number-generator()?permute(11 to 26)
    let $list216 := (60, 80, 100, 120, 60, 80, 100, 120, 60, 80, 100, 120, 60, 80, 100, 120)
    let $list316 := (25, 25, 25, 25, 40, 40, 40, 40, 55, 55, 55, 55, 70, 70, 70, 70)
    
    let $cards16 :=
    <insertNode>
        
        <counterOfTurnedCards>1</counterOfTurnedCards>
        <idOfCardOne>0</idOfCardOne>
        <idOfCardTwo>0</idOfCardTwo>
        <attributeIdOfCardOne>0</attributeIdOfCardOne>
        <attributeIdOfCardTwo>0</attributeIdOfCardTwo>
        <compareCards>0</compareCards>
        <statusFoundPairButton>
            <Found>3</Found>
        </statusFoundPairButton>
        <nextturn>1</nextturn>
        <numberOfPlayer>0</numberOfPlayer>
        <Cards16>
            {
                for $n16 at $seq16 in $list16
                return
                    <Card
                        cardid='{$n16}'>
                        <id>{
                                if (($n16 mod 2) = 0) then
                                    $n16
                                else
                                    $n16 + 1
                            }</id>
                        <StatusOpen>0</StatusOpen>
                        <Visibility>1</Visibility>
                        <XCoordinate>
                            {$list216[$seq16]}
                        </XCoordinate>
                        <YCoordinate>{$list316[$seq16]}</YCoordinate>
                    </Card>
            }
        </Cards16>
        
        <Players>
            <Player
                playerid="0">
                <Turn>0</Turn>
            </Player>
            
            <Player
                playerid="1">
                <id>1</id>
                <Nickname>Player1</Nickname>
                <Turn>1</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>70</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="2">
                <id>2</id>
                <Nickname>Player2</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>90</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="3">
                <id>3</id>
                <Nickname>Player3</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>110</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="4">
                <id>4</id>
                <Nickname>Player4</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>130</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="5">
                <id>5</id>
                <Nickname>Player5</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>150</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="6">
                <id>6</id>
                <Nickname>Player6</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>170</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="7">
                <Turn>0</Turn>
            </Player>
            <Winner></Winner>
        </Players>
        
        <backButton>
            <id>1</id>
        </backButton>
        
        <saveButton>
            <id>1</id>
            <Popup>0</Popup>
        </saveButton>
        
        <winnerButton>
            <id>1</id>
        </winnerButton>
        
        <winnerPopup>
            <Visibility>0</Visibility>
        </winnerPopup>
    
    </insertNode>
    
    
    
    
    
    
    
    
    
    
    (:--------------------Cards24------------------:)
    
    let $list24 := fn:random-number-generator()?permute(11 to 34)
    let $list224 := (40, 60, 80, 100, 120, 140, 40, 60, 80, 100, 120, 140, 40, 60, 80, 100, 120, 140, 40, 60, 80, 100, 120, 140)
    let $list324 := (25, 25, 25, 25, 25, 25, 40, 40, 40, 40, 40, 40, 55, 55, 55, 55, 55, 55, 70, 70, 70, 70, 70, 70)
    let $cards24 :=
    <insertNode>
        
        <counterOfTurnedCards>1</counterOfTurnedCards>
        <idOfCardOne>0</idOfCardOne>
        <idOfCardTwo>0</idOfCardTwo>
        <attributeIdOfCardOne>0</attributeIdOfCardOne>
        <attributeIdOfCardTwo>0</attributeIdOfCardTwo>
        <compareCards>0</compareCards>
        <statusFoundPairButton>
            <Found>3</Found>
        </statusFoundPairButton>
        <nextturn>1</nextturn>
        <numberOfPlayer>0</numberOfPlayer>
        
        <Cards24>
            {
                for $n24 at $seq24 in $list24
                return
                    <Card
                        cardid="{$n24}">
                        <id>{
                                if (($n24 mod 2) = 0) then
                                    $n24
                                else
                                    $n24 + 1
                            }</id>
                        <StatusOpen>0</StatusOpen>
                        <Visibility>1</Visibility>
                        <XCoordinate>
                            {$list224[$seq24]}
                        </XCoordinate>
                        <YCoordinate>{$list324[$seq24]}</YCoordinate>
                    </Card>
            }
        </Cards24>
        
        <Players>
            <Player
                playerid="0">
                <Turn>0</Turn>
            </Player>
            
            <Player
                playerid="1">
                <id>1</id>
                <Nickname>Player1</Nickname>
                <Turn>1</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>70</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="2">
                <id>2</id>
                <Nickname>Player2</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>90</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="3">
                <id>3</id>
                <Nickname>Player3</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>110</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="4">
                <id>4</id>
                <Nickname>Player4</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>130</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="5">
                <id>5</id>
                <Nickname>Player5</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>150</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="6">
                <id>6</id>
                <Nickname>Player6</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>170</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="7">
                <Turn>0</Turn>
            </Player>
            <Winner></Winner>
        </Players>
        
        <backButton>
            <id>1</id>
        </backButton>
        
        <saveButton>
            <id>1</id>
            <Popup>0</Popup>
        </saveButton>
        
        <winnerButton>
            <id>1</id>
        </winnerButton>
        
        <winnerPopup>
            <Visibility>0</Visibility>
        </winnerPopup>
    
    </insertNode>
    
    
    
    
    
    (:--------------------Cards32------------------:)
    
    
    let $list32 := fn:random-number-generator()?permute(11 to 42)
    let $list232 := (20, 40, 60, 80, 100, 120, 140, 160, 20, 40, 60, 80, 100, 120, 140, 160, 20, 40, 60, 80, 100, 120, 140, 160, 20, 40, 60, 80, 100, 120, 140, 160)
    let $list332 := (25, 25, 25, 25, 25, 25, 25, 25, 40, 40, 40, 40, 40, 40, 40, 40, 55, 55, 55, 55, 55, 55, 55, 55, 70, 70, 70, 70, 70, 70, 70, 70)
    let $cards32 :=
    <insertNode>
        
        <counterOfTurnedCards>1</counterOfTurnedCards>
        <idOfCardOne>0</idOfCardOne>
        <idOfCardTwo>0</idOfCardTwo>
        <attributeIdOfCardOne>0</attributeIdOfCardOne>
        <attributeIdOfCardTwo>0</attributeIdOfCardTwo>
        <compareCards>0</compareCards>
        <statusFoundPairButton>
            <Found>3</Found>
        </statusFoundPairButton>
        <nextturn>1</nextturn>
        <numberOfPlayer>0</numberOfPlayer>
        
        <Cards32>
            {
                for $n32 at $seq32 in $list32
                return
                    <Card
                        cardid="{$n32}">
                        <id>{
                                if (($n32 mod 2) = 0) then
                                    $n32
                                else
                                    $n32 + 1
                            }</id>
                        <StatusOpen>0</StatusOpen>
                        <Visibility>1</Visibility>
                        <XCoordinate>
                            {$list232[$seq32]}
                        </XCoordinate>
                        <YCoordinate>{$list332[$seq32]}</YCoordinate>
                    </Card>
            }
        </Cards32>
        
        <Players>
            <Player
                playerid="0">
                <Turn>0</Turn>
            </Player>
            
            <Player
                playerid="1">
                <id>1</id>
                <Nickname>Player1</Nickname>
                <Turn>1</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>70</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="2">
                <id>2</id>
                <Nickname>Player2</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>90</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="3">
                <id>3</id>
                <Nickname>Player3</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>110</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="4">
                <id>4</id>
                <Nickname>Player4</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>130</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="5">
                <id>5</id>
                <Nickname>Player5</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>150</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="6">
                <id>6</id>
                <Nickname>Player6</Nickname>
                <Turn>0</Turn>
                <Points>0</Points>
                <Active>0</Active>
                <XCoordinate>170</XCoordinate>
                <YCoordinate>5</YCoordinate>
            </Player>
            
            <Player
                playerid="7">
                <Turn>0</Turn>
            </Player>
            <Winner></Winner>
        </Players>
        
        <backButton>
            <id>1</id>
        </backButton>
        
        <saveButton>
            <id>1</id>
            <Popup>0</Popup>
        </saveButton>
        
        
        <winnerButton>
            <id>1</id>
        </winnerButton>
        
        <winnerPopup>
            <Visibility>0</Visibility>
        </winnerPopup>
    
    
    </insertNode>
    
    return
        (
        insert node $cards16
            as last into doc('Gamescreen16.xml')/Gamescreen16,
        insert node $cards24
            as last into doc('Gamescreen24.xml')/Gamescreen24,
        insert node $cards32
            as last into doc('Gamescreen32.xml')/Gamescreen32
        )

};




