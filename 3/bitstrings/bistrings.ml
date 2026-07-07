type bitstring = E | Z of bitstring | U of bitstring;;

let rec string_of_bitstring = function
  | E -> ""
  | Z s-> "0"^ string_of_bitstring s
  | U s-> "1"^ string_of_bitstring s

let rec len = function
| E -> 0
| U s-> 1 + len s
| Z s-> 1 + len s

let rec countZ = function
| E -> 0
| U s-> countZ s
| Z s -> 1 + countZ s

let rec countU = function
| E -> 0
| U s-> 1 + countU s
| Z s ->countU s

let ret concat s1 s2 = match s1 with
| E -> s2
| U s -> U (concat s s2 )
| Z s -> Z (concat s s2)

let rec equals s2 s2 = match s1, s2 with
| E, E -> true
| U s, U b | Z s, Z b -> equals s b 
| Z s, U b | U s, Z b -> false
| E, _ -> false
| _, E -> false

let tl = function
| E -> E
| Z s | U s -> s

let rec prefix s1 s2 = match s1, s2 with
| E, _ -> true
| Z s, Z b -> prefix s b
| U s, U b -> prefix s b
| U s, Z b -> false
| Z s, U b -> false
| (Z s | U s), E -> false

let rec substring s1 s2 = match s1, s2 with
| E, _ -> true
| _, E -> false
| U s, Z b -> substring s b 
| Z s, U b -> substring s b 
(*Da modificare e fare più easy*)