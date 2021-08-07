package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class SkinDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	SkinDTO dto = null;
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
	
	public SkinDTO pushSkin(String skin_Type) {
		try {
			conn();
			String sql = "select * from skin where skin_type = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, skin_Type);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				int id = rs.getInt(1);
				String type = rs.getString(2);
				String exp = rs.getString(3);
				
				dto = new SkinDTO(id, type, exp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
	
	public SkinDTO printSkin(int skin_id) {
		try {
			conn();
			String sql = "select * from skin where skin_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, skin_id);
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				int id = rs.getInt(1);
				String type = rs.getString(2);
				String exp = rs.getString(3);
				
				dto = new SkinDTO(id, type, exp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;
	}
}