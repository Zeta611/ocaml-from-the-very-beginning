(* evens : 'a list -> 'a list *)

let rec evens = function
  | [] | [_] -> []
  | [_; a] -> [a]
  | _::a::t -> a :: evens t
