package pt.iscte.poo.instalacao;

import pt.iscte.poo.instalacao.aparelhos.Aparelho;
import pt.iscte.poo.instalacao.aparelhos.Lampada;
import pt.iscte.poo.instalacao.aparelhos.MicroOndas;
import pt.iscte.poo.instalacao.aparelhos.Torradeira;

public class Instalacao {

	// ATTRIBUTES
	private String tomada;
	private Aparelho aparelho;

	// CONSTRUCTOR
	public Instalacao(String tomada) {
		this.tomada = tomada;
	}

	public Instalacao() {
		super();
	}

	// METHODS
	/** */
	public void novaLinha(String string, int i) {

	}

	/** */
	public void ligaAparelho(String string, Lampada lamp1) {

	}

	/** */
	public static Instalacao getInstanciaUnica() {

		return null;
	}
	
	/** */
	public String getTomadaLivre(String nome) {
		return nome;
	}
	
	/** */
	public double potenciaNaLinha(String name){
		return 0.0;
	}
	
	/** */
	public void ligaAparelhoATomadaLivre(String name, Torradeira torradeira){
		
	}
	public void ligaAparelhoATomadaLivre(String name, MicroOndas microondas){
		
	}
	
	
	/** */
	public void ligaAparelhoATomadaLivre(String name, Lampada lamp){
		
	}

	/** */
	public Aparelho getAparelho(String nome) {
		if (aparelho.equals(nome)) {
			return aparelho;
		}
		return null;
	}



}