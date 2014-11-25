package pt.progJava.americoLib.control33;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class Worker1 {
	
	//
	private List<Integer> list1 = new ArrayList<Integer>();
	private List<Integer> list2 = new ArrayList<Integer>();

	private Random random = new Random();
	
	//
	public void stageOne() {
		
		try {
			Thread.sleep(1);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		list1.add(random.nextInt(100));
	}
	
	//
	public void stageTwo() {
		
		try {
			Thread.sleep(1);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		list2.add(random.nextInt(100));
	}
	
	public void process() {
		
		for (int i = 0; i < 1000; i++) {
			stageOne();
			stageTwo();
		}
	}
	
	
	public void main() {
		System.out.println("Starting... NoTHREADS");
		
		long start = System.currentTimeMillis();
		
		process();
		
		long end = System.currentTimeMillis();
		
		System.out.println("Time take: " + (end - start) + "; [ms]");
		System.out.println("List1: " + list1.size() + "; list2: " + list2.size() + "\n");
		
	}
}
