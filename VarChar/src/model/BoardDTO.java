package model;

public class BoardDTO {
	private int board_id;
	private String board_title;
	private String member_id;
	private String board_content;
	private String board_date;
	private String filename;

	public BoardDTO(int board_id, String board_title, String member_id, String board_content, String board_date, String filename) {
		super();
		this.board_id = board_id;
		this.board_title = board_title;
		this.member_id = member_id;
		this.board_content = board_content;
		this.board_date = board_date;
		this.filename = filename;
	}
	
	public BoardDTO(String board_title, String member_id, String board_content, String filename) {
		super();
		this.board_title = board_title;
		this.member_id = member_id;
		this.board_content = board_content;
		this.filename = filename;
	}

	public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_date() {
		return board_date;
	}
	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
}