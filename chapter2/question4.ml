(* power : int -> int -> int *)

let rec power x n =
  if n = 0 then 1 else x * power x (n - 1)
