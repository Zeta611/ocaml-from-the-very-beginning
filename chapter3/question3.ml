(* pow : int -> int -> int *)

let rec pow x = function
  | 0 -> 1
  | n -> x * pow x (n - 1)
