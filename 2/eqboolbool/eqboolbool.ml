(*devo forzare i tipi dati se no rimane option per le due funzioni date*)
let (=?) (fun1: bool -> bool) fun2 =  (fun1 true = fun2 true) && (fun2 false = fun1 false);;