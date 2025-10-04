(*Write a function with type:
```ocaml
isLecture : weekday -> course -> bool
```
such that `isLecture d c` is true when there is a class of course `c`
in the day `d`.

The weekly calendar of lectures is the following:
- ALF: Tuesday, Thursday, Friday
- LIP: Wednesday, Thursday *)




type weekday = Mo | Tu | We | Th | Fr

type course = ALF | LIP

(* uso pattern matching *)

let isLecture d c = match c with (* se il corso è ALF allora vedo se corrisponde con i giorni della tabella data e prendo il valore restituito da quella proposizione*)
| ALF -> d=Tu || d = Th || d = Fr
| LIP -> d = We || d = Th;;

assert( isLecture Mo ALF = false);;
assert( isLecture We LIP = true);;

print_endline "Test passati"
