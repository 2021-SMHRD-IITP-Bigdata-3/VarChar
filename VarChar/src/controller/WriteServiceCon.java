package controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.BoardDAO;
import model.BoardDTO;
import model.MemberDTO;

@WebServlet("/WriteServiceCon")
public class WriteServiceCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDTO dto = null;
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		// 1. �̹��� ���
		// getServletContect() : ���� ����
		// getRealPath() : ���� ���
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		// 2. �̹��� ũ��
		// �̹��� ũ�⸦ ���� : �̹��� ȭ���� ���Ƽ� �뷮�� ũ�ϱ� ������ ������ �ѹ� ���� �����ؼ� �̹��� ũ�� ����
		int maxSize = 5*1024*1024;
		
		// 3. �̹����� ���ڵ� ��� 
		String encoding = "EUC-KR";
		
		// MultipartRequest : cos.jar ���� ���� �ִ� Ŭ����
		// request��ü, �̹��� ���� ���, ������ �̹��� ũ��, ���ڵ� ���, �ߺ�����
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
			String title = multi.getParameter("title");
			String member_id = info.getMember_id();
			String content = multi.getParameter("content");
			
			String fileName = null;
			if(multi.getFilesystemName("fileName") != null) {
				// �̹��� �±׿� ��� �ۼ� �� 16������ ��������ؼ� ���ڵ� ����
				fileName = URLEncoder.encode(multi.getFilesystemName("fileName"), "EUC-KR");
			}
			
			content = content.replaceAll("\r\n", "<br/>");
			System.out.println(title);
			System.out.println(member_id);
			System.out.println(fileName);
			System.out.println(content);
			
			if(fileName == null) {
				dto = new BoardDTO(title, member_id, content, fileName);
			} else {
				dto = new BoardDTO(title, member_id, content, fileName);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.write(dto);
		
		if(cnt > 0) {
			System.out.println("�̹��� ���ε� ����");
		} else {
			System.out.println("�̹��� ���ε� ����");
		}
	
		response.sendRedirect("board-list.jsp");
	}
}