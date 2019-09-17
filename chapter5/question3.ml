let rec insert x = function
  | [] -> [x]
  | h::t ->
      if x >= h
      then x :: h :: t
      else h :: insert x t


let rec sort = function
  | [] -> []
  | h::t -> insert h (sort t)
