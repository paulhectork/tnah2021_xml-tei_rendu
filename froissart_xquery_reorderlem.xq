(: déclaration de namespace :)
declare default element namespace "http://www.tei-c.org/ns/1.0";

(:défition des variables :)
let $doc := db:open("froissart_lemtest1", "froissart_lemtest1.xml")
let $app := $doc//app
let $rdg := $doc//rdg
let $brl := $rdg[contains(@wit, "#brl")]
let $lem := $doc//lem

(: placer le lem en première position ; ça ca marche :)
for $a in $app
  return
    if($a/lem[position()!=0])
    then copy $cible := $a
      modify (
        insert node $cible/lem as first into $cible
      )
      return $cible 
 
(: tentative de 2e partie pour supprimer l'autre lem ; dans ce cas, surpprimer $cible dans le return d'aù dessus

        if ($cible/count(lem)>=1)
        then copy $target := $cible
            modify
            (delete node $target/lem[position()!=1])
            return $target
        (:for $el in $a:)
          (: if ($a/count(lem)>=0)
          then <a>{$el}</a> :) (:copy $cible := $a
            modify
            (delete node $cible/lem/last()) :)
          (:return $cible:)
:)
(: 2e tentative pour supprimer le lem qui n'est pas en première position ; dans ce cas, surpprimer $cible dans le return d'aù dessus
      return 
        if ($cible/count(lem)>1)
        then copy $target := $cible
            modify
            (delete node $target/lem[position()!=1])
            return $target
:)
(: essai 3 plutôt simple pour la même chose
for $e in $doc//*
return delete node $e//lem[$e/name() = 'app'][position() != 1]
:)