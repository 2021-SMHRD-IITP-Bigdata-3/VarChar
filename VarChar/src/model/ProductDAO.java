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
	
	// ��ü ��ǰ �����ֱ� �޼ҵ�
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
				String product_category = rs.getString("product_category");
				ProductDTO dto = new ProductDTO(product_id, product_name, product_price, product_manu, product_grade, product_category);
				list.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	// �� ���� ��ǰ ������ ��������
	public ProductDTO showOneProduct(int id) {
		try {
			conn();
			String sql = "select * from Product where product_id = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int product_id = rs.getInt("product_id");
				String product_name = rs.getString("product_name");
				int product_price = rs.getInt("product_price");
				String product_manu = rs.getString("product_manu");
				int product_grade = rs.getInt("product_grade");
				String product_category = rs.getString("product_category");
				ProductDTO dto = new ProductDTO(product_id, product_name, product_price, product_manu, product_grade, product_category);
				
				info = dto;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return info;
	}
	
	public ArrayList<IngredientDTO> getProIngredient(int product_id) {
		ArrayList<IngredientDTO> ingre_list = new ArrayList<IngredientDTO>();
		
		try {
			conn();
			String sql = "select * from ingredient where ingredient_id in (select ingredient_id from product_in where product_id = ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, product_id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int ingredient_id = rs.getInt(1);
				String kor_name = rs.getString(2);
				String eng_name = rs.getString(3);
				String O = rs.getString(4);
				String D = rs.getString(5);
				String S = rs.getString(6);
				String P = rs.getString(7);
				String W = rs.getString(8);
				
				IngredientDTO ingre_dto = new IngredientDTO(ingredient_id, kor_name, eng_name, O, D, S, P, W);
				ingre_list.add(ingre_dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return ingre_list;
	}
	
	public ArrayList<Integer> getIngreCount(int product_id, String answer) {
		ArrayList<Integer> cnt_list = new ArrayList<Integer>();
		
		try {
			conn();
			String sql = "select count(case when o = ? then 1 end) as o,\r\n" + 
					"	count(case when d = ? then 1 end) as d,\r\n" + 
					"	count(case when s = ? then 1 end) as s,\r\n" + 
					"	count(case when p = ? then 1 end) as p,\r\n" + 
					"	count(case when w = ? then 1 end) as w\r\n" + 
					"from ingredient where ingredient_id in (select ingredient_id from product_in where product_id = ?)";
			
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, answer);
			psmt.setString(2, answer);
			psmt.setString(3, answer);
			psmt.setString(4, answer);
			psmt.setString(5, answer);
			psmt.setInt(6, product_id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				cnt_list.add(rs.getInt("O"));
				cnt_list.add(rs.getInt("D"));
				cnt_list.add(rs.getInt("S"));
				cnt_list.add(rs.getInt("P"));
				cnt_list.add(rs.getInt("W"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt_list;
	}
}