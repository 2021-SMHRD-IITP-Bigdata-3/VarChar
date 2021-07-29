package model;

public class ProinDTO {
	private int proin_id; // 惑前_己盒_ID
	private int product_id; // 惑前_ID
	private int ingredient_id; // 己盒_ID
	
	public ProinDTO(int proin_id, int product_id, int ingredient_id) {
		super();
		this.proin_id = proin_id;
		this.product_id = product_id;
		this.ingredient_id = ingredient_id;
	}
	
	public int getProin_id() {
		return proin_id;
	}
	public void setProin_id(int proin_id) {
		this.proin_id = proin_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getIngredient_id() {
		return ingredient_id;
	}
	public void setIngredient_id(int ingredient_id) {
		this.ingredient_id = ingredient_id;
	}
}