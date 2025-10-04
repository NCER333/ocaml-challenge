let inrange number = number >= 1 && number <= 5 ;;

let guess5 n = if not (inrange n ) then failwith "error" else (* qua posso usare assert per generare lerroe in caso non passi avanti*)
  let r = Random.int(5) + 1 in
  (n = r, r)

