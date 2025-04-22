let mean lst =
  let sum = List.fold_left (+.) 0.0 (List.map float_of_int lst) in
  sum /. float_of_int (List.length lst)

let median lst =
  let sorted = List.sort compare lst in
  let len = List.length sorted in
  if len mod 2 = 0 then
    let mid1 = List.nth sorted (len / 2 - 1) in
    let mid2 = List.nth sorted (len / 2) in
    float_of_int (mid1 + mid2) /. 2.0
  else
    float_of_int (List.nth sorted (len / 2))

let mode lst =
  let count_map =
    List.fold_left (fun acc x ->
      if List.mem_assoc x acc then
        let count = List.assoc x acc in
        (x, count + 1) :: List.remove_assoc x acc
      else
        (x, 1) :: acc
    ) [] lst
  in
  let max_count = List.fold_left (fun acc (_, v) -> max acc v) 0 count_map in
  List.fold_left (fun acc (k, v) ->
    if v = max_count then k :: acc else acc
  ) [] count_map

let () =
  let numbers = [1; 2; 2; 3; 4] in
  Printf.printf "Mean: %.2f\n" (mean numbers);
  Printf.printf "Median: %.2f\n" (median numbers);
  Printf.printf "Mode(s): %s\n"
    (String.concat ", " (List.map string_of_int (mode numbers)))
