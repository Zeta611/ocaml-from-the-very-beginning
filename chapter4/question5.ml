(* member : 'a -> 'a list -> bool *)

let rec member x = function
  | [] -> false
  | h::t -> h = x || member x t
