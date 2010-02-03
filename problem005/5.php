#!/usr/bin/env php
<?php
function gcd($a,$b){
	while ($b != 0){
		$aux = $b;
		$b = $a % $b;
		$a = $aux;
	}
	return $a;
}

function lcm($a, $b){
	$lcm = ($a * $b) / gcd($a, $b);
	return $lcm;
}

print(array_reduce(range(1, 20), 'lcm', 1));
?>
