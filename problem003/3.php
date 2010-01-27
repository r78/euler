#!/usr/bin/env js
<?php
//fail
$n = 600851475143;
//$n = 60;
$i = 2;

function factor($n, $i){
	$maxfactor = 2;
	while ($i < $n/2) {
		if ($n % $i == 0) {
			$n = $n / $i;
			$maxfactor = $n;
		} else {
			$i++;
		}
	}
	return $maxfactor;
}

//print(factor($n, $i));
print("php can't divide big numbers (?)");
?>
