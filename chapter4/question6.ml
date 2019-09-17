(* member : 'a -> 'a list -> bool *)

let rec member x = function
  | [] -> false
  | h::t -> h = x || member x t

(* make_set : 'a list -> 'a list *)

let rec make_set = function
  | [] -> []
  | h::t ->
      let set = make_set t in
      if member h set then set else h::set
