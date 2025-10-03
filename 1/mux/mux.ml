(*multiplexer such that mux2 s0 a b equals to a if s0 is true, otherwise it equals to b
a and not s or b and s *)

let mux2_2 s0 a b = if s0 then a else b;;
let mux2 s0 a b = (a && not s0) || (b && s0);;
(*let mux2_3 (s0, a , b) = match(s0, a, b) with bisogna fare la tabella con tutte le possibili combinazioni*)

(*ho quattro opzioni 0,1,2,3 se s0 è false rimangono due alternative 0 o 2 con mux2 posso scartare le altre due opzioni, stessa cosa se s0 è true*)
(*let new_a0 = mux2 s0 a0 a1 
let new_a1 = mux2 s0 a2 a3*)

(*ora sfrutto s1 per scegliere tra i valori rimasti dopo il passaggio a s0
se s1 è true significa che verrà scelto il 3 o il 2 a seconda di quale è passato per s0, in alternativa con s1 false viene preso 0 o 1*)

(*let mux4 = mux2 s1 new_a0 new_a1*)

let mux4 s1 s0 a0 a1 a2 a3 =
  let new_a0 = mux2 s0 a0 a1 in
  let new_a1 = mux2 s0 a2 a3 in
  mux2 s1 new_a0 new_a1;;

assert(mux4 false false false true false true = false);;
assert(mux4 false true false true false true = true);;
assert(mux4 true false false true false true = false);;
assert(mux4 true true false true false true = true);;