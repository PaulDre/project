xquery version "3.0"  encoding "UTF-8";

module namespace p = "memory/choosePlayer";
import module namespace m = "memory/main" at "main.xqm";



(: Gamescreen with 2 Player :)
declare function p:numberOfPlayer2($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player2) {
  
  return
        <Player>
            <id>Player1</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>70</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player2</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>90</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>    
};


(: Gamescreen with 3 Player :)
declare function p:numberOfPlayer3($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player3) {
  
  return
        <Player>
            <id>Player1</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>70</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player2</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>90</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player3</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>110</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>          
};


(: Gamescreen with 4 Player :)
declare function p:numberOfPlayer4($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player4) {
  
  return
        <Player>
            <id>Player1</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>70</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player2</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>90</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player3</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>110</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player4</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>130</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
};


(: Gamescreen with 5 Player :)
declare function p:numberOfPlayer5($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player5) {
  
  return
        <Player>
            <id>Player1</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>70</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player2</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>90</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player3</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>110</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player4</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>130</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player5</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>150</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
};

(: Gamescreen with 6 Player :)
declare function p:numberOfPlayer6($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player6) {
  
  return
        <Player>
            <id>Player1</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>70</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player2</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>90</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player3</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>110</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player4</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>130</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player5</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>150</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
        <Player>
            <id>Player6</id>
            <Nickname>{$Nickname}</Nickname>
            <Turn>{$turn}</Turn>
            <Points>{$points}</Points>
            <XCoordinate>170</XCoordinate>
            <YCoordinate>5</YCoordinate>
        </Player>
};














