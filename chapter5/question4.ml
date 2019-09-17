let rec is_sorted = function
  | h::s::t -> h <= s && is_sorted (s::t)
  | _ -> true
