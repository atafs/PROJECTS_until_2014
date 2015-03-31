package pt.progJava.americoLib.control116;


//import pt.progJava.americoLib.control98.view.MouseLISTENER;

public class Start_SWING_createGRID_03_usingJComponent_control116 {

	//MAIN
	public static void main(String[] args) {
		
		SubControl05_GUI gui = new SubControl05_GUI();
		gui.addMouseListener(new SubControl05_MouseListener(gui));
			
		gui.setup(gui); //add properties to the frame
		
	}
}
