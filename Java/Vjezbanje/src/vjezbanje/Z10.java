package vjezbanje;

import javax.swing.JOptionPane;

public class Z10 {

	// Za upisana 3 cijela broja
	// program ispisuje najveći

	public static void main(String[] args) {

		int i = Integer.parseInt(JOptionPane.showInputDialog("Unesi prvi broj"));
		int j = Integer.parseInt(JOptionPane.showInputDialog("Unesi drugi broj"));
		int k = Integer.parseInt(JOptionPane.showInputDialog("Unesi treci broj"));

		if (k > i && k > j) {
			System.out.println(k);
		} else if (i > k && i > j) {
			System.out.println(i);
		} else if (j > k && j > i) {
			System.out.println(j);
		}

	}

}
