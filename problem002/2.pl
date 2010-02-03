#!/usr/bin/env perl
use strict;
use warnings;
my @h;

sub fib{
	my $n = shift;
	if (!defined($h[$n])) {
		if ($n < 2) {
			$h[$n] = 1;
			return $h[$n];
		} else {
			$h[$n] = fib($n - 1) + fib($n - 2);
			return $h[$n];
		}
	} else {
		return $h[$n];
	}
}

my $x = 2;
my $total = 0;
my $i = fib($x);
while ($i < 4000000){
	$total += $i;
	$x += 3;
	$i = fib($x);
}

print($total);
