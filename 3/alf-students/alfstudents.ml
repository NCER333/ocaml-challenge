type student = {
  id: string;
  name: string;
  surname: string;
  vote: int option;
  laude: bool
}

let rec id_of_no_show (sl: student list) : string list  = 
  match sl with
  | [] -> [] (*caso base per lista data in input vuota*)
  | {id; vote=None; _} :: tl -> id :: id_of_no_show tl
  | _ :: tl -> id_of_no_show tl;;


let rec upgreadable (sl: student list) : string list = 
  match sl with
  | []->[]
  | {name; surname; vote= Some v; _} :: tl when v >= 15 && v <= 17 -> (name ^ " " ^surname) :: upgreadable tl
  | _ :: tl -> upgreadable tl;;

let rec upgrade (sl)  = 
  match sl with
  | [] -> []
  | ({id; name; surname; vote = Some v; laude} as s) :: tl when v >= 15 && v <= 17 -> {s with vote = Some 18} :: upgrade tl
  | s :: tl-> s :: upgrade tl ;; (*gli altri vanno lasciati invariati dio bestia, non posso usare _*)

let rec wrong_laude (sl: student list) : string list =
  match sl with
  | []-> []
  | {name; vote = Some v; laude = true} :: tl when v <> 30-> name :: wrong_laude tl
  | _ :: tl -> wrong_laude tl;;

let rec fix_laude sl = 
  match sl with
  | [] -> []
  | ({name; vote = Some v; laude = true; _ } as s) :: tl when v <> 30 -> {s with laude = false} :: fix_laude tl
  | ({name; _} as s) :: tl -> s :: fix_laude tl;;


