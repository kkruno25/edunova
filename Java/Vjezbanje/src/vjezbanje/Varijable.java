package vjezbanje;

public class Varijable {

	// Deklarirajte varijable različitih
	// primitivnih tipova podataka
	// dodjelite im vrijednosti
	// te ispišite te vrijednosti

	public static void main(String[] args) {
		// logički
		boolean a = Boolean.parseBoolean("False");
		System.out.println(a);

		// cijeli brojevi
		System.out.println(Byte.MAX_VALUE);
		byte b = Byte.parseByte("123");
		System.out.println(b);

		System.out.println(Short.MAX_VALUE);
		short c = Short.parseShort("32700");
		System.out.println(c);

		System.out.println(Integer.MAX_VALUE);
		int d = Integer.parseInt("2000000000");
		System.out.println(d);

		System.out.println(Long.MAX_VALUE);
		long e = Long.parseLong("123456789");
		System.out.println(e);

		// decimalni brojevi
		System.out.println(Float.MAX_VALUE);
		float f = Float.parseFloat("1.23456789f");
		System.out.println(f);

		System.out.println(Double.MAX_VALUE);
		double g = Double.parseDouble("1.78888888888E8");
		System.out.println(g);

		// znakovni tip
		char h = Character.valueOf('C');
		System.out.println(h);

	}

}
