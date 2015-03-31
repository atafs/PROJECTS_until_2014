package pt.iscte.poo.instalacao.aparelhos;

public abstract class Aparelho {
	
	//ATTRIBUTES
	private String nome;
	private int id;
	private double potenciaMaxima;
	
	//CONSTRUCTOR
	public Aparelho(String nome, int id, double potenciaMaxima) {
		this.nome = nome;
		this.id = id;
		this.potenciaMaxima = potenciaMaxima;
	}
	
	public Aparelho(String nome, int id) {
		this.nome = nome;
		this.id = id;
	}
	
	//GETTERS AND SETTERS
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getPotenciaMaxima() {
		return potenciaMaxima;
	}
	public void setPotenciaMaxima(double potenciaMaxima) {
		this.potenciaMaxima = potenciaMaxima;
	}
	
	/** */
	public boolean estaLigado() {
		return false;
	}
	

	

}
