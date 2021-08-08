package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ProductDAO;
import model.ProductDTO;

@WebServlet("/ProductServiceCon")
public class ProductServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 이전 페이지에서 값 가져오기
		String searchText = null;
		String order = null;
		
		if(request.getParameter("searchText") != null) {
			searchText = request.getParameter("searchText");
		}
		
		if(request.getParameter("order") != null) {
			order = request.getParameter("order");
			System.out.println(order);
		}
		
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> pro_list = null;
		HttpSession session = request.getSession();
		
		pro_list = dao.showProduct();
		session.setAttribute("showPro", pro_list);
		
		if(searchText != null)
			pro_list = dao.showSearchProduct(searchText);
		
		if(order != null) {
			if(!order.equals("1")) {
				pro_list = dao.showOrderProduct(Integer.parseInt(order));
				session.setAttribute("showPro", pro_list);
				session.setAttribute("choice", order);
			}
		}
		
		if(searchText != null) {
			System.out.println("검색 성공");
			session.setAttribute("showPro", pro_list);
			session.setAttribute("search", new Boolean(true));
		} else {
			session.setAttribute("search", new Boolean(false));
		}
		
		response.sendRedirect("product-list.jsp");
	}
}