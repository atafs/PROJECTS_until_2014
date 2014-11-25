package pt.progJava.americoLib.control12;

import pt.progJava.americoLib.control12.GerenteGeral;
import pt.progJava.americoLib.control12.GerenteVendas;
import pt.progJava.americoLib.control12.Rh;
import pt.progJava.americoLib.control12.Vendedor;

public class Start_OO_12Polimorfismo {

	public static void main(String[] args) {

		/*instantiate*/
		GerenteGeral gg = new GerenteGeral();
		gg.setSalario(3000);
		
		GerenteVendas gv = new GerenteVendas();
		gv.setSalario(2400);
		
		Rh rh = new Rh();
		
		Vendedor v = new Vendedor();
		v.setVenda(5000.00);
		
		/*print*/
		rh.calculaPagamento(gg);
		rh.calculaPagamento(gv);
		rh.calculaPagamento(v);
	}

}
