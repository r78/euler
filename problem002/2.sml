fun fibonacci (n) =
    let fun fib_iter(a, b, count) = 
        case count of
              0 => b
            | _ => fib_iter((a + b), a, (count - 1))
    in
        fib_iter(1, 0, n)
    end

fun sum_even_valued_terms_under (start, max, acc) =
    let 
        val n = fibonacci(start)
    in 
        if n >= max then 
            acc 
        else 
            sum_even_valued_terms_under(start + 3, max, acc + n)
    end;

sum_even_valued_terms_under(3, 4000000, 0);
