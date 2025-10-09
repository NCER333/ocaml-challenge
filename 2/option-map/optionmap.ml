(*uso pattern matching quando c'è None*)

let option_map f option = match option with
| None -> None
| Some option -> Some (f option);;


let double x = x * 2;;
let square x = x * x;;

assert (option_map double (Some 3) = Some 6);;
assert (option_map double None = None);;
assert (option_map double (Some (square 3)) = Some 18);;
assert (option_map square (option_map double None) = None);;

print_endline "test passati "