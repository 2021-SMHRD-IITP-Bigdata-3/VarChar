package model;

public class SkinRecordDTO {
	private String member_id; // ����� ���̵�
	private int skin_id; // ����� �Ǻ�Ÿ��_id
	private String test_date; // ��������
	
	
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