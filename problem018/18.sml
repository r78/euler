val t1 = "3\n\
\7 4\n\
\2 4 6\n\
\8 5 9 3";

val t = "75\n\
\95 64\n\
\17 47 82\n\
\18 35 87 10\n\
\20 04 82 47 65\n\
\19 01 23 75 03 34\n\
\88 02 77 73 07 63 67\n\
\99 65 04 28 06 16 70 92\n\
\41 41 26 56 83 40 80 70 33\n\
\41 48 72 33 47 32 37 16 94 29\n\
\53 71 44 65 25 43 91 52 97 51 14\n\
\70 11 33 28 77 73 17 78 39 68 17 57\n\
\91 71 52 38 17 14 91 43 58 50 27 29 48\n\
\63 66 04 68 89 53 67 30 73 16 69 87 40 31\n\
\04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"

val lines = String.tokens(fn(x) => x = #"\n") t;
val triangle = map (fn(row) => map (fn(x) => valOf(Int.fromString x)) (String.tokens(fn(num) => num = #" " ) row)) lines;

(* [1,2,3,4] -> [[1,2], [2,3], [3,4]] *)
fun pairs(lst) = 
  let fun aux(l, acc) =
    case l of
      [] => acc
      | x::[] => aux([], acc)
      | x::y::xs => aux(y::xs, acc @ [[x, y]] )
  in
    aux(lst, [])
  end;

fun list_max(lst) = 
  if lst = [] 
  then 0
  else Int.max(hd(lst), list_max(tl(lst)));

(* [5,2,9,4] -> [5,9,9] *)
fun maxpairs(lst) =
  map (fn(x) => list_max(x)) (pairs lst);

(* [8,5,9,3] [2,4,6] -> [10,13,15] *)
fun row_merge(a, b) =
  map (fn(x) => op+(x)) (ListPair.zip(maxpairs(a), b));

let val solution = 
    let fun solve(t, acc) =
            case t of
                [] => acc
                | x::xs => solve(xs, row_merge(acc, x))
        in
            Int.toString((hd(solve(tl (List.rev triangle), hd (List.rev triangle)))))
        end;
    in
        print(solution ^ "\n")
    end;

val _ = OS.Process.exit(OS.Process.success);
