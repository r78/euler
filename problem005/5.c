#include <stdio.h>

unsigned int gcd(unsigned int a, unsigned int b) {
	unsigned int aux;
	while (b != 0) {
		aux = b;
		b = a % b;
		a = aux;
	}
	return a;
}

unsigned int lcm(unsigned int a, unsigned int b) {
	return (a * b) / gcd(a, b);
}

unsigned int range_lcm(int min, int max) {
	unsigned int i = min;
	int j;
	for (j = min + 1; j < max; j++) {
		i = lcm(i, j);
	}
	return i;
}

int main(void) {
	printf("%d\n", range_lcm(1, 20));
	return 0;
}
