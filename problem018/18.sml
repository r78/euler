val t = "3\n\
\7 4\n\
\2 4 6\n\
\8 5 9 3";

val lines = String.tokens(fn(x) => x = #"\n") t;
val triangle = map (fn(row) => map (fn(x) => valOf(Int.fromString x)) (String.tokens(fn(num) => num = #" " ) row)) lines;

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

fun maxpairs(lst) =
  map (fn(x) => list_max(x)) (pairs lst);

fun row_merge(a, b) =
  map (fn(x) => op+(x)) (ListPair.zip(maxpairs(a), b));

fun solve(triangle) =
  let fun loop(t, acc) =
    case t of
      [] => acc
      |x::xs =>  loop(xs, row_merge(x ,acc))
  in
    loop(hd triangle, tl triangle)
  end;
solve(rev triangle);

foldl row_merge (hd triangle) (tl triangle);

(*row_merge(row_merge(row_merge([8,5,9,3], [2,4,6]), [7,4]), [3]);*)

val _ = OS.Process.exit(OS.Process.success);
