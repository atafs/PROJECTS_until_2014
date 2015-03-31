package pt.iscte.poo.instalacao.aparelhos;

public class Lampada extends AparelhoPotenciaFixa{

	// CONSTRUCTOR
	/** */
	public Lampada(String nome, int id, double potenciaMaxima) {
		super(nome, id, potenciaMaxima);
	}
	
	public Lampada(String nome, int id) {
		super(nome, id);
	}

	/** */
	public void desliga() {

	}

	//METHODS
	public void liga() {
		
	}

	/** */
	public double potenciaMaxima() {
		return 0;
	}

	public double potenciaAtual() {
		return 0;
	}

	public boolean estaLigado() {
		return false;
	}
	
}
