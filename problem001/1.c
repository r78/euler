#include <stdio.h>
/*
int main(void) {
	int i, sum;
	sum = 0;
	for (i = 3; i <= 999; i++) {
		if (i % 3 == 0 || i % 5 == 0){
			sum += i;
		}
	}
	printf("%d\n", sum);
	return 0;
} 
*/

int main(void) {
	int sum;
	int n = 999;
	sum = sum_n(n, 3) + sum_n(n, 5) - sum_n(n, 15);
	printf("%d\n", sum);
	return 0;
}

int sum_n(int n, int mul) {
	int sum;
	sum = (n - (n % mul) + mul) * (n / mul / 2.0);
	return sum;
}
