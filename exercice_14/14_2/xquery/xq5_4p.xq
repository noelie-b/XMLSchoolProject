for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p/item/a[4][text()='DET']
let $b := $a/parent::item/following-sibling::item[1]/a[4]
let $c := $b/parent::item/following-sibling::item[1]/a[4]
let $d := $c/parent::item/following-sibling::item[1]/a[4]
return if ($b/text()='NOUN' and $c/text()='VERB'and $d/text()='ADP')
then string-join(('DET : ',$a/preceding-sibling::a[2]/text(), '+ NOUN : + ',$b/preceding-sibling::a[2]/text(),'VERB : + ', $c/preceding-sibling::a[2]/text(),'ADP : ', $d/preceding-sibling::a[2]/text()),' ')