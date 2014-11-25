
package pt.progJava.americoLib.control32;

import java.util.Scanner;

class Processor extends Thread{
	
	//key word_ VOLATILE
	private volatile boolean running = true;

	//
	public void run() {
		
		while(running){
		
			System.out.println("Hello ");
		
			try {
				Thread.sleep(100);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	//
	public void shutdown() {
		running = false;
	}
}

public class Start_PCD_control31_THREAD_02 {
	
	//
	public static void main(String[] args) {
		
		Processor proc1 = new Processor();
		proc1.start();
		
		System.out.println("Press RETURN to STOP the treads from running...");
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		scanner.nextLine();
		
		System.out.println("Return Key has been pressed... closing");
		proc1.shutdown();
		
	}

}

