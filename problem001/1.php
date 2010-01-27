#!/usr/bin/env php
<?php 

function sum_m($n, $mul) {
	return ($n - ($n % $mul) + $mul) * (intval($n / $mul) / 2.0);
}

$n = 999;

print(sum_m($n, 3) + sum_m($n, 5) - sum_m($n, 15));

?>
