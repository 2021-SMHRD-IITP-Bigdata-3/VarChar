package model;

public class ReviewDTO {
	private int review_id; // ���� ���� ��ȣ(�⺻Ű)
	private int product_id; // ��ǰ ��ȣ
	private String member_id; // ����� ��ȣ
	private String review_content; // ���� ����
	private String review_date; // ���� �ۼ�����
	private int review_grade; // ���� ����
	
	public ReviewDTO(int review_id, int product_id, String member_id, String review_content, String review_date,
			int review_grade) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.member_id = member_id;
		this.review_content = review_content;
		this.review_date = review_date;
		this.review_grade = review_grade;
	}
	
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public int getReview_grade() {
		return review_grade;
	}
	public void setReview_grade(int review_grade) {
		this.review_grade = review_grade;
	}
}