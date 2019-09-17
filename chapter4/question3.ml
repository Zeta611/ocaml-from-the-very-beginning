(* rev : a' list -> a' list *)

let rec rev = function
  | [] -> []
  | h::t -> rev t @ [h]

(* palindrome : a' list -> a' list *)

let palindrome l = l @ rev l

(* check_palindrome : a' list -> bool *)

let check_palindrome l = (l = rev l)
