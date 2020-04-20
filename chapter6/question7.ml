let rec for_all f = function
  | [] -> true
  | hd :: tl when f hd -> for_all f tl
  | _ -> false
