package pt.iscte.poo.instalacao.teste;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

import pt.iscte.poo.instalacao.Instalacao;
import pt.iscte.poo.instalacao.aparelhos.Lampada;

public class TesteTomada {
	
	@BeforeClass
	public static void prepapracaoInicial() {
	}

	@Before
	public void prepapracaoDeTeste() {
		Instalacao.getInstanciaUnica().novaLinha("cozinha", 2); // cozinha, 2 tomadas
		Instalacao.getInstanciaUnica().novaLinha("sala", 2); // sala, 2 tomadas
		Instalacao.getInstanciaUnica().novaLinha("quartos", 2); // quartos, 2 tomadas				
	}
	
	@Test
	public void testeInstalacaoLinhas() {
		assertNotNull(Instalacao.getInstanciaUnica().getTomadaLivre("cozinha"));
		assertNotNull(Instalacao.getInstanciaUnica().getTomadaLivre("sala"));
		assertNotNull(Instalacao.getInstanciaUnica().getTomadaLivre("quartos"));				
	}

	@Test
	public void testeInstalacao2Tomadas() {
		assertNotNull(Instalacao.getInstanciaUnica().getTomadaLivre("cozinha"));
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("cozinha", new Lampada("lampada1", 50));
		assertNotNull(Instalacao.getInstanciaUnica().getTomadaLivre("cozinha"));
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("cozinha", new Lampada("lampada2", 50));
		assertNull(Instalacao.getInstanciaUnica().getTomadaLivre("cozinha"));
	}

	@Test
	public void testeInstalacaoLampada() {
		Lampada lampada = new Lampada("lampada3", 50);
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("sala", lampada);
		assertSame(lampada, Instalacao.getInstanciaUnica().getAparelho("lampada3"));		
	}

	@Test
	public void testeLampadaLigada() {
		Lampada lampada = new Lampada("lampada4", 50);		
		Instalacao.getInstanciaUnica().ligaAparelhoATomadaLivre("quartos", lampada);
		lampada.liga();
		assertTrue(Instalacao.getInstanciaUnica().getAparelho("lampada4").estaLigado());		
	}

	
}
