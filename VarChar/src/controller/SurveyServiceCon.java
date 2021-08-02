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
		// ���ڵ�
		request.setCharacterEncoding("EUC-KR");
		
		// ���� ���������� �� ��������
		String result = request.getParameter("result");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		String id = info.getMember_name();
		
		// member���̺� skin_id ����
		MemberDAO m_dao = new MemberDAO();
		int cnt = m_dao.updateSkin(id, result);
		
		// ��� �������� ����� ��Ų ���� DTO�� ����
		SkinDAO s_dao = new SkinDAO();
		SkinDTO s_dto = s_dao.pushSkin(result);
		
		if(cnt > 0) {
			System.out.println("��Ų ID ���� ����");
			session.setAttribute("info", info);
			session.setAttribute("skin_dto", s_dto);
		} else {
			System.out.println("��Ų ID ���� ����");
		}
		
		response.sendRedirect("survey-result.jsp");
	}
}