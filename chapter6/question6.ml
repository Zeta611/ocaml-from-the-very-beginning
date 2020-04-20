let rec filter f = function
  | [] -> []
  | hd :: tl ->
    if f hd
    then hd :: filter f tl
    else filter f tl
