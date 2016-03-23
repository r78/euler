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
          1 => false
        | (2|3|5|7) => true
        | _ => if (n mod 2 = 0) orelse (n mod 3 = 0) orelse (n mod 5 = 0) orelse (n mod 7 = 0)
                then false
                else not (has_factor(n))

(* find the sum of all primes below max *)
fun primes_below(max : IntInf.int) =
    let fun loop(n : IntInf.int, sum : IntInf.int) =
        if n < max
        then
            if is_prime (IntInf.toInt n)
            then loop(n + 1, sum + n)
            else loop(n + 1, sum)
        else sum
    in
        loop(1, IntInf.toLarge 0)
    end;

primes_below 2000000;
val _ = OS.Process.exit(OS.Process.success);
