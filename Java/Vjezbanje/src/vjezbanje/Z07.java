package vjezbanje;

import javax.swing.JOptionPane;

public class Z07 {

	// Korisnik unosi cijeli broj
	// Program ispisuje da li je
	// paran ili nije

	public static void main(String[] args) {

		int i = Integer.parseInt(JOptionPane.showInputDialog("Unesi broj"));
		// ako je ostatak nakon cjelobrojnog dijeljenja 0 onda je parni broj
		if (i % 2 == 0) {
			System.out.println("Paran broj");
		} else {
			System.out.println("Neparan broj");
		}

	}

}
