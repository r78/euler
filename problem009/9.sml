fun solve(n) =
    let fun loop(a) =
        let fun loop2(b) =
            if b >= n
            then loop(a + 1)
            else
                let val c = n - a - b
                in
                    if c * c = a * a + b * b andalso a < b andalso b < c
                    then a * b * c
                    else loop2(b + 1)
                end
        in
            loop2 a
        end
    in
        loop 1
    end;
     
solve 1000;
val _ = OS.Process.exit(OS.Process.success);
