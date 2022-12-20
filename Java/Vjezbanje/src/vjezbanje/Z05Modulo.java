package vjezbanje;

import javax.swing.JOptionPane;

public class Z05Modulo {
	// Za uneseni dvoznamenkasti broj
	// ispišite jediničnu vrijednost
	// unos 21, ispis 1
	// unos 87, ispis 7

	public static void main(String[] args) {

		int i = Integer.parseInt(JOptionPane.showInputDialog("Unesi dvoznamenkasti broj"));

		int r = i % 10;
		System.out.println(r);

	}

}
