package pt.progJava.americoLib.control17;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JSeparator;
import javax.swing.JTextArea;
import javax.swing.JTextField;

@SuppressWarnings("serial")
public class Start_PCD_FormReclamacao extends JFrame {

	private JTextField nome;
	private JTextField fone;
	private JTextField email;
	private JButton cancelar;
	private JButton enviar;

	public static void main(String[] args) {

		Start_PCD_FormReclamacao cp = new Start_PCD_FormReclamacao();
		cp.setVisible(true);

	}

	public Start_PCD_FormReclamacao() {

		this.setBounds(300, 300, 600, 600);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.getContentPane().setLayout(null);

		JLabel lblNome = new JLabel("Nome");
		lblNome.setBounds(30, 26, 41, 15);
		this.getContentPane().add(lblNome);

		nome = new JTextField();
		nome.setBounds(128, 25, 360, 17);
		this.getContentPane().add(nome);
		nome.setColumns(10);

		JLabel lblTelefone = new JLabel("Telefone");
		lblTelefone.setBounds(30, 59, 70, 15);
		this.getContentPane().add(lblTelefone);

		fone = new JTextField();
		fone.setBounds(128, 57, 141, 17);
		this.getContentPane().add(fone);
		fone.setColumns(10);

		JLabel lblEmail = new JLabel("E-mail");
		lblEmail.setBounds(30, 92, 70, 15);
		this.getContentPane().add(lblEmail);

		email = new JTextField();
		email.setBounds(128, 92, 360, 19);
		this.getContentPane().add(email);
		email.setColumns(10);

		JLabel lblReclamao = new JLabel("Reclama��o");
		lblReclamao.setBounds(223, 152, 95, 15);
		this.getContentPane().add(lblReclamao);

		JSeparator separator = new JSeparator();
		separator.setBounds(30, 139, 556, 2);
		this.getContentPane().add(separator);

		JTextArea reclamacao = new JTextArea();
		reclamacao.setBounds(30, 182, 556, 200);
		this.getContentPane().add(reclamacao);

		enviar = new JButton("Enviar");
		enviar.setBounds(407, 417, 117, 25);
		this.getContentPane().add(enviar);

		cancelar = new JButton("Cancelar");
		cancelar.setBounds(73, 417, 117, 25);
		this.getContentPane().add(cancelar);

	}

}
