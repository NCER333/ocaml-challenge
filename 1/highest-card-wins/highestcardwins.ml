type card = Joker | Val of int;;

let win pcard dcard = match (pcard, dcard) with
| (Joker, Joker) -> false
| (Joker, Val _ ) -> true
| (Val _, Joker) -> false
| (Val v0, Val v1) -> v0 > v1;;
assert(win Joker (Val 7) = true);;
assert(win (Val 7) Joker = false);;
assert(win Joker Joker = false);;
assert(win (Val 9) (Val 7) = true);;
assert(win (Val 7) (Val 7) = false);;

print_endline "test passati "