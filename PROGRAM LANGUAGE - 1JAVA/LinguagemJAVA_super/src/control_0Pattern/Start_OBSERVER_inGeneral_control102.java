package control_0Pattern;

import pt.progJava.americoLib.control102.IntegerAdder;
import pt.progJava.americoLib.control102.IntegerDataBag;
import pt.progJava.americoLib.control102.IntegerPrinter;

public class Start_OBSERVER_inGeneral_control102 {

	@SuppressWarnings("unused")
	public static void main(String[] args) {

		Integer i1 = new Integer(1);
		Integer i2 = new Integer(2);
		Integer i3 = new Integer(3);
		Integer i4 = new Integer(4);
		Integer i5 = new Integer(5);
		Integer i6 = new Integer(6);
		Integer i7 = new Integer(7);
		Integer i8 = new Integer(8);
		Integer i9 = new Integer(9);
		
		IntegerDataBag bag = new IntegerDataBag();
		bag.add(i1);
		bag.add(i2);
		bag.add(i3);
		bag.add(i4);
		bag.add(i5);
		bag.add(i6);
		bag.add(i7);
		bag.add(i8);
		bag.add(i9);
		
		IntegerAdder adder = new IntegerAdder(bag);
		IntegerPrinter printer = new IntegerPrinter(bag);
		
		System.out.println("About to add another integer to the bag: ");
		bag.add(i9);
		System.out.println("");
		System.out.println("About to remove an Integer from the bag: ");
		bag.remove(0); 

	}

}
