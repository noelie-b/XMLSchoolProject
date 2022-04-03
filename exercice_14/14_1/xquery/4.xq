for $patron in doc("3208-2017-v2.xml")//element
let $nom_adj:= concat($patron/data[3]," ",$patron/following-sibling::element[1]/data[3])
where starts-with($patron/data[1],'NOM') and starts-with($patron/following-sibling::element[1]/data[1],'ADJ')
return (<PATRON_NOM_ADJ>{$nom_adj}</PATRON_NOM_ADJ>)