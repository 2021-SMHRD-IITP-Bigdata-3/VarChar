package model;

public class IngredientDTO {
	private int ingredient_id; // ����_id
	private String kor_name; // �ѱ۸�
	private String eng_name; // ������
	private String o; // ����
	private String d; // �Ǽ�
	private String s; // �ΰ�
	private String p; // ����
	private String w; // �ָ�
	
	public IngredientDTO(int ingredient_id, String kor_name, String eng_name, String o, String d, String s, String p,
			String w) {
		super();
		this.ingredient_id = ingredient_id;
		this.kor_name = kor_name;
		this.eng_name = eng_name;
		this.o = o;
		this.d = d;
		this.s = s;
		this.p = p;
		this.w = w;
	}
	
	public int getIngredient_id() {
		return ingredient_id;
	}
	public void setIngredient_id(int ingredient_id) {
		this.ingredient_id = ingredient_id;
	}
	public String getKor_name() {
		return kor_name;
	}
	public void setKor_name(String kor_name) {
		this.kor_name = kor_name;
	}
	public String getEng_name() {
		return eng_name;
	}
	public void setEng_name(String eng_name) {
		this.eng_name = eng_name;
	}
	public String getO() {
		return o;
	}
	public void setO(String o) {
		this.o = o;
	}
	public String getD() {
		return d;
	}
	public void setD(String d) {
		this.d = d;
	}
	public String getS() {
		return s;
	}
	public void setS(String s) {
		this.s = s;
	}
	public String getP() {
		return p;
	}
	public void setP(String p) {
		this.p = p;
	}
	public String getW() {
		return w;
	}
	public void setW(String w) {
		this.w = w;
	}
}