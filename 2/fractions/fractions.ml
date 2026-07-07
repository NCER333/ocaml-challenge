let is_posfrac (a, b) = if b = 0 then failwith("la frazione non é una frazione con denominatore zero"); 
  not((a < 0) <> (b < 0)) ;; (*faccio lo xor tra numeratore e denominatore*)

let compare_posfrac (a, b) (c, d) = if not(is_posfrac(a, b) && is_posfrac(c, d) ) then failwith ("Almeno una frazione non é positiva ") ;
  let l = a*d and r = b*c in 
  if l=r then 0
  else if l > r then 1
  else -1;;

assert (compare_posfrac (1,2) (2,4) == 0);;
assert (compare_posfrac (1,2) (1,3) == 1);;
assert (compare_posfrac (1,2) (2,3) == -1);;

let compare_frac(a,b)(c,d) =  (*posso vedere i segni delle due frazioni e muovermi di conseguenza, se sono tutte e due negative posso confrontare quelle positive e invertire il segno del risultato perché quella maggiore sará quella minore quando viene invertita di segno*)
  match (is_posfrac(a,b), is_posfrac(c, d)) with
  | false, false -> - (compare_posfrac(-a, b)(-c, d))
  | false, true -> -1
  | true, false -> 1
  | true, true -> compare_posfrac(a,b)(c,d);;


assert (compare_frac (-1,2) (-2,4) == 0);;
assert (compare_frac (1,2) (1,3) == 1);;
assert (compare_frac (-1,2) (1,3) == -1);;
assert (compare_frac (1,2) (-1,3) == 1);;

assert (compare_frac (-1,2) (-1,3) == -1);;
print_endline "Test passati "