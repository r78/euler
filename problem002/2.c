#include <stdio.h>
int main (void){
	int x = 2;
	int total = 0;
	int i = fib(x);
	while (i < 4000000)  {
		total += i;
		x += 3;
		i = fib(x);
	}
	printf("%d\n", total);
	return 0;
}

int fib(int n) {
    int last = 1;
	int this = 1;
	int new, i;
    if (n < 2) return 1;
    for (i = 1 ; i < n ; ++i) {
        new = last + this;
        last = this;
        this = new;
    }
    return this;
}
