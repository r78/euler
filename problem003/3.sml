val n = IntInf.toLarge 600851475143;

fun factor (n : IntInf.int) =
    let fun aux (i, n, maxfactor) =
        if i < n div 2 
        then
            case n mod i of
                  0 => aux(i, n div i, n div i)
                | _ => aux(i + 1, n, maxfactor)
        else maxfactor
    in
        aux(2, n, n) 
    end;

factor(n);
