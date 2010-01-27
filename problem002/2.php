#!/usr/bin/env php
<?php
//slow
$h = Array();

function fib($n){
	if ($h[$n] == null) {
		if ($n < 2) {
			return 1;
		} else { 
			return fib($n - 1) + fib($n - 2);
		}
	} else {
		return $h[$n];
	}
}

$x = 1;
while (fib($x) < 4000000) {
	$x += 1;
}

print(fib($x) - 1);
?>
