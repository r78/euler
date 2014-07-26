#!/usr/bin/env perl
use strict;
use warnings;

sub sum_of_squares{
	my $n = shift;
	return ($n * ($n + 1) * ((2 * $n) + 1)) / 6;
}

sub square_of_sum{
	my $n = shift;
	my $sum = ($n / 2) * ($n + 1);
	if ($n % 2 != 0) { $sum += $n; }
	return $sum ** 2;
}

print(square_of_sum(100) - sum_of_squares(100));
