(: déclaration de namespace :)
declare default element namespace "http://www.tei-c.org/ns/1.0";

(:défition des variables :)
let $doc := db:open("froissart_lemtest", "froissart_lemtest.xml")
let $app := $doc//app
let $rdg := $doc//rdg
let $brl := $rdg[contains(@wit, "#brl")]
let $lem := $doc//lem

(: renommer le rdg en lem :)
for $el in $brl
return rename node $el as "lem"
