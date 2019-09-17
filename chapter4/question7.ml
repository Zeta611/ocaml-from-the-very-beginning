(* rev : 'a list -> 'a list *)

(* let rec rev = function *)
(*   | [] -> [] *)
(*   | h::t -> rev t @ [h] *)

let rec rev_tail l env =
  match l with
  | [] -> env
  | h::t -> rev_tail t (h :: env)
