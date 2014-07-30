(* check if numbers greater than 7 have a prime factor *)
fun has_factor(n) =
    let fun loop(x) =
        if x <= Real.floor(Math.sqrt(Real.fromInt(n)))
        then 
            if n mod x = 0
            then true
            else loop(x + 1)
        else false
    in
        loop(2)
    end;

(* check if a number is a prime *)
fun is_prime(n) = 
    case n of 
          (1|2|3|5|7) => true
        | _ => if (n mod 2 = 0) orelse (n mod 3 = 0) orelse (n mod 5 = 0) orelse (n mod 7 = 0)
                then false
                else not (has_factor(n))

(* find the nth prime *)
fun nth_prime(n) =
    let fun loop(pos, p, i) =
        if pos < n
        then
            if is_prime(i)
            then loop(pos + 1, i, i + 1)
            else loop(pos, p, i + 1)
        else p
    in
        (* pos, p, i*)
        loop(0, 0, 2)
    end;
            
nth_prime(10001);

OS.Process.exit(OS.Process.success);
