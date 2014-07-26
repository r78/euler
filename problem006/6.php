#!/usr/bin/env php
<?php

function sum_of_squares($n){
	return ($n * ($n + 1) * ((2 * $n) + 1)) / 6;
}

function square_of_sum($n){
	$sum = ($n / 2) * ($n + 1);
	if ($n % 2 != 0) { $sum += $n; }
	return pow($sum, 2);
}

print(square_of_sum(100) - sum_of_squares(100));
?>
