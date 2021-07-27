package model;

public class SkinRecordDTO {
	private String member_id; // 사용자 아이디
	private int skin_id; // 사용자 피부타입_id
	private String test_date; // 진단일자
	
	
	public SkinRecordDTO(String member_id, int skin_id, String test_date) {
		super();
		this.member_id = member_id;
		this.skin_id = skin_id;
		this.test_date = test_date;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getSkin_id() {
		return skin_id;
	}
	public void setSkin_id(int skin_id) {
		this.skin_id = skin_id;
	}
	public String getTest_date() {
		return test_date;
	}
	public void setTest_date(String test_date) {
		this.test_date = test_date;
	}
}