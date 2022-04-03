for $item in doc("3208-2017-v2.xml")//item
let $titre:= string-join($item//titre//element/data[3]," ")
let $description:= string-join($item//description//element/data[3]," ")
return (<Titre>{$titre}</Titre>,<Description>{$description}</Description>)