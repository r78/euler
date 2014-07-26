#include <stdio.h>
#include <math.h>

int main(void){
	int n = 100;
	printf("%d\n", square_of_sum(n) - sum_of_squares(n));
	return 0;
}

int sum_of_squares(int n){
	return (n * (n + 1) * ((2 * n) + 1)) / 6;
}

int square_of_sum(int n){
	int sum = (n / 2) * (n + 1);
	if (n % 2 != 0) { sum += n; }
	return pow(sum, 2);
}
