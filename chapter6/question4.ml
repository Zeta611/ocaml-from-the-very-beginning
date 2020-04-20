let rec apply f n init =
  match n with
  | 0 -> init
  | n -> apply f (n - 1) (f init)
