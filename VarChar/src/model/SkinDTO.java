package model;

public class SkinDTO {
	private int skin_Id;
	private String skin_Type;
	private String skin_Exp;
	
	public SkinDTO(int skin_Id, String skin_Type, String skin_Exp) {
		super();
		this.skin_Id = skin_Id;
		this.skin_Type = skin_Type;
		this.skin_Exp = skin_Exp;
	}
	
	public int getSkin_Id() {
		return skin_Id;
	}
	public void setSkin_Id(int skin_Id) {
		this.skin_Id = skin_Id;
	}
	public String getSkin_Type() {
		return skin_Type;
	}
	public void setSkin_Type(String skin_Type) {
		this.skin_Type = skin_Type;
	}
	public String getSkin_Exp() {
		return skin_Exp;
	}
	public void setSkin_Exp(String skin_Exp) {
		this.skin_Exp = skin_Exp;
	}
}