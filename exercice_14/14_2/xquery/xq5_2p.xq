for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p/item/a[4][text()='NOUN']
let $b := $a/parent::item/following-sibling::item[1]/a[4]
return if ($b/text()='ADJ')
then string-join(('NOM : ',$a/preceding-sibling::a[2]/text(),'+',' ADJ : ', $b/preceding-sibling::a[2]/text()), ' ')