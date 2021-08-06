package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ProductDAO {

	Connection conn = null;
	PreparedStatement psmt = null;
	ResultSet rs = null;
	ProductDTO info = null;
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
	
	// 전체 게시글 보여주기 메소드
	public ArrayList<ProductDTO> showProduct() {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			conn();
			String sql = "select * from Product";
			psmt = conn.prepareStatement(sql);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int product_id = rs.getInt("product_id");
				String product_name = rs.getString("product_name");
				int product_price = rs.getInt("product_price");
				String product_manu = rs.getString("product_manu");
				int product_grade = rs.getInt("product_grade");
				
				ProductDTO dto = new ProductDTO(product_id, product_name, product_price, product_manu, product_grade);
				list.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
}