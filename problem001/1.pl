#!/usr/bin/env perl
use strict;
use warnings;

sub sum_m{
	my $n = shift;
	my $mul = shift;
	return ($n - ($n % $mul) + $mul)* (int($n / $mul) / 2.0);
}

sub sum_all{
	my $n = shift;
	return sum_m($n, 3) + sum_m($n, 5) - sum_m($n, 15);
}

print sum_all(999);
