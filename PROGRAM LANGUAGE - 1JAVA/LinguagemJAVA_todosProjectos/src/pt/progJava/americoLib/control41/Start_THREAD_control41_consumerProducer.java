package pt.progJava.americoLib.control41;

import java.util.LinkedList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Start_THREAD_control41_consumerProducer {
	
	/*attribute*/
	private static Buffer buffer = new Buffer();
	
	/*main*/
	public static void main(String[] args) {
		
		ExecutorService executor = Executors.newFixedThreadPool(2);
		executor.execute(new ProducerTask());
		executor.execute(new ConsumerTask());
		executor.shutdown();
	}
	
	//INNER CLASS
	private static class ProducerTask implements Runnable {

		@Override
		public void run() {
			
			try {
				int i = 1;
				while(true){
					System.out.println("Producer WRITES " + i);
					buffer.write(i++); //adds value to the buffer
					Thread.sleep((int)(Math.random() * 2000));
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}	
	}
	
	//INNER CLASS
	private static class ConsumerTask implements Runnable {

		@Override
		public void run() {
			
			try {
				while(true) {
					System.out.println("\t\t\t\t\tConsumer READS " + buffer.read()); //read value to the buffer
					Thread.sleep((int)(Math.random() * 2000));
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	//INNER CLASS
	private static class Buffer {
		
		/*attributes*/
		private static final int CAPACITY = 1; //buffer size
		private LinkedList<Integer> queue = new LinkedList<Integer>();
		
		private static Lock lock = new ReentrantLock(); //create a lock
		private static Condition notEmpty = lock.newCondition();
		private static Condition notFull = lock.newCondition();
		
		/*methods*/
		public void write(int value){
			
			lock.lock(); //acquire lock
			
			try {
				while(queue.size() == CAPACITY) {
					System.out.println("WAIT for notFULL condition...");
					notFull.await();
				}
				
				queue.offer(value);
				notEmpty.signal();
				
			} catch (InterruptedException ex) {
				ex.printStackTrace();
			} finally {
				lock.unlock(); //release lock
			}
		}
		
		@SuppressWarnings("finally")
		public int read() {
			
			int value = 0;
			lock.lock();
			
			try {
				while(queue.isEmpty()) {
					System.out.println("\t\t\t\t\tWait for notEmpty condition");
					notEmpty.await();
				}
				
				value = queue.remove();
				notFull.signal(); //signal notFull condition
				
			} catch (InterruptedException e) {
				e.printStackTrace();
			} finally {
				lock.unlock(); //release lock
				return value;
			}
		}
	}
	
	
	
	


	
	
	
	

}
