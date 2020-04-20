let clip n =
  if n < 1 then 1
  else if n > 10 then 10
  else n

let cliplist = List.map clip
