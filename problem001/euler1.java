import java.text.DecimalFormat;

public class euler1 {
	public static void main(String[] args) {
		double sum;
		int n = 999;
		DecimalFormat formatter = new DecimalFormat("#0");
		sum = sum_n(n, 3) + sum_n(n, 5) - sum_n(n, 15);
		System.out.println(formatter.format(sum));
	}
	private static double sum_n(int n, int mul) {
		double sum;
		sum = (n - (n % mul) + mul) * (n / mul / 2.0);
		return sum;
	}
}
