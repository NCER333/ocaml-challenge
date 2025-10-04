(*Define a function with type:
```ocaml
parrot_trouble : bool -> int -> bool option
```*)

let parrot_trouble talking time = if time < 0 || time > 23 then None
else if talking && (time < 7 || time > 20) then Some true
  else Some false;; 

assert (parrot_trouble true 12 = Some false);;
assert (parrot_trouble false 23 = Some false );;
assert (parrot_trouble true 21 = Some true);;

print_endline "Tutti i test passati"