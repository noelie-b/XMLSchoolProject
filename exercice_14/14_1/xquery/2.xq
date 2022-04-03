for $description in doc("3208-2017-v2.xml")//description/article
let $texte:= ""
return (
  <Description>
  {
    for $element in $description//element
    let $texte:=concat($texte, $element/data[3])
    return $texte
  }</Description>)