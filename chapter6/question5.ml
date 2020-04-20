let isort cmp l =
  let rec insert x = function
  | [] -> [x]
  | hd :: tl ->
    if cmp x hd
    then x :: hd :: tl
    else hd :: insert x tl
  in
  let rec sort = function
  | [] -> []
  | hd :: tl -> insert hd (sort tl)
  in
  sort l
