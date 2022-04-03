for $item in //item[@type='forme']
where contains($item/a[8], 'OBJ')
let $pos_gouv := replace($item/a[8], "OBJ\((\d+)\)", "$1" )
let $pos_dep := $item/@pos
where $item/f  and //item[@pos=$pos_gouv]/f
let $result :=
(
if ($pos_gouv > $pos_dep)
then  concat($item/f/text(), ' ', //item[@pos=$pos_gouv]/f/text())
else (concat(//item[@pos=$pos_gouv]/f/text(), '------ OBJ ------- ', $item/f/text(), '&#xa;'))
)
order by $result ascending
return $result
