package zcrazy8game;

import aguiaj.cards.*;
import aguiaj.cards.utils.*;

public class StaticFunctions  {
	
	// construir o baralho:
	public static Card[] construirBaralho ()  {
		
		Rank[] valor = Rank.values();
		Suit[] naipe = Suit.values();
		
		Card[] cartas = new Card[valor.length * naipe.length];
		
		// inicializar o Array de cartas:
		for (int i=0; i < valor.length; i++) {
			for (int j=0; j < naipe.length; j++) {
				cartas[i*naipe.length + j] = Card.valueOf(valor[i], naipe[j]);
			}
		}
		return cartas; 
	}
	
	public static void baralharCartas (Card[] cartas) {
		
		// shufle (swap):
		for (int i=0; i < cartas.length; i++)  {
			
			Card[] temp = new Card[1];  
			int index = (int)(Math.random() * cartas.length);
					
			temp[0] = cartas[i];
			cartas[i] = cartas[index];
			cartas[index] = temp[0];
		}	
	}
	
	public static CardHand[] distribuirCartas (Card[] baralho, int nJogadores, int nCartas) {
		
		//inicializar uma array CardHand[]... que vai receber todas as maoDeCartas:
		// sendo o mais 1 para guardar as restantes cartas não usadas:
		CardHand[] maoDeCartas = new CardHand[nJogadores];
		
		//inicializar cada uma das CardHand[] criadas consoante o nJogadores:
		for (int k=0; k < maoDeCartas.length; k++) {
			maoDeCartas[k] = new CardHand();
		}
		
		int contaCartas = 1, contaJogador = 0;
		for (int i=0; i < baralho.length; i++) {
			
			//terminar de colocar cartas nas CardHand()
			if (i == nCartas*nJogadores )
				return maoDeCartas;
				
			// esta condição é referente às maoDeCartas para cada Jogador:
			if ( (contaCartas * nJogadores) == i  ) {
				contaJogador = 0;
				contaCartas++;	
			}
			maoDeCartas[contaJogador].add(baralho[i]);
			contaJogador++;	
		}
		return maoDeCartas;
	}		

	
}
