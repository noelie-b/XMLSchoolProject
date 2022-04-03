for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p/item/a[8][text()='nsubj']
let $b := $a/preceding-sibling::a[1]/text()
let $c := $a/ancestor::p/item/a[1][text()=$b]
return string-join(($c/following-sibling::a[1]/text(), '=> en relation de dépendance du type SUBJ avec => ', $a/preceding-sibling::a[6]/text()), ' ')