package model;

public class OrderDTO {
	private int order_id; // 구매내역 id
	private String member_id; // 사용자 id
	private int product_id; // 제품 id
	private int order_quantity; // 구매수량
	private String order_date; // 구매일자
	
	public OrderDTO(int order_id, String member_id, int product_id, int order_quantity, String order_date) {
		super();
		this.order_id = order_id;
		this.member_id = member_id;
		this.product_id = product_id;
		this.order_quantity = order_quantity;
		this.order_date = order_date;
	}
	
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getOrder_quantity() {
		return order_quantity;
	}
	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
}