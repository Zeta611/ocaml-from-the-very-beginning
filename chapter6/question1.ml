let rec calm : char list -> char list = function
  | [] -> []
  | '!' :: tl -> '.' :: calm tl 
  | hd :: tl -> hd :: calm tl

let calm2 : char list -> char list =
  List.map (fun x -> if x = '!' then '.' else x)
