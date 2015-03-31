package pt.iscte.poo.instalacao.teste;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import pt.iscte.poo.instalacao.Instalacao;
import pt.iscte.poo.instalacao.aparelhos.Lampada;
import pt.iscte.poo.instalacao.aparelhos.MicroOndas;
import pt.iscte.poo.instalacao.aparelhos.Torradeira;

public class TesteAparelhos {
	
	private Instalacao instalacao;
	
	@BeforeClass
	public static void prepapracaoInicial() {
	}

	@Before
	public void prepapracaoDeTeste() {
		instalacao = Instalacao.getInstanciaUnica();
		instalacao.novaLinha("cozinha", 10); // cozinha, 10 tomadas
		 
	}
	
	@Test
	public void testeInstalacaoAparelhos() {
		Lampada lamp1 = new Lampada("lampada1", 50);
		lamp1.liga();
		instalacao.ligaAparelhoATomadaLivre("cozinha", lamp1);
		assertEquals(50.0, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		Torradeira torradeira = new Torradeira("torradeira1", 100);
		torradeira.liga();
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("cozinha", torradeira);
		assertEquals(150, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		MicroOndas m = new MicroOndas("micro1", 900);
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("cozinha", m);
		assertEquals(150, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		m.aumenta(500);
		assertEquals(150, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		m.liga();
		assertEquals(650, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		m.aumenta(500); // só 400 efetivo
		assertEquals(1050, instalacao.potenciaNaLinha("cozinha"), 0.0000001);
		
	}


	
}
