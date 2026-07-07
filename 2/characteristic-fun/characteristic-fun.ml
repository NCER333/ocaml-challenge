let checknaturalnumber n = if n < 0 then failwith("Non é un numero naturale") ;;

let f1 (x:int) = checknaturalnumber x; 0 ;;

let f2 (x:int) = checknaturalnumber x;
if (x = 0 || x = 1 || x = 2 ) then 1 else 0;;

let f3 (x:int) = checknaturalnumber x;
if (x > 0 && x < 100 ) then 1 else 0;;

let f4 (x:int) = checknaturalnumber x;
0;;

let f5 (x:int) = checknaturalnumber x;
1;;

(*set con soli numeri pari ((x = y + y))*)
let f6 (x:int) = checknaturalnumber x;
if (x mod 2 = 0) then 1 else 0;;

(*set con almeno un numero che é il doppio di x ((tutti i numeri naturali))*)

let f7 (x:int) = checknaturalnumber x;
1;;

(*set dove esiste almeno un numero maggiore di quello scelto ((tutti i naturali son piu piccoli del successivo))*)
let f8 (x:int) = checknaturalnumber x;
1;;
(*altro set sempre vero, esiste sempre il quadrato di un naturale*)

let f9 (x:int) = checknaturalnumber x;
1;;

(*y vale 0 1 2 e x y deve dare da 8 a 19, quindi sicuramente se x é compreso in quell intervallo va bene perche per 1 é sempre compreso, bisogna verificare gli altri possibili casi
per y = 0 non é mai valida, 'unico caso mancante é per y = 2, quindi x in questo caso deve valere la metá dell'intervallo indicato *)
let f10 (x:int) = checknaturalnumber x;
if x > 7 && x < 20 then 1 else if (x > 3 && x < 10) then 1 else 0;; (*posso unire tutto in un unico if da 4 a 19*)

let f11 (x:int) = checknaturalnumber x;
  if x < 50 && (x mod 2 = 0) then 1 else 0;;

  let f12(z:int) = checknaturalnumber z;
  if z < 50 then 1 else 0;;

let f13 (x:int) = checknaturalnumber x;
  1;;

let f14 (x:int) = checknaturalnumber x;
  if x > 1 then 1 else 0;;

let f15 (x:int) = checknaturalnumber x; (* posso considerare solo i numeri primi e 1 come divisori accettabili*)
