#!/usr/bin/env perl
use strict;
use warnings;

sub palindrome {
	my$top = shift;
	my $floor = shift;
	my $max = 0;
	while ($top > $floor){
		my $y = $top;
		while ($y >= $floor){
			if($y % 2 == 0) { $y--; }
			if ($top * $y < $max) { last; }
			if ($top % 11 != 0) { $y = $y - ($y % 11); }
			my $n = ($top * $y);
			if ($n == reverse($n)){ $max = $n; }
			$y -= 2;
		}
		$top -= 2;
	}
	return $max
}
print(palindrome(999, 100));
