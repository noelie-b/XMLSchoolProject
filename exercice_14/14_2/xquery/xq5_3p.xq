for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p/item/a[4][text()='VERB']
let $b := $a/parent::item/following-sibling::item[1]/a[4]
let $c := $b/parent::item/following-sibling::item[1]/a[4]
return if ($b/text()='ADP' and $c/text()='NOUN')
then string-join(('VERB : ', $a/preceding-sibling::a[2]/text(), ' + ADP : ',$b/preceding-sibling::a[2]/text(), ' + NOM : ',$c/preceding-sibling::a[2]/text()),' ')