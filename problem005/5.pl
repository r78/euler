#!/usr/bin/env perl
use strict;
use warnings;

sub factors{
	my $n = shift;
	if ($n == 1){
		return $n;
	}
	my $x = 2;
	my @factors;
	while ($x <= $n){
		while ($n % $x == 0) {
			push(@factors, $x);
			$n = $n / $x;
		}
		$x++;
	}
	return @factors;
}

sub factors_frequency{
	my $top = shift;
	my @nums = (1 .. $top);
	my %factors;
	for my $num(@nums){
		my @num_factors = factors($num);
		for my $factor(@num_factors){
			if ($factor == 1) { next; }
			my $factor_power = 0;
			for my $f(@num_factors){#comptar els cops que apareix el factor
				if ($f == $factor) { $factor_power++; }
			}
			if (defined $factors{$factor}){
				if ($factors{$factor} < $factor_power){
					$factors{$factor} = $factor_power;
				}
			} else {
				$factors{$factor} = $factor_power;
			}
		}
	}
	return %factors;
}

my @nums = (1 .. 20);
my %lcm = factors_frequency(20);
my $total = 1;
while (my ($key, $value) = each(%lcm)) {
	$total *= $key**$value;	
}
print $total."\n";
