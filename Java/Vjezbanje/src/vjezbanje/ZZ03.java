package vjezbanje;

import javax.swing.JOptionPane;

public class ZZ03 {

	// Kreirati program koji za dva unesena broja ispisuje
	// sve prim brojeve između njih

	public static void main(String[] args) {

		int početniBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi početni broj"));

		int završniBroj = Integer.parseInt(JOptionPane.showInputDialog("Unesi završni broj"));

		int min = početniBroj < završniBroj ? početniBroj : završniBroj;
		int max = početniBroj > završniBroj ? početniBroj : završniBroj;

		for (int i = min; i < max; i++) {
			int a = 0;
			for (int j = 2; j < i; j++) {
				if (i % j == 0) {
					a++;
				}
			}
			if (a == 0) {
				System.out.println(i);
			}
		}

	}
}
