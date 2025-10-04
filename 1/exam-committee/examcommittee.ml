(*# Exam Committee

You are tasked with writing a function that determines whether an exam candidate passes or fails based on the votes of a three-member committee. 
Each committee member can vote using one of four possible values:
- `StrongReject`
- `WeakReject`
- `WeakAccept`
- `StrongAccept`

The exam is passed if at least two committee members support acceptance (either weakly or strongly), unless the third member gives a strong reject, in which case the candidate fails.

Write a function with type:
```ocaml
decide_exam : vote -> vote -> vote -> bool
```
that takes as input three votes and returns a bool indicating whether the candidate passes (true) or fails (false).*)

type vote = StrongReject | WeakReject | WeakAccept | StrongAccept

(*se c'è un solo strong reject allora è sicuro che non ha passato l'esame *)
let decide_exam v0 v1 v2 = if v0 = StrongReject || v1 = StrongReject || v2 = StrongReject then false else
  (*rimangono da vedere i casi in cui non ci sono dei reject forti, quindi bisogna controllare che ci siano almeno due accept su tre*)
  match v0 with
  | WeakAccept | StrongAccept -> if v1 = WeakAccept || v1 = StrongAccept || v2 = WeakAccept || v2 = StrongAccept then true else false
  | WeakReject -> if (v1 = WeakAccept || v1 = StrongAccept) && (v2 = WeakAccept || v2 = StrongAccept) then true else false
  | _ -> false;;

decide_exam StrongReject WeakAccept StrongAccept;;  (* false *)
decide_exam WeakAccept WeakAccept WeakReject;;      (* true *)
decide_exam WeakReject WeakAccept WeakReject;;      (* false *)
decide_exam StrongAccept WeakAccept WeakAccept;;    (* true *)
decide_exam WeakAccept WeakAccept StrongReject;;    (* false *)

(* un'altra implementazione è contare quanti voti accept sono presenti, se sono almeno due e non è presente uno strong reject allora ritorna true*)

let decide_exam2 s0 s1 s2 = if s0 = StrongReject || s1 = StrongReject || s2 = StrongReject then false else
  let accepts s0 s1 s2 = (if (s0 = WeakAccept) || (s0 = StrongAccept) then 1 else 0) + 
                        (if (s1 = WeakAccept) || (s1 = StrongAccept) then 1 else 0 )+ 
                        (if (s2 = WeakAccept) || (s2 = StrongAccept) then 1 else 0) in
   accepts s0 s1 s2 >= 2;;

print_endline "test passati"