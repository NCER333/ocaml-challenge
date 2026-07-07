(*Write a function of type:
```ocaml
best_offer : int option -> int option -> int option -> int option
```
that takes three offers and returns the highest one. If none of the offers are valid (i.e., all are `None`), the function should return `None`.*)

(*Brute force solution*)
let best_offer v0 v1 v2 = match (v0, v1, v2) with 
  | (None, None, None) -> None
  | (Some x, Some y, Some z) -> Some (max x (max y z))
  | (Some x, None, Some z) -> Some (max x z)
  | (None, Some x, Some z) -> Some (max x z)
  | (Some x, Some z, None) -> Some (max x z)
  | (None, None, Some z) -> Some z
  | (None, Some z, None) -> Some z
  | (Some z, None, None) -> Some z;;


assert(best_offer (Some 100) (Some 200) (Some 150) = Some 200);;

assert(best_offer (Some 100) None (Some 150) = Some 150);;

assert(best_offer None None None = None);;

assert(best_offer None (Some 300) None = Some 300 );;

print_endline "Test passati"

let best_offer a b c = 
  