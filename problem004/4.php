#!/usr/bin/env php
<?php 
function palindrome($top, $floor) {
	$max = 0;
	while ($top > $floor){
		$y = $top;
		while ($y >= $floor){
			if ($y % 2 == 0) { $y--; }
			if ($top * $y < $max) { break; }
			if ($top % 11 != 0) { $y = $y - ($y % 11); }
			$n = ($top * $y);
			if ($n == strrev($n)){ $max = $n; }
			$y -= 2;
		}
		$top -= 2;
	}
	return $max;
}

print(palindrome(999, 100));
?>
