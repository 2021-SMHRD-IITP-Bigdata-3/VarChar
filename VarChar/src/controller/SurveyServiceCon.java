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
import model.SkinDAO;
import model.SkinDTO;

@WebServlet("/SurveyServiceCon")
public class SurveyServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 인코딩
		request.setCharacterEncoding("EUC-KR");
		
		// 이전 페이지에서 값 가져오기
		String result = request.getParameter("result");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getMember_name();
		
		// member테이블에 skin_id 저장
		MemberDAO m_dao = new MemberDAO();
		int cnt = m_dao.updateSkin(id, result);
		
		// 결과 페이지에 출력할 스킨 정보 DTO에 저장
		SkinDAO s_dao = new SkinDAO();
		SkinDTO s_dto = s_dao.pushSkin(result);
		
		if(cnt > 0) {
			System.out.println("스킨 ID 저장 성공");
			session.setAttribute("info", info);
			session.setAttribute("skin_dto", s_dto);
		} else {
			System.out.println("스킨 ID 저장 실패");
		}
		
		response.sendRedirect("survey-result.jsp");
	}
}