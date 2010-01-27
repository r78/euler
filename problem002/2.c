#include <stdio.h>
int main (void){
	int i = 1;
	while (fib(i) < 4000000) 
		i++; 
	printf("%d\n", fib(i) - 1);
	return 0;
}

int fib(int n) {
    int last = 0;
	int this = 1;
	int new, i;
    if (n < 2) return n;
    for (i = 1 ; i < n ; ++i) {
        new = last + this;
        last = this;
        this = new;
    }
    return this;
}
