(*Write a function with type:
```ocaml
seven_eleven_doubles : unit -> bool * int * int
```
which throws two random dices d1,d2, and returns a triple (b,d1,d2) where b is true iff
the sum of the two dices is 7 or 11, or if the two dices are equal.*)

(*utilizzo Random.int che genera un numero a partire da 0 fino all' intervallo scelto non incluso *)
let seven_eleven_doubles() : bool*int*int = (* 'bool * int * int' è una tupla *)
let d1 = Random.int 6 + 1 in (*genero i due numeri dei dadi che serviranno a dare un valore a b*)
let d2 = Random.int 6 + 1 in 
let b = (d1 + d2 = 7) || (d1 = d2) || (d1 + d2 = 11) in 
(b, d1, d2) (*ritorno la tripla richiesta dalla funzione*)