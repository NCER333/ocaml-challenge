let square x:int = x*x;; (*si puo anche non forzare il tipo*)

(* let exp9 x = x**9 
in questo modo si ottiene float -> int

l'idea è riutilizzare la funzione definita in precedenza per mantenere sempre il tipo int -> int*)


let exp9 x = 
  let x2 = square x in
  let x4 = square x2 in 
  let x8 = square x4 in
  x8 * x;;

assert( exp9 3 = 19683);;

print_endline "test passato "

