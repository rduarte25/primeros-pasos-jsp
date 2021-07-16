package rduarte.calculosmatematicos;

public class Calculos {
	
	
	private static int resultado;
	
	public static int metodoSuma (int num_1, int num_2) {
		resultado = num_1 + num_2;
		return resultado;
	}
	
	public static int metodoResta (int num_1, int num_2) {
		resultado = num_1 - num_2;
		return resultado;
	}
	
	public static int metodoMultiplica (int num_1, int num_2) {
		resultado = num_1 * num_2;
		return resultado;
	}
}
