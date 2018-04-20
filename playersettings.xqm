module namespace p = "memory/playersettings";
import module namespace c = "memory/controller" at "controller.xqm";

declare
%rest:path('/TheNumberOfPlayerIs/{$numberOfPlayerid}')
function p:chooseNumberOfPlayer($numberOfPlayerid as xs:string)
{
if($numberOfPlayerid = "2" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer with 2,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer with 2,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer with 2)

else if ($numberOfPlayerid = "3" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer with 3,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer with 3,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer with 3)

else if ($numberOfPlayerid = "4" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer with 4,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer with 4,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer with 4)

else if ($numberOfPlayerid = "5" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer with 5,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer with 5,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer with 5)

else if ($numberOfPlayerid = "6" ) then (
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=1]/Active
with 1, 
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=1]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=2]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=3]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=4]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=5]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/Players/Player[@playerid=6]/Active
with 1,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/Players/Player[@playerid=6]/Active
with 1,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/Players/Player[@playerid=6]/Active
with 1,
replace value of node fn:doc("Gamescreen16.xml")/Gamescreen16/insertNode/numberOfPlayer with 6,
replace value of node fn:doc("Gamescreen24.xml")/Gamescreen24/insertNode/numberOfPlayer with 6,
replace value of node fn:doc("Gamescreen32.xml")/Gamescreen32/insertNode/numberOfPlayer with 6)
else(),

db:output(c:redirectToTransformator("NumberOfCards"))
};
