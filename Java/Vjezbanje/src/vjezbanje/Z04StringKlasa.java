package vjezbanje;

import javax.swing.JOptionPane;

public class Z04StringKlasa {
	public static void main(String[] args) {

		String ime = "Finale svjetskog nogometnog prvenstva Qatar";
		int i = 2022;
		System.out.println(ime + " " + i);

		String ime1 = JOptionPane.showInputDialog("Unesi ime prvog finalista");
		String ime2 = JOptionPane.showInputDialog("Unesi ime drugog finalista");

		int pobjednik = (int) (Math.random() * 100);

		System.out.println(pobjednik + "%" + " da će " + ime1 + " pobijediti " + ime2);

	}

}
