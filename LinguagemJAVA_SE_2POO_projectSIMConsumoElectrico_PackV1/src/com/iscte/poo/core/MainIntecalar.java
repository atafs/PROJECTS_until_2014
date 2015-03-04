package com.iscte.poo.core;

import com.iscte.poo.instalacao.Instalacao;
import com.iscte.poo.instalacao.Relogio;
import com.iscte.poo.instalacao.aparelhos.Lampada;

/** */
public class MainIntecalar {
	
	//ATTRIBUTES
	private static final int END_T = 1000;

	//MAIN
	public static void main(String[] args) {
		Instalacao casa = new Instalacao();
		casa.novaLinha("cozinha", 4); 
		casa.novaLinha("quartos", 3);
		casa.novaLinha("sala", 3);
		
		Lampada lamp1 = new Lampada("lamp1", 20);
		casa.ligaAparelho("cozinha", lamp1);
		
		System.out.println(casa);
		
		int t = 0;
		for (; t != END_T / 4; t++) {
			Relogio.getInstanciaUnica().tique();			
		}

		lamp1.liga();
		System.out.println(casa);
		
		for (; t != END_T / 2; t++) {
			Relogio.getInstanciaUnica().tique();
		}

		Lampada lamp2 = new Lampada("lamp2", 30);
		casa.ligaAparelho("cozinha", lamp2);
		lamp2.liga();
		
		Lampada lamp3 = new Lampada("lamp1", 40);
		casa.ligaAparelho("quartos", lamp3);
		lamp3.liga();
		
		System.out.println(casa);
		
		for (; t != 3 * END_T / 4; t++) {
			Relogio.getInstanciaUnica().tique();
		}
		
		lamp2.desliga();
		System.out.println(casa);
		
		for (; t != END_T; t++) {
			Relogio.getInstanciaUnica().tique();
		}
		System.out.println(casa);
	}

}
