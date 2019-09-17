(* sum : int -> int *)

let rec sum = function
  | 1 -> 1
  | n -> n + sum (n - 1)
