module namespace p = "memory/playersettings";
import module namespace c = "memory/controller" at "controller.xqm";

declare
%rest:path('/TheNumberOfPlayerIs/{$numberOfPlayerid}')
function p:chooseNumberOfPlayer($numberOfPlayerid as xs:string)
{
if($numberOfPlayerid = "2" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1)

else if ($numberOfPlayerid = "3" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1)

else if ($numberOfPlayerid = "4" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1)

else if ($numberOfPlayerid = "5" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1)



else if ($numberOfPlayerid = "6" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=1]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=2]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=3]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=4]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=5]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@id=6]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@id=6]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@id=6]/Active
with fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/value1)

else(),

db:output(c:redirectToTransformator("NumberOfCards"))
};
