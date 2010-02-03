#!/usr/bin/env perl
use strict;
use warnings;
use List::Util qw(reduce);

sub gcd {
	my ($a, $b) = @_;
	while ($b != 0) {
		($a, $b) = ($b, $a % $b);
	}
	return $a;
}

print(reduce { ($a * $b) / gcd($a, $b) } (1 .. 20));
