package vjezbanje;

import javax.swing.JOptionPane;

public class Z03RezultatDijeljenja {
	// Za unesena dva cijela broja
	// ispišite rezutat djeljenja
	public static void main(String[] args) {
		int prviBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj:"));
		int drugiBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj:"));

		float rezultat = prviBroj / (float) drugiBroj;

		System.out.println(rezultat);
	}

}
