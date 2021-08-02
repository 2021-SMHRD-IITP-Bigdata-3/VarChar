package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/SurveyServiceCon")
public class SurveyServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		
		String result = request.getParameter("result");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getMember_name();
		
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateSkin(id, result);
		
		if(cnt > 0) {
			System.out.println("스킨 ID 저장 성공");
			session.setAttribute("info", info);
		} else {
			System.out.println("스킨 ID 저장 실패");
		}
		
		response.sendRedirect("index.jsp");
	}
}