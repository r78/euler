fun sum_m (n, mul) =
    Real.fromInt((n - (n mod mul) + mul)) * (Real.fromInt(n div mul) / 2.0);

fun sum_all (n) =
    (sum_m(n, 3) + sum_m(n, 5)) - sum_m(n, 15)

val n = 999;

print(Real.toString(sum_all(n)));
