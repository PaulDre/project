module namespace d = "memory/DeleteDatabases";
import module namespace c = "memory/controller" at "controller.xqm";

declare
function d:deleteDatabase16(){
let $emty16 := 
<Gamescreen16>
<uselessNode></uselessNode>
</Gamescreen16>
return(
replace node fn:doc("Gamescreen16.xml")/Gamescreen16 with $emty16
)
};

declare
function d:deleteDatabase24(){
let $emty24 := 
<Gamescreen24>
<uselessNode></uselessNode>
</Gamescreen24>
return(
replace node fn:doc("Gamescreen24.xml")/Gamescreen24 with $emty24
)
};


declare
function d:deleteDatabase32(){
let $emty32 := 
<Gamescreen32>
<uselessNode></uselessNode>
</Gamescreen32>
return(
replace node fn:doc("Gamescreen32.xml")/Gamescreen32 with $emty32
)
};