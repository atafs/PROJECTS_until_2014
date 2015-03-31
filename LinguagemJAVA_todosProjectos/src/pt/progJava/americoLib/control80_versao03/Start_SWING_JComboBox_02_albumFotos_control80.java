package pt.progJava.americoLib.control80_versao03;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.ImageIcon;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;

@SuppressWarnings("serial")
public class Start_SWING_JComboBox_02_albumFotos_control80 extends JFrame implements ItemListener {

	/* atributos */
	JComboBox<String> combo;
	JLabel label;
	ImageIcon[] imagens = {
			/* recupera a class e atraves dela, recupero um arquivo */
			new ImageIcon(getClass().getResource("image/bebes1.jpg")),
			new ImageIcon(getClass().getResource("image/bebes2.jpg")),
			new ImageIcon(getClass().getResource("image/bebes3.jpg")),
			new ImageIcon(getClass().getResource("image/bebes4.jpg"))
			
	};
	
	/* construtor */
	public Start_SWING_JComboBox_02_albumFotos_control80() {
		super("Album de Fotos");
		
		/* preencher o nosso container */
		Container c = getContentPane();
		
		/* inicializar e atribuir elementos: JComboBox (4 opcoes) */
		combo = new JComboBox<String>();
		combo.setFont(new Font("Serif", Font.PLAIN, 26));
		combo.addItem("Dormir");
		combo.addItem("Comer");
		combo.addItem("Depois do Banho");
		combo.addItem("Plantar");
		
		/* adicionar eventos */
		combo.addItemListener(this);
		
		/* inicializar o JLabel */
		label = new JLabel(imagens[0]);
		
		/* adicionar ao Container */
		c.add(BorderLayout.NORTH, combo);
		c.add(BorderLayout.CENTER, label);
		
		/* base */
		setSize(600,600);
		setVisible(true);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}
	
	public static void main(String[] args) {
		new Start_SWING_JComboBox_02_albumFotos_control80();
	}

	@Override
	public void itemStateChanged(ItemEvent e) {
		/* pegar o evento */
		if(e.getStateChange() == ItemEvent.SELECTED) {
			label.setIcon(imagens[combo.getSelectedIndex()]);
		}
	}

}
