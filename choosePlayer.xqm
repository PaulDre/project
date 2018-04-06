xquery version "3.0"  encoding "UTF-8";

module namespace p = "memory/choosePlayer";
import module namespace m = "memory/main" at "main.xqm";

(: open database blackjack, locate resource within database and navigate to its top element :)
declare variable $p:gamebase := db:open("DatabaseMemory")/gamebase;

(: Gamescreen with 2 Player :)
declare function p:numberOfPlayer2($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player2) {
  
  let $player2:=
  <Player2>
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
 </Player2>
        return $player2
};


(: Gamescreen with 3 Player :)
declare function p:numberOfPlayer3($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player3) {
  
  let $player3:=
  <player3>
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
 </player3>
        return $player3
};


(: Gamescreen with 4 Player :)
declare function p:numberOfPlayer4($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player4) {
  
  let $player4:=
  <player4>
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
  </player4>
        return $player4
};


(: Gamescreen with 5 Player :)
declare function p:numberOfPlayer5($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player5) {
  
  let $player5:=
  <player5>
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
  </player5>
        return $player5
};

(: Gamescreen with 6 Player :)
declare function p:numberOfPlayer6($Nickname as xs:string, $turn as xs:boolean, $points as xs:integer) as element(player6) {
  
  let $player6:=
   <player6>
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
   </player6>
        return $player6
};














