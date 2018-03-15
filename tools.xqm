xquery version "3.0"  encoding "UTF-8";

module namespace t = "memory/tools";
declare namespace uuid = "java:java.util.UUID";
declare namespace math = "java:java.lang.Math";



(: Generiert zufaellig eine Zahl von 1 bis X :)
declare function t:random($range as xs:integer) as xs:integer {
  xs:integer(ceiling(math:random() * $range))
};

(: Generiert eine einzigartige ID  mit java UUID generator :)
declare function t:generateID() as xs:string {
    let $id := xs:string(uuid:randomUUID())
    return $id
};