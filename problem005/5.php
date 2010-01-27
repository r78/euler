#!/usr/bin/env php
<?php
function factors($n){
	if ($n == 1) { $factors = Array(); $factors[] += $n; return $factors; }
	$x = 2;
	$factors = Array();
	while ($x <= $n){
		while ($n % $x == 0){
			$factors[] += $x;
			$n = $n / $x;
		}
		$x++;
	}
	return $factors;
}

function rmul($total, $value) {
    $total *= $value;
    return $total;
}

function power($value, $key){
	return pow($key, $value);
}

function lcm($factors){
	$arr_to_powers = array_map('power', $factors, array_keys($factors));
	$total = array_reduce($arr_to_powers, 'rmul', 1);
	return $total;
}

function get_factors($nums){
	$factors = Array();
	foreach ($nums as $num){
		$num_factors = array_count_values(factors($num));
		foreach (array_keys($num_factors) as $factor){
			if ($factor == 1) { next; };
			$factor_power = $num_factors[$factor];
			if ($factors[$factor] <= $factor_power){
				$factors[$factor] = $factor_power;
			}
		}
	}
	return $factors;
}

$nums = range(1, 20);
print(lcm(get_factors($nums)));

?>
