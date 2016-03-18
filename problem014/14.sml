fun collatz(n) =
    let fun loop(start, steps) =
        if (start = 1)
        then steps
        else 
            if (start mod 2 = 0)
            then loop(start div 2, steps + 1)
            else loop(3 * start + 1, steps + 1);
    in
        loop(n, 1)
    end;

fun longest(top) =
    let fun loop(n, max, num) =
        if (n <= top)
        then 
            let val newmax = collatz(n)
            in
                if (newmax > max)
                then loop(n + 1, newmax, n)
                else loop(n + 1, max, num)
            end
        else num
    in
        loop(2, 0, 2)
    end;

(* longest(999999); *)
longest(9999);
