(* count_true : bool list -> int *)

let rec count_true = function
  | [] -> 0
  | true::t -> 1 + count_true t
  | false::t -> count_true t

(* count_true_tail : bool list -> int -> int *)

let rec count_true_tail l n =
  match l with
  | [] -> n
  | true::t -> count_true_tail t (n + 1)
  | false::t -> count_true_tail t n
