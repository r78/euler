public class euler2{
	public static void main(String[] args){
		int x = 1;
		while (fib(x) < 4000000) {
			x += 1;
		}
		System.out.println(fib(x) - 1);
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
