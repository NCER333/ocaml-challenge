let nand a b = not (a && b);;

let nand3 (a,b) = match (a,b) with
    (false, false) -> true
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;; 

let nand2 a b = if not (a && b) then true else false;;

nand2 true false;;