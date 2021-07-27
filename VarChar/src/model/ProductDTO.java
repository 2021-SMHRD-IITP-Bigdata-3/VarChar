package model;

public class ProductDTO {
	private int product_id; // ��ǰ��ȣ
	private String product_name; // ��ǰ��
	private int product_price; // ����
	private int skin_id; // �Ǻ�Ÿ��_id
	private String product_manu; // ȸ���
	private String product_in; // ����
	private int product_grade; // ����
	
	
	public ProductDTO(int product_id, String product_name, int product_price, int skin_id, String product_manu,
			String product_in, int product_grade) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.skin_id = skin_id;
		this.product_manu = product_manu;
		this.product_in = product_in;
		this.product_grade = product_grade;
	}
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getSkin_id() {
		return skin_id;
	}
	public void setSkin_id(int skin_id) {
		this.skin_id = skin_id;
	}
	public String getProduct_manu() {
		return product_manu;
	}
	public void setProduct_manu(String product_manu) {
		this.product_manu = product_manu;
	}
	public String getProduct_in() {
		return product_in;
	}
	public void setProduct_in(String product_in) {
		this.product_in = product_in;
	}
	public int getProduct_grade() {
		return product_grade;
	}
	public void setProduct_grade(int product_grade) {
		this.product_grade = product_grade;
	}
	
	
}