package vjezbanje;

import javax.swing.JOptionPane;

public class ZZ02 {

	// Kreirati program koji ispisuje tablicu množenja 15x15

	public static void main(String[] args) {

		int a[][] = new int[15][15];

		for (int b = 1; b < 16; b++) {
			for (int c = 1; c < 16; c++) {
				System.out.printf("%4d", (b * c));

			}
			System.out.println();

		}

		System.out.printf("%60s\n", ": : : : : : : : : : : : : : : : : : : : : : : : by Krunoslav");

	}

}
