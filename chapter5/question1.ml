let rec merge = function
  | [], r -> r
  | l, [] -> l
  | hl::tl, hr::tr ->
      if hl < hr
      then hl :: merge (tl, hr::tr)
      else hr :: merge (hl::tl, tr)


let rec length_tail n = function
  | [] -> n
  | h::t -> length_tail (n + 1) t

let length = length_tail 0


let rec take n l =
  if n = 0 then []
  else List.hd l :: take (n - 1) (List.tl l)


let rec drop n l =
  if n = 0 then l
  else drop (n - 1) (List.tl l)


let rec msort = function
  | [] -> []
  | [x] -> [x]
  | l ->
      let half = length l / 2 in
      let left = take half l in
      let right = drop half l in
      merge (msort left, msort right)
