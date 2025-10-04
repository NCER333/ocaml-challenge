(*greater takes two parameters, if a is greater than b then true else false *)
let greater a0 b0 =  a0 > b0;; 

let minmax3 a b c = match(greater a b) with 
  | true -> if greater a c then if greater c b then (b ,a) else (c, a) else (b, c)
  | false -> if greater b c then if greater a c then (c, b ) else (a, b) else (a, c);;


assert (minmax3 1 2 3 = (1,3));;
assert (minmax3 3 2 1 = (1,3));;
assert (minmax3 2 2 2 = (2,2));;
assert(minmax3 7 6 9 = (6,9));;
assert (minmax3 (-5) 0 5 = (-5,5));;
assert (minmax3 (-10) (-3) (-7) = (-10,-3));;


print_endline "test passati"

(*SOLUZIONE più LEGGIBILE *)

let minmax32 n1 n2 n3 = 
  let min2 x y = if x < y then x else y in
  let max2 x y = if x > y then x else y in
  (min2 n1 (min2 n2 n3), max n1 (max2 n2 n3));;

assert (minmax32 1 2 3 = (1,3));;
assert (minmax32 3 2 1 = (1,3));;
assert (minmax32 2 2 2 = (2,2));;
assert(minmax32 7 6 9 = (6,9));;

print_endline "test 2 passati "