package model;

public class MemberDTO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_birth;
	private int skin_id;	
	
	public MemberDTO(String member_id, String member_pw, String member_name, String member_birth, int skin_id) {
		super();
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.member_birth = member_birth;
		this.skin_id = skin_id;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_birth() {
		return member_birth;
	}
	public void setMember_birth(String member_birth) {
		this.member_birth = member_birth;
	}
	public int getSkin_id() {
		return skin_id;
	}
	public void setSkin_id(int skin_id) {
		this.skin_id = skin_id;
	}
}