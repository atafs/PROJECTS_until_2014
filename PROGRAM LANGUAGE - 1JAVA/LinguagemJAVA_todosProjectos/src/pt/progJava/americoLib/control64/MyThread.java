package pt.progJava.americoLib.control64;

public class MyThread extends Thread{

	@SuppressWarnings("unused")
	private static final int NUM = 10000000;
	@SuppressWarnings("unused")
	private Consumidor c;

	public MyThread(Consumidor c) {
		super();
		this.c = c;
	}
	
	@Override
	public void run() {
		//... em desenvolvimento ...
	}
}
