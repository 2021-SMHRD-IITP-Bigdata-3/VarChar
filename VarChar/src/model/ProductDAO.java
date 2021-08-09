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
	
	// 전체 상품 보여주기 메소드
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
				double product_grade = rs.getDouble("product_grade");
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
	
	// 한 개의 상품 정보만 가져오기
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
				double product_grade = rs.getDouble("product_grade");
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
	
	// 검색 상품 보여주기 메소드
	public ArrayList<ProductDTO> showSearchProduct(String text) {
		ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
		try {
			conn();
			String sql = "select * from Product where Product_name like ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, "%"+text+"%");
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int product_id = rs.getInt("product_id");
				String product_name = rs.getString("product_name");
				int product_price = rs.getInt("product_price");
				String product_manu = rs.getString("product_manu");
				double product_grade = rs.getDouble("product_grade");
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
	
	// 카테고리별 상품 보여주기 메소드
		public ArrayList<ProductDTO> showCategoryProduct(String category) {
			ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
			try {
				conn();
				System.out.println(category);
				String sql = "select * from Product where Product_category = ?";
				psmt = conn.prepareStatement(sql);
				psmt.setString(1, category);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int product_id = rs.getInt("product_id");
					String product_name = rs.getString("product_name");
					int product_price = rs.getInt("product_price");
					String product_manu = rs.getString("product_manu");
					double product_grade = rs.getDouble("product_grade");
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
		
		// 원하는 순서로 상품보여주기
		public ArrayList<ProductDTO> showOrderProduct(int order) {
			ArrayList<ProductDTO> list = new ArrayList<ProductDTO>();
			try {
				conn();
				
				String sql = null;
				
				if(order == 2)
					sql = "select * from Product order by product_price desc";
				else if(order == 3)
					sql = "select * from product order by product_price asc";
				else if(order == 4)
					sql = "select * from product order by product_grade desc";
				
				psmt = conn.prepareStatement(sql);
				
				rs = psmt.executeQuery();
				
				while(rs.next()) {
					int product_id = rs.getInt("product_id");
					String product_name = rs.getString("product_name");
					int product_price = rs.getInt("product_price");
					String product_manu = rs.getString("product_manu");
					double product_grade = rs.getDouble("product_grade");
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
	
	public ArrayList<ProductDTO> getRecomProduct(int skin_id) {
		ArrayList<ProductDTO> recom_list = new ArrayList<ProductDTO>();
		
		try {
			conn();
			String sql = "select distinct p.product_id, product_name, product_price, product_manu, product_grade, product_category \r\n" + 
					"from product p, ingredient i, product_in pi\r\n" + 
					"where p.product_id = pi.product_id\r\n" + 
					"and i.ingredient_id = pi.ingredient_id\r\n" + 
					"and i.o = 'g'\r\n" + 
					"and i.o != 'b'\r\n" + 
					"and i.s = 'g'\r\n" + 
					"and i.s != 'b'\r\n" + 
					"and i.p = 'n'\r\n" + 
					"and i.w = 'n'\r\n" + 
					"order by p.product_id";
			
			psmt = conn.prepareStatement(sql);
			//psmt.setString(1, answer);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int product_id = rs.getInt(1);
				String product_name = rs.getString(2);
				int product_price = rs.getInt(3);
				String product_manu = rs.getString(4);
				double product_grade = rs.getDouble(5);
				String product_category = rs.getString(6);
				ProductDTO dto = new ProductDTO(product_id, product_name, product_price, product_manu, product_grade, product_category);
				
				recom_list.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return recom_list;
	}
}