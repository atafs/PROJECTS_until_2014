package pt.iscte.poo.main;

import pt.iscte.poo.instalacao.Instalacao;
import pt.iscte.poo.instalacao.Relogio;
import pt.iscte.poo.instalacao.aparelhos.Lampada;
import pt.iscte.poo.instalacao.aparelhos.MicroOndas;
import pt.iscte.poo.instalacao.aparelhos.Torradeira;

public class MainIntecalar {
	
	private static final int END_T = 1000;

	public static void main(String[] args) {
		Instalacao casa = Instalacao.getInstanciaUnica();
		casa.novaLinha("cozinha", 10); // Linha cozinha, 10 tomadas
		casa.novaLinha("quartos", 4); // Linha quartos, 4 tomadas
		casa.novaLinha("sala", 6); // Linha sala, 6 tomadas
		
		Lampada lamp1 = new Lampada("lamp1", 20); // Lâmpada simples, 20W
		casa.ligaAparelhoATomadaLivre("cozinha", lamp1); // Liga aparelho a uma tomada livre na linha "cozinha"
		
		System.out.println(casa); // Imprime estado da casa (tempo + consumo por linha)
		
		int t = 0;
		for (; t != END_T / 4; t++) {
			Relogio.getInstanciaUnica().tique(); // Avança uma unidade de tempo	
		}

		lamp1.liga(); // Acende a lâmpada
		System.out.println(casa);
		
		for (; t != END_T / 2; t++) {
			Relogio.getInstanciaUnica().tique();
		}

		Torradeira torradeira = new Torradeira("torradeira1", 500); // Cria torradeira
		casa.ligaAparelhoATomadaLivre("cozinha", torradeira); // Liga a tomada livre
		torradeira.liga(); // Liga a torradeira (On)
		
		Lampada lamp2 = new Lampada("lamp2", 30);
		casa.ligaAparelhoATomadaLivre("cozinha", lamp2);
		lamp2.liga();
		
		Lampada lamp3 = new Lampada("lamp1", 40);
		casa.ligaAparelhoATomadaLivre("quartos", lamp3);
		lamp3.liga();
		
		System.out.println(casa);
		
		for (; t != 3 * END_T / 4; t++) {
			Relogio.getInstanciaUnica().tique();
		}

		torradeira.desliga();
		
		MicroOndas microOndas = new MicroOndas("microOndas", 900); // Cria micro-ondas
		casa.ligaAparelhoATomadaLivre("cozinha", microOndas);
		microOndas.aumenta(500); // Regula a potência a que vai cozinhar
		
		lamp2.desliga(); // desliga lâmpada
		System.out.println(casa);
		
		for (; t != END_T; t++) {
			Relogio.getInstanciaUnica().tique();
		}
		
		microOndas.liga(); // Liga micro-ondas
		System.out.println(casa);
	}

}
