package zcrazy8game;

import zcrazy8game.Jogador;
import zcrazy8game.Jogo;
import aguiaj.cards.*;
import aguiaj.cards.utils.*;

public class Jogador {
	
	//atributos:
	private Jogo jogo;
	private CardHand mao;
	private int playerIndex;

//1)******************************************************************************************************************************************

	//construtor:
	public Jogador (Jogo jogo, CardHand cartas) {
		mao = cartas;
		this.jogo = jogo;
	}
	
	//função toString: é uma espécie de printf mas no próprio objecto;
	public String toString () {
		if (isEmptyCardHand() ) return new String ("Parabéns!! Temos um Jogador Vencedor e Ganhou uma Viagem às Caraíbas!!");
		if (jogo.isTopCardEight() ) return new String ("Modifique a escolha do novo naipe de jogo, se necessário (gerado automaticamente).");
		if (playerIndex == jogo.getNextPlayer()) return new String ("AGORA É A SUA VEZ DE JOGAR!!");
		return "Jogo de Cartas oitoMaluco";
	}
	//função auxiliar (verificar quem venceu o jogo):
	private boolean isEmptyCardHand () {
		return (mao.getSize() == 0 );
	}
	
//2)******************************************************************************************************************************************

	//métodos: funções inspectoras
	public Jogo getJogo () {
		return jogo;
	}
	
	public CardHand getMao() {
		return this.mao;
	}
	
	public int getPlayerIndex () {
		return playerIndex;
	}
	
	private void addPlayerIndex (int i) {
		playerIndex = i;
	}

	public Rank getRankToPlay () {
		return jogo.getRankToPlay();
	}
	
	public Suit getSuitToPlay () {
		return jogo.getSuitToPlay();
	}
	
//3)******************************************************************************************************************************************
	
	//buscar uma carta do monteDeBisca (para assistir);
	public void aBiscarCarta() {
		mao.add(jogo.bisca());
	}

	private void biscarVariasCartas(int n) {
		for (int i=0; i < n; i++)
			mao.add(jogo.bisca());
	}
	//jogar uma carta no monteDeColocacao (assistir);
	private void play (int cardIndex) {
		jogo.putInMonte (mao.get(cardIndex));
		mao.remove(cardIndex);
		jogo.updateNextPlayer();
	}	
	
	//minha jogada com as respectivas consequência da escolha feita:
	public void aMyPlay (int i) {
		
		//verifica se é a vez do jogador correcto Jogar:
		if (! jogo.isPlayerTurnToPlay(playerIndex) ) throw new IllegalStateException(" Não é a sua vez de Jogar. Mas sim do Jogador " + jogo.getNextPlayer() );
		//pôr as cartas direitas:
		aFlipBackCards();
		play(i);
		
		//se sair um Valete, salta um jogador sem consequências adicionais:
		if (jogo.isTopCardJack() ) jogo.updateNextPlayer();

		//se tiver jogador o  Dois:
		if (jogo.isTopCardDeuce()) {
			//bisca Cartas:
			jogo.cardsToPickIfDeuce();
			//impedir o nextPlayer de jogar:
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
			
		}
		//se tiver jogado a Rainha de Espadas:
		if (jogo.isTopQueenSpades()) {
			//bisca Cartas:
			jogo.cardsToPickIfQueenSpades();
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
		}	

		
	}	

//3)******************************************************************************************************************************************
		
	//jogada automática do jogador máquina iniciante:
	public void automaticBeginnerPlay () {
		
	
		if (! jogo.isPlayerTurnToPlay(playerIndex) ) throw new IllegalStateException(" Não é a sua vez de Jogar. Mas sim do Jogador " + jogo.getNextPlayer() );
		
		playUsingValidCardBeginner();
		
		//escolher um novo naipe caso tenha saído um Oito;	
		if (jogo.isTopCardEight() ) jogo.chooseNewSuitAutomatic();
		
		//se sair um Valete, salta um jogador sem consequências adicionais:
		if (jogo.isTopCardJack() ) jogo.updateNextPlayer();
		
		//biscar cartas caso a topCard seja DEUCE ou QUEEN of SPADES:
		//se tiver jogador o  Dois:
		if (jogo.isTopCardDeuce()) {
			//bisca Cartas:
			jogo.cardsToPickIfDeuce();
			//impedir o nextPlayer de jogar:
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
			
		}
		//se tiver jogado a Rainha de Espdas:
		if (jogo.isTopQueenSpades()) {
			//bisca Cartas:
			jogo.cardsToPickIfQueenSpades();
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
		}

	}
	
	private void playUsingValidCardBeginner () {
		
		//É um jogador muito distraído e não conhece as regras do jogo: 
		
		//1º Bisca cartas sem perceber que já tinha na mão cartas para assistir (Math.random());
		//2º Assiste ao naipe primeiro, mas pensa que a Dama vale pontos, por isso só joga a Dama como último recurso;
		//3º Assiste ao Rank a seguir, mas percebeu mal as regras e pensa que o Dois e o Oito são cartas especiais mas por valerem mais pontos que
		//   as restantes, por isso evita jogar estas cartas (por ordem: Dois e Oito). Ou seja, primeiro assiste em relação a Rank, mas só joga o 
		//	 Dois e Oito respectivamente, se não tiver alternativa. Este jogador é muito Mau :-)
		
		//bisca várias cartas por engano. É um jogador muito distraído;
		int index = (int)(Math.random() * 3);
		int beginner = (int)(Math.random() * 7);
		if ( index % 3 == 0 ) biscarVariasCartas(beginner);
		
		//percorrer a minha maoDeCartas à procura do Naipe:
		for (int j=0; j < mao.getSize(); j++) {	
			//1º.Verificar se a carta é do naipe que está no monteDeColocação e não é Rainha. 
			//(este jogador só joga a Rainha em último caso. Não percebe muito bem as regras do jogo):
			if (isSuitInCardHand(j) && ! isQueenInCardHand(j) ) {
				play(j);
				return;
			}
		}
		for (int k=0; k < mao.getSize(); k++) {		
			if (isSuitInCardHand(k) ) {
				play(k);
				return;
			}
		}
		for (int i=0; i < mao.getSize(); i++) {	
			//2º verificar se a carta é do valor que está no monteDeColocação e não é Dois nem Oito:
			if (isRankInCardHand(i) && ! isDeuceInCardHand(i) && ! isEightInCardHand(i) ) {
				play(i);
				return;
			}
		}
		for (int n=0; n < mao.getSize(); n++) {		
			//3º verificar se a carta é do valor que está no monteDeColocação e não é Oito:
			if (isRankInCardHand(n) && ! isEightInCardHand(n) ) {
				play(n);
				return;
			}
		}
			//4º verificar se a carta é do valor que está no monteDeColocação:
		for (int s=0; s < mao.getSize(); s++) {	
			if (isEightInCardHand(s) ) {
				play(s);
				return;
			}
		}
		// 5º bisco carta para assistir e verifico se a carta que saíu é válida para jogar:
		while ( ! isLastCardPickedValidToPlay ()) {
			aBiscarCarta();	
		}
		if ( isLastCardPickedValidToPlay() ) play(mao.getSize()-1);
				

	}
	
	//jogada automática do jogador máquina avançada:
	public void automaticExpertPlay () {
		

		if (! jogo.isPlayerTurnToPlay(playerIndex) ) throw new IllegalStateException(" Não é a sua vez de Jogar. Mas sim do Jogador " + jogo.getNextPlayer() );
		playUsingValidCardExpert();	
		
		//escolher um novo naipe caso tenha saído um Oito;	
		if (jogo.isTopCardEight() ) jogo.chooseNewSuitAutomatic();
		
		//se sair um Valete, salta um jogador sem consequências adicionais:
		if (jogo.isTopCardJack() ) jogo.updateNextPlayer();

		//biscar cartas caso a topCard seja DEUCE ou QUEEN of SPADES:
		//se tiver jogador o  Dois:
		if (jogo.isTopCardDeuce()) {
			//bisca Cartas:
			jogo.cardsToPickIfDeuce();
			//impedir o nextPlayer de jogar:
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
			
		}
		//se tiver jogado a Rainha de Espadas:
		if (jogo.isTopQueenSpades()) {
			//bisca Cartas:
			jogo.cardsToPickIfQueenSpades();
			jogo.biscaBecauseTopCardDeuceOrQueenSpades();
			jogo.updateNextPlayer();
		}

	}
	
	private void playUsingValidCardExpert () {
		
		//estatégia mais agressiva: 
		
		//1º carrega as mãos dos adversários com cartas (por ordem: Dama de Espadas, Dois, As);
		//2º Dificulta o jogo dos adversários mudando direcção e saltando a ordem de jogo (por ordem: Valete, Rei);
		//3º Muda o naipe de jogo: Oito (como última opção);
		
		for (int j=0; j < mao.getSize(); j++) {	
			//1º. joga a Rainha de Espadas se tiver:
			if ( isQueenSpadesInCardHand(j) &&  isPlayValid(j) ) {
				play(j);
				return;
			}
		}
		for (int n=0; n < mao.getSize(); n++) {		
			//2º joga o dois se tiver:
			if ( isDeuceInCardHand(n) && isPlayValid(n) ) {
				play(n);
				return;
			}
		}
		for (int i=0; i < mao.getSize(); i++) {	
			//3º joga o As se tiver:
			if ( isAceInCardHand(i) && isPlayValid(i) ) {
				play(i);
				return;
			}
		}
		//o jogador seguinte não joga:
		for (int i=0; i < mao.getSize(); i++) {	
			//4º joga o Valete se tiver:
			if ( isJackInCardHand(i) && isPlayValid(i) ) {
				play(i);
				return;
			}
		}
		//destabilizar a ordem de jogo:
		for (int n=0; n < mao.getSize(); n++) {		
			//5º joga o Rei se tiver:
			if ( isKingInCardHand(n) && isPlayValid(n) ) {
				play(n);
				return;
			}
		}
		//qualquer rank que tenha excepto o oito:
		for (int s=0; s < mao.getSize(); s++) {	
			if ( isRankInCardHandAndNotEight (s) ) {
				play(s);
				return;
			}
		}
		//qualquer naipe que tenha excepto o oito:
		for (int k=0; k < mao.getSize(); k++) {		
			if ( isSuitInCardHandAndNotEight(k) ) {
				play(k);
				return;
			}
		}
		//jogar o 8 só mesmo como última carta, pois vale como trunfo, útil para jogar como última carta (poder jogar a qualquer momento)
		for (int i=0; i < mao.getSize(); i++) {	
			//6º joga o Oito se tiver:
			if ( isEightInCardHand(i) ) {
				play(i);
				return;
			}
		}
		// 5º bisco carta para assistir e verifico se a carta que saíu é válida para jogar:
		while ( ! isLastCardPickedValidToPlay ()) {
			aBiscarCarta();	
		}
		if ( isLastCardPickedValidToPlay() ) play(mao.getSize()-1);	
	}
	
	
	//funções auxiliares;
	private boolean isSuitInCardHand (int i) {
		return (mao.get(i).suit == jogo.getSuitToPlay());
	}
	private boolean isRankInCardHand (int i) {
		return (mao.get(i).rank == jogo.getRankToPlay());
	}
	private boolean isSuitInCardHandAndNotEight (int i) {
		return (mao.get(i).suit == jogo.getSuitToPlay() && mao.get(i).rank != Rank.EIGHT);
	}
	private boolean isRankInCardHandAndNotEight (int i) {
		return (mao.get(i).rank == jogo.getRankToPlay() && mao.get(i).rank != Rank.EIGHT);
	}
	private boolean isPlayValid (int i) {
		return (mao.get(i).rank == jogo.getRankToPlay() || mao.get(i).suit == jogo.getSuitToPlay() );
	}
	//saber se a Rainha de Espadas está na minha CardHand e é válida para jogar;
	private boolean isQueenSpadesInCardHand (int i) {
		return ((mao.get(i).rank == Rank.QUEEN && mao.get(i).suit == Suit.SPADES));
	}
	private boolean isDeuceInCardHand (int i) {
		return (mao.get(i).rank == Rank.DEUCE);
	}
	//saber se a Rainha está na minha CardHand e é válida para jogar;
	private boolean isQueenInCardHand (int i) {
		return ((mao.get(i).rank == Rank.QUEEN ));
	}
	private boolean isKingInCardHand (int i) {
		return ((mao.get(i).rank == Rank.KING ));
	}
	private boolean isAceInCardHand (int i) {
		return ((mao.get(i).rank == Rank.ACE ));
	}
	private boolean isJackInCardHand (int i) {
		return ((mao.get(i).rank == Rank.JACK ));
	}
	private boolean isEightInCardHand (int i) {
		return (mao.get(i).rank == Rank.EIGHT);
	}
	private boolean isLastCardPickedValidToPlay () {
		return ( isSuitInCardHand (mao.getSize() - 1) || isRankInCardHand (mao.getSize() - 1) || isEightInCardHand(mao.getSize() -1)); 
	}
	public void aFlipBackCards () {
		//para corrigir um bug que dá quando jogo sem virar as cartas de volta:
		for (int j=0; j < mao.getSize(); j++)
			if (mao.isFlipped(j)) mao.flip(j);
	}
	

	
//******************************************************************************************************************************************

				
	//ajudar na pré-selecção das minhas próprias cartas a jogar:
	public void aShowValidCardsToPlay () {
			
		if (! jogo.isPlayerTurnToPlay(playerIndex) ) throw new IllegalStateException(" Não é a sua vez de Jogar. Use esta aplicação na sua vez de Jogo!" );
		for (int j=0; j < mao.getSize(); j++)
			if ( ! isAnyCardInCardHandValidToPlay (j)) jogo.getJogador(jogo.getNextPlayer()).mao.flip(j);
	}
		
	private boolean isAnyCardInCardHandValidToPlay (int i) {
		return ( isSuitInCardHand(i) || isRankInCardHand(i) || isEightInCardHand(i) );
	}
	
	//criar os objectos jogadorMaquina que eu quizer:
	public Jogador machineCardHand (int i) {
		if (i == 0) throw new IllegalStateException ("Esse Jogador já existe! É o Jogador principal. Escolha outro.");
		if (i < 0 || i > jogo.getJogadores().length -1) throw new IllegalStateException ("Este valor é inferior ao mínimo ou ultrapassa o número de " +
			   "jogadores deste Jogo!! Escolha outro.");
				
		jogo.getJogadores()[i].addPlayerIndex(i);
				
		return jogo.getJogadores()[i];
	}
}
	