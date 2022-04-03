for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p
return if ($a/item[1]/a[2][text()='-'])
then string-join($a/preceding-sibling::*[1]/item/a[2]/text(), " ")