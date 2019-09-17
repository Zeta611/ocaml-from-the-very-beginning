(* drop_last : a' list -> a' list *)

let rec drop_last = function
  | [] -> []
  | [a] -> []
  | h::t -> h :: drop_last t

(* drop_last_tail : a' list -> a' list -> a' list *)

let rec drop_last_tail l env =
  match l with
  | [] -> []
  | [a] -> env
  | h::t -> drop_last_tail t (env @ [h])
