package pt.iscte.poo.instalacao.aparelhos;

public class Torradeira extends AparelhoPotenciaFixa{
	
	//ATTRIBUTES
	private String name;
	private int power;
	
	//CONSTRUCTOR
	public Torradeira(String name, int id) {
		super(name, id);
	}
	
	//GETTERS AND SETTERS
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	
	//TOSTRING


	/** */
	public void liga() {
		// TODO Auto-generated method stub
		
	}

	public void desliga() {
		// TODO Auto-generated method stub
		
	}
	
	

}