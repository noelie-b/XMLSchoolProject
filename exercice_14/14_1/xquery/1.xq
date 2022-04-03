for $titre in doc("3208-2017-v2.xml")//titre/article
let $texte:=""
return (<Titre>{
for $element in $titre//element
let $texte:= concat($texte,$element/data[3])
return $texte  
}
</Titre>)
