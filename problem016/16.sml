(* 1366 *)

let val st_number =
    IntInf.toString(IntInf.pow(Int.toLarge(2), 1000));
    in
        foldl (fn(x,acc) => x + acc) 0 map((fn(x) => ord(x)) explode(st_number))
(* map (fn(x) => ord(x) -48) (explode("304")) ; *)

    end;


val _ = OS.Process.exit(OS.Process.success);
