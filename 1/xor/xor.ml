(*(P AND NOT Q) OR (NOT P AND Q)*)
let xor a b = (a && not b) || (not a && b) ;;
(*qua posso forzare a ad essere tipo bool *)
let xor2 (a:bool ) b = if (a = b) then false else true;;
let xor3 (a,b) = match(a,b) with 
    (false, false) -> false
  | (false, true) -> true
  | (true, false) -> true
  | (true, true) -> false;; 