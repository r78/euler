#include <stdio.h>
int main(void) {
	volatile long long n = 600851475143;
	int i = 2;
	printf("%d", factor(n, i));
	return 0;
}
int factor(volatile long long n, int i) {
	int maxfactor = 2;
	while (i < n/2) {
		if (n % i == 0) {
			n = n / i;
			maxfactor = n;
		} else {
			i += 1;
		}
	}
	return maxfactor;
}
