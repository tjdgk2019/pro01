package org.wangsimni.ctrl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.wangsimni.dao.MemberDAO;
import org.wangsimni.dto.Member;
import org.wangsimni.util.AES256;

@WebServlet("/EditMember.do")
public class EditMemberCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public EditMemberCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		MemberDAO dao = new MemberDAO();
		Member mem = dao.getMember(id);
		
		String key = "%02x";
		
		try {
			mem.setPw(AES256.decryptAES256(mem.getPw(), key));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("mem", mem);
		RequestDispatcher view = request.getRequestDispatcher("/member/memberInfo.jsp");
		view.forward(request, response);
	}
}
