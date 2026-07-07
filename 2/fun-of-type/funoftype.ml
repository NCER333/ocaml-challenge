(*int -> bool*)
let f1 c = c=0;;

(*bool -> int*)

let f2 x = if x then 1 else 0;;

(*int -> (int * bool)*)

let f3 x = if x = 0 then (0, true) else (1, false);;

(*(int * bool) -> int*)
let f4 (a, c) = match (a, c) with 
| (1, true) -> 1
| (0, false) -> -1
| _ -> 2;; 