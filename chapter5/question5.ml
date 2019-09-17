let rec sort = function
  | [] -> []
  | h::t -> 
      let rec insert x = function
        | [] -> [x]
        | h::t ->
            if x <= h
            then x :: h :: t
            else h :: insert x t in
      insert h (sort t)
