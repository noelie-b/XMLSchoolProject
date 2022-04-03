for $patron in doc("3208-2017-v2.xml")//element
let $nom_prp_nom:= concat($patron/data[3]," ",$patron/following-sibling::element[1]/data[3]," ", $patron/following-sibling::element[2]/data[3] )
where starts-with($patron/data[1],'NOM') and starts-with($patron/following-sibling::element[1]/data[1],'PRP') and starts-with($patron/following-sibling::element[2]/data[1],'NOM')
return (<PATRON_NOM_PRP_NOM>{$nom_prp_nom}</PATRON_NOM_PRP_NOM>)