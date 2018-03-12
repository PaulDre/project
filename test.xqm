module namespace page = 'http://basex.org/examples/web-page';


declare 
%rest:path("bello/yaman")
%rest:GET
function page:hello() {
<response>
<title> Hello was !</title>
</response>};


declare 
%rest:path("/bello/test/{$id}")
%rest:GET
function page:card($id as xs:integer) 
{
    fn:collection("memory/Gamescreen16.xml")//Card[@id=$id]};