package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDTO;
import model.ProductDAO;
import model.ProductDTO;

@WebServlet("/RecommandServiceCon")
public class RecommandServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		// ���� ���������� ����� ���� ���� ��������
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		ProductDAO pro_dao = new ProductDAO();
		ArrayList<ProductDTO> recom_list = pro_dao.getRecomProduct(info.getSkin_id());
		session.setAttribute("recom_list", recom_list);
		
		response.sendRedirect("recommend-page.jsp");
	}
}