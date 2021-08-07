package model;

public class ProductDTO {
	private int product_id; // 상품번호
	private String product_name; // 상품명
	private int product_price; // 가격
	private String product_manu; // 회사명
	private int product_grade; // 별점
	private String product_category; // 카테고리
	
	public ProductDTO(int product_id, String product_name, int product_price, String product_manu, int product_grade, String product_category) {
		super();
		this.product_id = product_id;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_manu = product_manu;
		this.product_grade = product_grade;
		this.product_category = product_category;
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
	public String getProduct_manu() {
		return product_manu;
	}
	public void setProduct_manu(String product_manu) {
		this.product_manu = product_manu;
	}
	public int getProduct_grade() {
		return product_grade;
	}
	public void setProduct_grade(int product_grade) {
		this.product_grade = product_grade;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}
}