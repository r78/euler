(* checks if a number is a palindrome *)
fun is_palindrome(n) =
    Int.toString(n) = String.implode(rev(String.explode(Int.toString(n))));

fun solve (limit) = 
   let fun loop (a, max) = 
        let fun loop2 (b, max) = 
            if b < limit
            then max
            else
                let val n = a * b
                in
                    if n > max andalso is_palindrome(n)
                    then loop2(b - 2, n)
                    else loop2(b - 2, max)
                end
        in
            if a < limit then max
            else loop(a - 2, loop2(a, max))
        end
    in loop (999, 0)
    end;

solve(100);
OS.Process.exit(OS.Process.success);

