type blood_group = A | B | AB | O;;




let check_groups x y = match x with 
| O -> true
| A -> (*y=A || y=AB || y = O *) not (y=B) (* B è l'unico caso non compatibile con A*)
| AB -> true
| B -> y = O || y=B || y = AB;; 






assert (check_groups O AB = true);;
assert (check_groups A B = false);;
assert (check_groups AB AB = true);;

print_endline "Test passati"