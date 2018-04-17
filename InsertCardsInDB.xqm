module namespace i = "memory/InsertCardsDB";
import module namespace c = "memory/controller" at "controller.xqm";




declare
%rest:path('/insertDB')
function i:insert16Cards(){



(:for 16 Cards:)
let $list16 := fn:random-number-generator()?permute(1 to 16)
let $list216 := (60,80,100,120,60,80,100,120,60,80,100,120,60,80,100,120)
let $list316:= (25,25,25,25,40,40,40,40,55,55,55,55,70,70,70,70)
let $cards16:=
  <insertNode>
   <value1>1</value1>
  <value0>0</value0>
  <counterOfTurnedCards>7</counterOfTurnedCards>
<Cards16>
{
    for $n16 at $seq16 in $list16
      return 
      <Card id="{$n16+10}"> 
      <id>{$n16}</id>
      <StatusOpen>0</StatusOpen>
      <Visibility>1</Visibility>     
      <XCoordinate> {  $list216[$seq16] } </XCoordinate>        
      <YCoordinate>{ $list316[$seq16] }</YCoordinate> 
      </Card> 
}
 </Cards16>
  
    <Players> 
      <Player id="1">
      <id>1</id>
      <Nickname>Player 1</Nickname>
      <Turn>1</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>70</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="2">
      <id>2</id>
      <Nickname>Player 2</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>90</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="3">
      <id>3</id>
      <Nickname>Player 3</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>110</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="4">
      <id>4</id>
      <Nickname>Player 4</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>130</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="5">
      <id>5</id>
      <Nickname>Player 5</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>150</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="6">
      <id>6</id>
      <Nickname>Player 6</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>170</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
    </Players>
      
  <backButton>
    <id>1</id>
  </backButton>
  
    <statusFoundPairButton>
    <Found>1</Found>
  </statusFoundPairButton>
  
 </insertNode>












let $list := fn:random-number-generator()?permute(1 to 24)
let $list2 := (40,60,80,100,120,140,40,60,80,100,120,140,40,60,80,100,120,140,40,60,80,100,120,140)
let $list3:= (25,25,25,25,25,25,40,40,40,40,40,40,55,55,55,55,55,55,70,70,70,70,70,70)
let $cards24:=
  <insertNode>
   <value1>1</value1>
  <value0>0</value0>
  <counterOfTurnedCards>7</counterOfTurnedCards>
<Cards24>
{
    for $n at $seq in $list
      return 
      <Card id="{$n+10}"> 
      <id>{$n}</id>
      <StatusOpen>0</StatusOpen>
      <Visibility>1</Visibility>     
      <XCoordinate> {  $list2[$seq] } </XCoordinate>        
      <YCoordinate>{ $list3[$seq] }</YCoordinate> 
      </Card> 
}
 </Cards24>
  
    <Players> 
      <Player id="1">
      <id>1</id>
      <Nickname>Player 1</Nickname>
      <Turn>1</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>70</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="2">
      <id>2</id>
      <Nickname>Player 2</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>90</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="3">
      <id>3</id>
      <Nickname>Player 3</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>110</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="4">
      <id>4</id>
      <Nickname>Player 4</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>130</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="5">
      <id>5</id>
      <Nickname>Player 5</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>150</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="6">
      <id>6</id>
      <Nickname>Player 6</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>170</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
    </Players>
      
  <backButton>
    <id>1</id>
  </backButton>
  
    <statusFoundPairButton>
    <Found>1</Found>
  </statusFoundPairButton>  
 </insertNode>








let $list := fn:random-number-generator()?permute(
    1 to 32
  )
let $list2 := ( 20,40,60,80,100,120,140,160,20,40,60,80,100,120,140,160,20,40,60,80,100,120,140,160,20,40,60,80,100,120,140,160)
let $list3:= (25,25,25,25,25,25,25,25,40,40,40,40,40,40,40,40,55,55,55,55,55,55,55,55,70,70,70,70,70,70,70,70 )
let $cards32 :=  
  <insertNode>
   <value1>1</value1>
  <value0>0</value0>
  <counterOfTurnedCards>7</counterOfTurnedCards>
<Cards32>
{
    for $n at $seq in $list
      return 
      <Card id="{
      $n+10
    }"> 
      <id>{
      $n
    }</id>
      <StatusOpen>0</StatusOpen>
      <Visibility>1</Visibility>     
      <XCoordinate> {
        $list2[$seq] 
    } </XCoordinate>        
      <YCoordinate>{
       $list3[$seq] 
    }</YCoordinate> 
      </Card> 
}
 </Cards32>
  
    <Players> 
      <Player id="1">
      <id>1</id>
      <Nickname>Player 1</Nickname>
      <Turn>1</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>70</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="2">
      <id>2</id>
      <Nickname>Player 2</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>90</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="3">
      <id>3</id>
      <Nickname>Player 3</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>110</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="4">
      <id>4</id>
      <Nickname>Player 4</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>130</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="5">
      <id>5</id>
      <Nickname>Player 5</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>150</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player id="6">
      <id>6</id>
      <Nickname>Player 6</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>0</Active>
      <XCoordinate>170</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
    </Players>
      
  <backButton>
    <id>1</id>
  </backButton>
  
    <statusFoundPairButton>
    <Found>1</Found>
  </statusFoundPairButton> 
  
  </insertNode> 







return(
insert node $cards16 as last into doc( 'Gamescreen16.xml' )/Gamescreen16,
insert node $cards24 as last into doc('Gamescreen24.xml')/Gamescreen24,
insert node $cards32 as last into doc( 'Gamescreen32.xml' )/Gamescreen32,

db:output(
      c:redirectToTransformator(
        "NumberOfPlayer"
      )
    )
  )
};






