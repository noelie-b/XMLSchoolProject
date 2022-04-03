for $item in doc("baseTrameurFromRhapsodie.xml")/baselexicometrique/trame/items/item
where $item/a[7][contains(text(), 'OBJ')]
return $item/f/text()