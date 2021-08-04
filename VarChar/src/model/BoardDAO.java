package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.BoardDTO;

public class BoardDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	BoardDTO dto = null;
	int cnt = 0;
	
	public void conn() {	
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			String url = "jdbc:oracle:thin:@210.223.239.130:1521:xe";
			String id = "hr";
			String pw = "hr";
			
			conn = DriverManager.getConnection(url, id, pw);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if(rs != null) {
				rs.close();
			}
			if(psmt != null) {
				psmt.close();
			}
			if(conn != null) {
				conn.close();
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int write(BoardDTO dto) {
		try {
			conn();
			String sql = "insert into Board values(Board_num.nextval, ?, ?, ?, sysdate, ?)";
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getBoard_title());
			psmt.setString(2, dto.getMember_id());
			psmt.setString(3, dto.getBoard_content());
			psmt.setString(4, dto.getFilename());
			
			cnt = psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
	
	// 전체 게시글 보여주기 메소드
		public ArrayList<BoardDTO> showBoard() {
			ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
			try {
				conn();
				String sql = "select * from Board order by board_date desc";
				psmt = conn.prepareStatement(sql);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int board_id = rs.getInt("board_id");
					String board_title = rs.getString("board_title");
					String member_id = rs.getString("member_id");
					String board_content = rs.getString("board_content");
					String board_date = rs.getString("board_date");
					String filename = rs.getString("filename");
					BoardDTO dto = new BoardDTO(board_id, board_title, member_id, board_content, board_date, filename);
					list.add(dto);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return list;
		}
		
		// 개별 게시글 보여주기 메소드
		public BoardDTO showOne(int num) {
			try {
				conn();
				String sql = "select * from board where board_id = ?";
				
				psmt = conn.prepareStatement(sql);
				psmt.setInt(1, num);
				
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					int board_id = rs.getInt("board_id");
					String board_title = rs.getString("board_title");
					String member_id = rs.getString("member_id");
					String fileName = rs.getString("fileName");
					String board_content = rs.getString("board_content");
					String board_date = rs.getString("board_date");
					
					dto = new BoardDTO(board_id, board_title, member_id, board_content, board_date, fileName);
				}
				
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
			return dto;
		}
}