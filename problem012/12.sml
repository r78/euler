datatype 'a stream = Null | Cons of 'a * (unit -> 'a stream);

(* Returns the ordered list of the first n elements of the stream.  *)
fun takeN(s: 'a stream, n: int): 'a list =
    case (s, n) of
      (_, 0)          => []
    | (Null, _)       => raise Empty
    | (Cons(h, t), n) => h :: (takeN (t(), n - 1));

(* Produces a stream of values that satisfy a predicate. *)
fun filter (f: 'a -> bool) (s: 'a stream): 'a stream =
    case s of
        Null => Null
      | Cons(h, t) => if f(h) 
                        then Cons(h, fn () => filter f (t()))
                        else filter f (t());

(* stream of triangular numbers *)
fun triangle(a: int, b: int) =
    Cons(b, fn () => triangle(a + 1, a + b + 2));

(* count the number of divisors of n *)
fun divisors_count(n: int): int =
    let
        val sqrt = Real.floor(Math.sqrt(Real.fromInt(n)))
        fun loop(i, num, exponents) =
            if i <= sqrt
            then 
                let fun loop_div(p, num) =
                    if num mod i = 0
                    then loop_div(p + 1, num div i)
                    else
                        if p > 0 
                        (* add the exponent of factor i to the list *)
                        then loop(i + 1, num, p :: exponents)
                        else loop(i + 1, num, exponents)
                in
                    loop_div(0, num)
                end
            else
                let val exponents = case num of
                      1 => exponents
                    | _ => 1 :: exponents
                in
                    case List.length(exponents) of
                         0 => 2
                        |_ => List.foldl (fn (f, acc) => acc * (f + 1)) 1 exponents
                end
    in
        loop(2, n, [])
    end;

val result = hd(takeN(filter (fn n => divisors_count n > 500) (triangle(0, 1)), 1));

val () = print (Int.toString result ^ "\n");
val _ = OS.Process.exit(OS.Process.success);
