package pt.progJava.americoLib.control64;

public class Start_CONSUMER_PRODUCER_NOTsynchronized_control64 {

	public static void main(String[] args) {

		//criar uma ponte: partilhada pelo produtor e consumidor
		Ponte ponte = new PonteNaoSynchronized();
		
		//criar Threads
		new Thread(new Produtor(ponte)).start();//produz
		new Thread(new Consumidor(ponte)).start();//consome
		
	}
}


