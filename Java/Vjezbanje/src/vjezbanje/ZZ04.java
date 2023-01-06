package vjezbanje;

import javax.swing.JOptionPane;

public class ZZ04 {

	// Keirati program koji unosi dvije matrice
	// 4x4 te ispisuje njihov zbroj

	public static void main(String[] args) {

		int a[][] = new int[4][4];
		int b[][] = new int[4][4];
		int zbroj[][] = new int[4][4];

		for (int c = 0; c < a.length; c++) {
			for (int d = 0; d < a.length; d++) {
				a[c][d] = Integer.parseInt(JOptionPane.showInputDialog("Unesi brojeve prve matrice"));
				System.out.printf("%3d", a[c][d]);
			}

		}
		System.out.println();
		for (int c = 0; c < b.length; c++) {
			for (int d = 0; d < b.length; d++) {
				b[c][d] = Integer.parseInt(JOptionPane.showInputDialog("Unesi brojeve druge matrice"));
				System.out.printf("%3d", b[c][d]);
			}
		}
		System.out.println();
		for (int c = 0; c < zbroj.length; c++) {
			for (int d = 0; d < zbroj.length; d++) {
				zbroj[c][d] = a[c][d] + b[c][d];
				System.out.printf("%3d", zbroj[c][d]);
			}
		}
	}
}
