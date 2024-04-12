package org.wangsimni.ctrl;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.wangsimni.dao.NoticeDAO;
import org.wangsimni.dto.Notice;

@WebServlet("/EditProNotice.do")
public class EditProNoticeCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EditProNoticeCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Notice noti = new Notice();
		noti.setNo(Integer.parseInt(request.getParameter("no")));
		noti.setTitle(request.getParameter("title"));
		noti.setContent(request.getParameter("content"));
		
		NoticeDAO dao = new NoticeDAO();
		int cnt =dao.insNotice(noti);
		
		if(cnt>0) {
			response.sendRedirect("/pro01/NotiList.do");
		} else {
			response.sendRedirect("/pro01/EditNotice.do?no="+noti.getNo());
		}
	}
}