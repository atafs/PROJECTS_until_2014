package pt.progJava.americoLib.control101;

import java.awt.Color;
import javax.swing.JFrame;

@SuppressWarnings("serial")
public class Start_SWING_JComponent05_control101 extends JFrame{

	//CONSTRUCTOR
	public Start_SWING_JComponent05_control101() {
		super();
	}
	
	//MAIN
	public static void main(String[] args) {
		
		BallJumping ball = new BallJumping();
		JFrame frame = new JFrame();
		frame.add(ball);
		
		//BASIC GUI
		frame.setBackground(Color.CYAN);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setSize(600,400);
		frame.setVisible(true);
		
	
	}
	
	

}
