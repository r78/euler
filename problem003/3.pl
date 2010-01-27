#!/usr/bin/env perl
use strict;
use warnings;

my $n = 600851475143;
my $i = 2;

sub factor {
	$n = shift;
	$i = shift;
	my $maxfactor = 2;
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
print(factor($n, $i));
