#!/usr/bin/env perl
#slow
use strict;
use warnings;
my @h;

sub fib{
	my $n = shift;
	return 0 if $n == 0;
	return 1 if $n == 1;
	return fib($n - 1) + fib($n - 2);
}

my $x = 1;
while (fib($x) < 4000000){
	$x++;
}

print(fib($x) - 1);
