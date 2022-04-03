for $a in doc("sortieudpipe-slurp_3208.txt.xml")//p
let $texte:= string-join($a//item/a[2]," ")
return concat($texte,"
")