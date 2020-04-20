exception Negative of int

let sqrt_int n =
  if n < 0
  then raise (Negative n)
  else int_of_float (sqrt (float_of_int n))
