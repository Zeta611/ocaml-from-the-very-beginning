let smallest l =
  let rec loop acc found = function
    | [] -> if found then acc else raise Not_found
    | hd :: tl ->
      if hd > 0 && hd < acc
      then loop hd true tl
      else loop acc found tl
  in
  loop max_int false l
