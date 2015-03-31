package zcrazy8game;

import zcrazy8game.Jogador;
import aguiaj.cards.*;
import aguiaj.cards.utils.*;
import aguiaj.cards.utils.CardStack.DisplayMode;
import static zcrazy8game.StaticFunctions.*;

public class Jogo {
	
	//atributos
	private Jogador[] jogadores;
	
	private CardStack monteDeColocacao;
	private CardStack monteDeBisca;
	
	private Suit newSuit;
	private int direction = 2;
	private int nextPlayer;
	private int biscarDeuceQueenAs;
	
	private static final int CARTAS_POR_JOGADOR = 5;  	


//1)******************************************************************************************************************************************
	
	//construtor
	public Jogo (int nJogadores) {
		
		//condição: verificar que a regra do jogadores mínimos e máximos está a ser respeitada;
		if (nJogadores < 2 || nJogadores > 8)
			throw new IllegalStateException ("Valor inválido de Jogadores. Tem de escolher um valor entre 2 e 8 Jogadores!!");
		
		//inicializar o atributo jogadores:
		jogadores = new Jogador[nJogadores];
		
		//métodos estáticos:					// ??? ao fazer o import wprojecto8maluco.StaticFunctions.*; devia conseguir retirar o StaticFunctions escrevendo apenas as funções ???  
		Card[] baralho = construirBaralho();
		baralharCartas (baralho);
		CardHand[] maoDeCartas = distribuirCartas (baralho, nJogadores, CARTAS_POR_JOGADOR);
		
		//atribuo a cada jogador uma maoDeCartas com o respectivo índice:
		for (int i=0; i < nJogadores; i++) 
			jogadores[i] = new Jogador(this, maoDeCartas[i]); 
		
		//inicializar o monteDeBisca com as cartas restantes não utilizadas nas maoDeCartas:
		monteDeBisca = new CardStack(DisplayMode.HIDE_ALL);
		for (int i=(CARTAS_POR_JOGADOR * nJogadores); i < baralho.length; i++) 
			monteDeBisca.put(baralho[i]);
		
		//inicializar o monteDeColocação de cartas colocadas na mesa pelos jogadores:
		monteDeColocacao = new CardStack(DisplayMode.SHOW_ONLY_TOP);
			monteDeColocacao.put(monteDeBisca.pick());
	}

//2)******************************************************************************************************************************************		

	//métodos: funções inspectores
	public Jogador[] getJogadores () {
		return jogadores;
	}
		
	public CardStack getMonteDeColocacao () {
		return monteDeColocacao;
	}
	
	private int monteDeColocacaoGetQuantity() {
		return monteDeColocacao.getQuantity();
	}
	
	//testes do montDeBisca:
	//public CardStack getMonteDeBisca() {
	//	return monteDeBisca;
	//}
	
	public int getNextPlayer () {
		return nextPlayer;
	}

	//conseguir aceder ao jogadores[i] no Objecto Jogador:
	public Jogador getJogador (int i) {
		return jogadores[i];
	}
	
//3)******************************************************************************************************************************************		
				
		
	public Jogador aMyCardHand () {
		return jogadores[0];
	}
	
	//funções auxiliares do play:
	public boolean isPlayerTurnToPlay (int i) {
			return (jogadores[nextPlayer] == jogadores[i]);
	}

	public boolean isTopQueenSpades () {
		return ( (topCard().rank == Rank.QUEEN && topCard().suit == Suit.SPADES));
	}

	public boolean isTopCardQueen () {
		return ( (topCard().rank == Rank.QUEEN ));
	}
	
	public boolean isTopCardDeuce () {
		return ( topCard().rank == Rank.DEUCE );
	}
	
	private boolean isTopCardKing () {
		return (topCard().rank == Rank.KING);
	}
	
	public boolean isTopCardJack () {
		return (topCard().rank == Rank.JACK);
	}
	public boolean isTopCardAs () {
		return (topCard().rank == Rank.ACE);
	}
	
//3)******************************************************************************************************************************************
	
	//2.a Obter o próximo jogador a jogar.
	private void nextPlayerToPlayClockWise () {
		//caso tenha saído um As para o primeiro jogador:
		//caso tenha saído um As para o primeiro jogador:
		if ( nextPlayer == 0) {
			if (isTopCardAs() ) biscaBecauseTopCardAs (jogadores.length -1); 
		}
		
		else if (nextPlayer > 0 && nextPlayer < jogadores.length -1) {
			if (isTopCardAs() ) biscaBecauseTopCardAs (nextPlayer - 1); 
		}
		
		else if ( nextPlayer == jogadores.length -1) {
			//caso tenha saído um As para o último jogador, o jogador anterior biscar uma carta:
			if (isTopCardAs() ) biscaBecauseTopCardAs (nextPlayer - 1); 
			nextPlayer = 0;
			return;
		}
		nextPlayer++;
	}
	private void reverseNextPlayerToPlay () {
		//quando um jogador colocou no monteDeColocacao uma carta;
		//caso tenha saído um As para o ultimo jogador:
		if ( nextPlayer == jogadores.length -1) {
			if (isTopCardAs() ) biscaBecauseTopCardAs (0); 
		}
		
		else if (nextPlayer > 0 && nextPlayer < jogadores.length -1) {
			if (isTopCardAs() ) biscaBecauseTopCardAs (nextPlayer + 1); 
		}
		
		if (nextPlayer == 0) {
			//caso tenha saído um As, o jogador anterior biscar uma carta (na direcção contrária):
			if (isTopCardAs() ) biscaBecauseTopCardAs (nextPlayer + 1); 
			nextPlayer = jogadores.length -1;
			return;
		}
		nextPlayer--;
	}	
		

	//contador exterior ao procedimento para preservar os dados;
	public void updateNextPlayer () {
			
		//quando saí um Rei no Jogo:
		if (isTopCardKing() ) direction++;
			
		//convencionado: ímpar é na direcção inversa do ponteiro dos relógios;
		if (direction % 2 != 0) reverseNextPlayerToPlay();
		// par é na direccção do ponteiro dos relógios:
		else nextPlayerToPlayClockWise();
	}

//******************************************************************************************************************************************	

	//1.a Saber a carta que está no topo do monteDeColocação.
	private Card topCard () {
		return monteDeColocacao.getTopCard();
	}
	
	//5.a Saber se o monte de bisca está vazio.
	public boolean isEmptyStack () {
		return (monteDeBisca.getQuantity() == 0);
	}
	
	//equivalente a estar vazio o monteDeColocação
	public boolean isOnlyOneCardMonteDeColocacao() {
		return (monteDeColocacao.getQuantity() == 1);
	}
	
	
	//3.b Biscar uma carta do monte-de-bisca (caso seja a vez do jogador principal)
	public Card bisca() {
		if ( isEmptyStack() ) {
			suffleMontes();
			return monteDeBisca.pick();
		}
		return monteDeBisca.pick();
	}
			
	//5.2 b 
	public void suffleMontes () {		

		if ( ! isEmptyStack () ) throw new IllegalStateException ("O monte de Biscar ainda tem cartas");
		//evitar que o jogo encrave (por todas as cartas estarem nas maos dos jogadores)
		if (isEmptyStack() && isOnlyOneCardMonteDeColocacao() ) updateNextPlayer();
		
		//guardo a carta do top do monteDeColocacao:
		Card[] topCard = new Card [1];
		topCard[0] = monteDeColocacao.pick();
		
		Card[] temp = new Card[monteDeColocacaoGetQuantity()];
		for (int i = monteDeColocacaoGetQuantity()-1; i >= 0; i--)  
			temp[i] = monteDeColocacao.pick();
			
		baralharCartas(temp);
		for (int j=0; j < temp.length; j++) {  
			monteDeBisca.put(temp[j]);	
		}
		monteDeColocacao.put(topCard[0]);
		
	}
	
	//1.b Colocar no monte-de-colocaçao uma carta à escolha do jogador principal (caso seja a
	//vez do jogador principal;
	public void putInMonte (Card card) {
	
		if (card.suit == getSuitToPlay() || card.suit == newSuit || card.rank == getRankToPlay() || card.rank == Rank.EIGHT)
			monteDeColocacao.put(card);
		else 
			throw new IllegalStateException ("É obrigado a escolher uma carta para assistir ou biscar mais cartas!");
	}
	
	public Rank getRankToPlay () {
		return topCard().rank;
	}
	
	/*3.1 a -  Saber que naipe pode ser jogado: quando tiver sido jogado um 8, pode ser 
	// diferente do naipe da carta no topo do monte-de-colocação. */
	public Suit getSuitToPlay () {
		if (isTopCardEight()) return newSuit;
		else return topCard().suit;
	}
	
	// saber se a carta do top da pilha do monteDeColocação é oito:
	public boolean isTopCardEight () {
		return (topCard().rank == Rank.EIGHT);	
	}

//******************************************************************************************************************************************	
		
	//??? assim funciona ma tem um suit a mais...
	//4.b e apoio a 3.2.a -  Escolher um naipe, caso se tenha acabado de jogar uma carta 8 (uso do jogador principal)
	public void chooseNewSuit (Suit suit) {
			
		if (topCard().rank == Rank.EIGHT) 
				newSuit = suit;
		else
			throw new IllegalStateException("Não saíu nenhum Oito no jogo!!");
	}
		
	public void chooseNewSuitAutomatic () {
		Suit[] suit = Suit.values();
		int index = (int)(Math.random() * suit.length);
		newSuit = suit[index];
	}
		
	//virar as cartas do jogadorMaquina para tornar o jogo mais emocionante:
	public void aFlipCardsOfMachine () {
		for (int i=1; i < jogadores.length; i++)
			for (int j=0; j < jogadores[i].getMao().getSize(); j++)
				if (jogadores[i].getMao().isFlipped(j)) { 
					j++; 
				}
				else 
					jogadores[i].getMao().flip(j);
				
	}
	public void aFlipBackCardsOfMachine () {
		for (int i=1; i < jogadores.length; i++)
			jogadores[i].aFlipBackCards();
	}
	
//******************************************************************************************************************************************	

	//4.a Saber quantas cartas o jogador atual tem de biscar, por ter sido jogado um 2 ou a
	//rainha de espadas. Deve devolver zero em todos os outros casos.
	public void cardsToPickIfQueenSpades () {
		if (isTopQueenSpades()) biscarDeuceQueenAs = 5;
	}

	//calcular se sair um Dois:
	public void cardsToPickIfDeuce () {
		if (isTopCardDeuce()) biscarDeuceQueenAs = 2;
	}

	private int biscarDeuceQueenAs () {
		return biscarDeuceQueenAs;
	}
	
	//2.b Recolher do monte-de-bisca cartas resultantes da jogada anterior, quando tenha sido
	//jogado um 2 ou uma dama de espadas (caso seja a vez do jogador principal)
	public void biscaBecauseTopCardDeuceOrQueenSpades() {
		
		int n = biscarDeuceQueenAs();
		for (int i=0; i < n; i++) 
			jogadores[nextPlayer].getMao().add(bisca());
	}
	
	private void biscaBecauseTopCardAs(int i) {
		//quando faço play(), já estou a fazer o upDate do nextPlayer (espécia nextPlayer++; daí ter de ir dois para trás)
		jogadores[i].getMao().add(bisca());
	}
}
