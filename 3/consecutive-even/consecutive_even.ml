
(* 2 2 2 3 4 6 8 8 8 1 *)
let consecutive_even l =
  let rec loop curr_acc max_acc l = match l with
  | [] -> max curr_acc max_acc
  | x :: t -> if (x mod 2) = 0 then loop (curr_acc+1) max_acc t else loop 0 (max curr_acc max_acc) t in
  loop 0 0 l