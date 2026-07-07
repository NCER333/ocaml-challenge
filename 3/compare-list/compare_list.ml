let rec compare_list cmp l1 l2 = match l1, l2 with
| [], [] -> 0
| [], _ -> -1
| _, [] -> 1
| x :: t1, y :: t2 -> if (cmp x y) <> 0  then cmp x y else compare_list cmp t1 t2 