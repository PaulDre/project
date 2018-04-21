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
function d:deleteSavegame16(){
let $empty16 := 
<SaveGame16>
</SaveGame16>
return(
replace node fn:doc("SaveGame16.xml")/SaveGame16 with $empty16
)
};

declare
function d:deleteSavegame24(){
let $empty24 := 
<SaveGame24>
</SaveGame24>
return(
replace node fn:doc("SaveGame24.xml")/SaveGame24 with $empty24
)
};

declare
function d:deleteSaveGame32(){
let $empty32 := 
<SaveGame32>
</SaveGame32>
return(
replace node fn:doc("SaveGame32.xml")/SaveGame32 with $empty32
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