package pt.progJava.americoLib.control31.demo1;

class Runner2 implements Runnable {

	@Override
	public void run() {
		for (int i = 0; i < 10; i++) {
			System.out.println("Hello " + i);
			
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
}


public class Start_PCD_control31_RUNNABLE {

	public static void main(String[] args) {
		
		Thread t1 = new Thread(new Runner2());
		Thread t2 = new Thread(new Runner2());
		
		t1.start();
		t2.start();
	}
}
