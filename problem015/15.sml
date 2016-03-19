fun factorial(n: IntInf.int) =
    let fun loop(n, acc) =
        if n >= 1
        then loop(n - 1, n * acc)
        else acc
    in
        loop(n, 1)
    end;

fun routes(n: IntInf.int) =
    factorial(2 * n) div
    IntInf.pow(factorial(n), 2);

val _ = print(IntInf.toString(routes(20)) ^ "\n");
val _ = OS.Process.exit(OS.Process.success);
