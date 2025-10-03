(*multiplexer such that mux2 s0 a b equals to a if s0 is true, otherwise it equals to b
a and not s or b and s *)

let mux2_2 s0 a b = if s0 then a else b;;
let mux2 s0 a b = (a && not s) || (b && s);;
(*let mux2_3 (s0, a , b) = match(s0, a, b) with bisogna fare la tabella con tutte le possibili combinazioni*)
