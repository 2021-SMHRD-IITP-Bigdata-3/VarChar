package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;
import model.ProductDAO;
import model.ProductDTO;

@WebServlet("/RecommandServiceCon")
public class RecommandServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 이전 페이지에서 사용자 세션 정보 가져오기
		HttpSession session = request.getSession();
		MemberDAO mem_dao = new MemberDAO();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		// 피부타입에 맞는 화장품 목록 가져오기
		ProductDAO pro_dao = new ProductDAO();
		ArrayList<ProductDTO> recom_list = pro_dao.getRecomProduct(info.getSkin_id());
		session.setAttribute("recom_list", recom_list);
		
		// 사용자 정보 업데이트 반영
		info = mem_dao.login(info.getMember_id(), info.getMember_pw());
		session.setAttribute("info", info);
		
		// 추천화장품 페이지로 이동
		response.sendRedirect("recommend-page.jsp");
	}
}