fun sum_of_squares(n) =
	Int.toLarge((n * (n + 1) * ((2 * n) + 1)) div 6);

fun square_of_sum(n) =
    let 
        val sum = trunc((Real.fromInt(n) / 2.0) * Real.fromInt(n + 1))
    in
        case n mod 2 of
              0 => IntInf.pow(Int.toLarge(sum), 2) 
            | _ => IntInf.pow(Int.toLarge(sum + n), 2)
    end;

(square_of_sum(100) - sum_of_squares(100));
