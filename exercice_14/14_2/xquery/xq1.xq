let $nb := count(doc("sortieudpipe-slurp_3208.txt.xml")//p/item/a[2][text()='-'] )
return ("nb de titres et descriptions : ", $nb)