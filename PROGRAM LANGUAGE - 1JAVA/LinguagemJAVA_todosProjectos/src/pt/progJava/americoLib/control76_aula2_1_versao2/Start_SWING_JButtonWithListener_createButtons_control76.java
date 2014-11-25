package pt.progJava.americoLib.control76_aula2_1_versao2;

import java.awt.Color;
import java.awt.FlowLayout;
import javax.swing.JButton;
import javax.swing.JFrame;

public class Start_SWING_JButtonWithListener_createButtons_control76 {

	//atributos 
	private JFrame frame = new JFrame();
	private JButton addButton = new JButton("addButton");
	private JButton newButton = new JButton("newButton");;
	private ListenerForButtons listener = new ListenerForButtons(addButton, newButton, this);
	private int count = 0;

	
	//getters and setters
	public JButton getNewButton() {
		return newButton;
	}
	
	//construtor
	public Start_SWING_JButtonWithListener_createButtons_control76() {

		frame.setLayout(new FlowLayout());
		frame.add(addButton);
	
		newButton.addActionListener(listener);
		addButton.addActionListener(listener);
		
	}

	// execute
	public void execute() {

		// instrucoes basicas
		frame.setSize(500, 200);
		frame.setLocation(500, 100);
		frame.setResizable(true);// pode ou nao ser resizable

		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);// poder fechar
		frame.setVisible(true);// visivel
	}

	public void addButton() {
		newButton = new JButton("Button" + count++);
		newButton.setBackground(Color.BLACK);
		newButton.setForeground(Color.GREEN);
		frame.add(newButton);
		
		frame.validate(); 	
		frame.repaint();
		
	}
	
	public void deleteButton(JButton newButton) {
		frame.remove(newButton);
		
		frame.validate(); 	
		frame.repaint();
	}
	
	// main
	public static void main(String[] args) {
		Start_SWING_JButtonWithListener_createButtons_control76 janela = new Start_SWING_JButtonWithListener_createButtons_control76();
		janela.execute();
	}
}


