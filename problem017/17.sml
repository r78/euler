val first_ten = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"];
val second_ten = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"];
val units = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"];
val tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"];
val thousand = ["one", "thousand"];

fun remove_non_letters(str) =
    List.filter (fn(x) => x <> #"-" andalso x <> #" ") (explode str);

fun count(lst) =
    foldl (fn(x, acc) => length(remove_non_letters(x)) + acc) 0 lst;

val other_tens = foldl (fn(x, acc) => x::[] @ (map (fn(y) => x ^ "-" ^ y) units) @ acc) [] tens;

val hundreds = (map (fn(x) => x ^ " hundred") units);

val more_than_hundred = foldl (fn(x, acc) => 
                            x::[] 
                            @ (map (fn(y) => x ^ " and " ^ y) first_ten) 
                            @ (map (fn(y) => x ^ " and " ^ y) second_ten) 
                            @ (map (fn(y) => x ^ " and " ^ y) other_tens) 
                            @ acc) [] hundreds;

val total = count(first_ten) + count(second_ten) + count(other_tens) + count(more_than_hundred) + count(thousand);
val _ = print(Int.toString(total) ^ "\n");
val _ = OS.Process.exit(OS.Process.success);
