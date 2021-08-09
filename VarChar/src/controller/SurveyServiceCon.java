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
import model.SkinRecordDAO;

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
		int m_cnt = m_dao.updateSkin(id, result);
		
		// ��� �������� ����� ��Ų ���� DTO�� ����
		SkinDAO s_dao = new SkinDAO();
		SkinDTO s_dto = s_dao.pushSkin(result);
		SkinRecordDAO sr_dao = new SkinRecordDAO();
		int sr_cnt = sr_dao.record(info, s_dto);
				
		// Member ���̺� Skin_id ���� ���� Ȯ��
		if(m_cnt > 0) {
			System.out.println("��Ų ID ���� ����");
			info = m_dao.login(info.getMember_id(), info.getMember_pw());
			session.setAttribute("info", info);
			session.setAttribute("skin_dto", s_dto);
		} else {
			System.out.println("��Ų ID ���� ����");
		}
		
		// Skin_record ���̺� ��� ���� ���� Ȯ��
		if(sr_cnt > 0) {
			System.out.println("��Ų ��� ���� ����");
		} else {
			System.out.println("��Ų ��� ���� ����");
		}
		
		response.sendRedirect("survey-result.jsp");
	}
}