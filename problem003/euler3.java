public class euler3 {

	public static void main(String[] args){
		long n = 600851475143L;
		int i = 2;
		System.out.println(factor(n, i));
	}

	private static long factor(long n, int i){
		long maxfactor = 2;
		while (i < n/2){
			if (n % i == 0){
				n = n / i;
				maxfactor = n;
			} else { i += 1; }
		}
		return maxfactor;
	}
}
