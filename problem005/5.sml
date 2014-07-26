fun gcd(a : IntInf.int, b : IntInf.int) =
    let fun loop(a,b) =
        case b of
              0 => a
            | _ => loop(b, a mod b)
    in
        loop(a,b)
    end;

fun solve(n) =
    let fun loop(lcm : IntInf.int, n) =
        case n of 
              1 => lcm
            | _ => loop((lcm * n) div gcd(lcm, n), n - 1)
    in
        loop(IntInf.toLarge 1, n)
    end;

solve(200);
