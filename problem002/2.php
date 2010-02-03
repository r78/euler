#!/usr/bin/env php
<?php
//slow
$h = Array();

function fib($n, $h){
	if ($h[$n] == null) {
		if ($n < 2) {
			$h[$n] = 1;
			return $h[$n];
		} else {
			$h[$n] = fib($n - 1, $h) + fib($n - 2, $h);
			return $h[$n];
		}
	} else {
		return $h[$n];
	}
}

$total = 0;
$x = 2;
$i = fib($x, $h);
while ($i < 4000000) {
	$total += $i;
	$x += 3;
	$i = fib($x, $h);
}

print($total);
?>
