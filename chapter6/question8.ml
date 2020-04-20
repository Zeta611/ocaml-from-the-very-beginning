let rec mapl f = function
  | [] -> []
  | hd :: tl -> List.map f hd :: mapl f tl
