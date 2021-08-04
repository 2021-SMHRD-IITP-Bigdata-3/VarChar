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
		
		// 1. 이미지 경로
		// getServletContect() : 서블릿 정보
		// getRealPath() : 실제 경로
		String savePath = request.getServletContext().getRealPath("img");
		System.out.println(savePath);
		
		// 2. 이미지 크기
		// 이미지 크기를 제한 : 이미지 화질이 좋아서 용량이 크니까 서버에 공간을 넘무 많이 차지해서 이미지 크기 제한
		int maxSize = 5*1024*1024;
		
		// 3. 이미지명 인코딩 방식 
		String encoding = "EUC-KR";
		
		// MultipartRequest : cos.jar 파일 내에 있는 클래스
		// request객체, 이미지 저장 경로, 제한할 이미지 크기, 인코딩 방식, 중복제거
		MultipartRequest multi;
		try {
			multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
			String title = multi.getParameter("title");
			String member_id = info.getMember_id();
			String content = multi.getParameter("content");
			
			String fileName = null;
			if(multi.getFilesystemName("fileName") != null) {
				// 이미지 태그에 경로 작성 시 16진수로 적어줘야해서 인코딩 진행
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
			System.out.println("이미지 업로드 성공");
		} else {
			System.out.println("이미지 업로드 실패");
		}
	
		response.sendRedirect("board-list.jsp");
	}
}