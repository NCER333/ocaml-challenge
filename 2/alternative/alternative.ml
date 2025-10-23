let (<|>) a b = match (a,b) with 
| None, None -> None
| Some a, _ -> Some a
| _, Some b -> Some b;;

assert (None <|> Some false = Some false);;
assert (Some true <|> None <|> Some false = Some true);;
assert (Some 3 <|> None = Some 3);;
assert (Some "cat" <|> Some "dog" = Some "cat");;
assert (None <|> None <|> Some "dog" <|> None = Some "dog");;

print_endline "test passati con successo"