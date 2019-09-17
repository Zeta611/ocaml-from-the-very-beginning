(* int_or : int -> int -> bool *)

let int_or x y =
  match x, y with
  | 0, 0 -> true
  | _, _ -> false
