package edunova;

public class TablicaMnozenja {

	public static void main(String[] args) {

		for (int i = 0; i < 31; i++) {
			System.out.print("-");
		}

		System.out.print("\n: : :  TABLICA  MNOZENJA  : : :\n");

		for (int i = 0; i < 31; i++) {
			System.out.print("-");
		}

		System.out.println("\n *" + " | " + " 1  2  3  4  5  6  7  8  9");

		for (int i = 0; i < 31; i++) {
			System.out.print("-");
		}

		System.out.println();

		int a[][] = new int[10][10];

		for (int b = 1; b <= 9; b++) {
			System.out.print(" " + b + " |");

			for (int c = 1; c <= 9; c++) {

				{
					if (b * c <= 9) {
						System.out.print("  " + b * c);
					} else {
						System.out.print(" " + b * c);
					}
				}

			}
			System.out.println();
		}

		for (int i = 0; i < 31; i++) {

			System.out.print("-");

		}
		System.out.println();

		System.out.println(":  :  :  :  :  :  :by Krunoslav");

		for (int i = 0; i < 31; i++) {
			System.out.print("-");
		}

	}

}
