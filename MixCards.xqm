
let $list := fn:random-number-generator()?permute(1 to 16)
let $list2 := (60,80,100,120,60,80,100,120,60,80,100,120,60,80,100,120)
let $list3:= (25,25,25,25,40,40,40,40,55,55,55,55,70,70,70,70)
let $list4:= ("Player1","Player2","Player3","Player4","Player5","Player6")
let $list5:= (70,90,110,130,150,170)

return(
  <Gamescreen16>
<Cards16>
{
    for $n at $seq in $list
      return 
      <Card> 
      <id>{$n}</id>
      <StatusOpen>0</StatusOpen>
      <Visibility>1</Visibility>     
      <XCoordinate> {  $list2[$seq] } </XCoordinate>        
      <YCoordinate>{ $list3[$seq] }</YCoordinate> 
      </Card> 
}
 </Cards16>
  
    <Players> 
      <Player>
      <id>{$list4[1]}</id>
      <Nickname>Paul</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[1]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player>
      <id>{$list4[2]}</id>
      <Nickname>Osman</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[2]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player>
      <id>{$list4[3]}</id>
      <Nickname>Tien</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[3]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player>
      <id>{$list4[4]}</id>
      <Nickname>ABS</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[4]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player>
      <id>{$list4[5]}</id>
      <Nickname>Laura</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[5]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
      
       <Player>
      <id>{$list4[6]}</id>
      <Nickname>Patrick</Nickname>
      <Turn>0</Turn>
      <Points>0</Points>
      <Active>1</Active>
      <XCoordinate> {$list5[6]}</XCoordinate>
      <YCoordinate>5</YCoordinate>
      </Player>
    
    </Players>
      
  <backButton>
    <id>1</id>
  </backButton>
 </Gamescreen16>
   )
   
   
   