public class euler2{
	public static void main(String[] args){
		int x = 2;
		int total = 0;
		int i = fib(x);
		while (fib(x) < 4000000) {
			total += i;
			x += 3;
			i = fib(x);
		}
		System.out.println(total);
	}
	private static int[] a;
	private static int fib(int n){
		if (a == null) {
			if (n < 2) {
				return 1;
			} else {
				return fib(n - 1) + fib(n - 2);
			}
		} else {
			return a[n];
		}
	}
}
