(*Write a function of type:
```ocaml
movie_rating : int -> int -> int -> string
```
that takes the ratings of three critics for a movie (on a scale from 1 to 5) and returns a string indicating the overall rating:
- If all three critics give a rating of 5, return "Masterpiece".
- If two critics give a rating of 5 and the third gives at least a 4, return "Highly Recommended".
- If two critics give a rating of at least 4 and the third gives at least a 3, return "Recommended".
- Otherwise, return "Mixed Reviews".

The function must fail with an error if any of the inputs are not in the expected range.
*)
let inrange vote = vote >= 1 && vote <= 5;;

(*posso fare un pattern matching con tutti i possibili casi, un altro approccio più immediato è creare una lista ordinata dei 3 voti 
in questo modo posso controllare solamente una volta scartando tutte le possibili permutazioni d'ordine dei voti*)


let movie_rating v0 v1 v2 = if (not (inrange v0) || not(inrange v1) || not (inrange v2) ) then failwith "error" else
  let lista = [v0; v1; v2] in (*creo la lista con i voti*)
  let lista_ordinata = List.sort (fun a b -> compare b a) lista in (*ordino la lista, fun a b -> compare b a serve per invertire l'ordine della lista (più grande -> più piccolo), in alternativa si puo più facilmente usare List.sort compare lista e si ha dal più piccolo al più grande*)
  match lista_ordinata with
  | [5; 5; 5] -> "Masterpiece"
  | [5; 5; 4] -> "Highly Recommended"
  | [v0; v1; v2] when v0 >= 4 && v1 >= 4 && v2 >= 3 -> "Recommended"
  | _ -> "Mixed Reviews";;

print_string (movie_rating 5 5 5);;
print_string (movie_rating 5 5 4);;
(*movie_rating 6 5 4 ;;*)
print_string (movie_rating 3 4 5);;
  
