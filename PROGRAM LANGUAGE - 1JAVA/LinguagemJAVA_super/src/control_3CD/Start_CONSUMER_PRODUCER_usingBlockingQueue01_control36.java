package control_3CD;

import java.util.Random;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class Start_CONSUMER_PRODUCER_usingBlockingQueue01_control36 {

	private static BlockingQueue<Integer> queue = new ArrayBlockingQueue<Integer>(10);
	
	public static void main(String[] args) throws InterruptedException {
		Thread t1 = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					producer();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		});
		
		Thread t2 = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					consumer();
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		});
		
		//
		t1.start();
		t2.start();
		
		t1.join();
		t2.join();
	}
	
	
	private static void producer() throws InterruptedException {
		Random random = new Random();
		
		while(true) {
			queue.put(random.nextInt(100));
			System.err.print("PRODUCER: Placed value " + queue.element() + ";");
			System.out.print("\n");
		}
	}
	
	private static void consumer() throws InterruptedException {
		Random random = new Random();
		
		while(true) {
			
			Thread.sleep(100);
			
			if(random.nextInt(10) == 0) {
				Integer value = queue.take();
				
				System.out.print("\t\t\t\tCONSUMER: Taken value " + value + "; Queue size is: " + queue.size());
				System.out.print("\n");

			}
		}
	}
	
}
