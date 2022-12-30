package vjezbanje;

import javax.swing.JOptionPane;

public class ZZ01 {

	// Kreirati program koji unosi 24 broja, ispisuje njihov zbroj,
	// najmanji i najveći uneseni broj.

	public static void main(String[] args) {

		int unos[] = new int[24];

		for (int i = 0; i < unos.length; i++) {

			unos[i] = Integer.parseInt(JOptionPane.showInputDialog("Unesi " + (i + 1) + ". broj"));

		}

		int zbroj = 0;
		for (int i = 0; i < unos.length; i++) {
			zbroj += unos[i];

		}
		System.out.println("Zbroj unesenih brojeva je: " + zbroj);

		int najmanji = unos[0];
		int najveci = unos[0];

		for (int i = 0; i < unos.length; i++) {
			if (unos[i] < najmanji) {
				najmanji = unos[i];
			}
			if (unos[i] > najveci) {
				najveci = unos[i];
			}
		}
		System.out.println("Najmanji uneseni broj je: " + najmanji);
		System.out.println("Najveci uneseni broj je: " + najveci);
	}

}
