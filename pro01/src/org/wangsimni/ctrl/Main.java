package org.wangsimni.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.wangsimni.dto.Data;
import org.wangsimni.dto.Notice;
import org.wangsimni.dto.QnA;


@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Main() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name="이성하";
		
		ServletContext application = request.getServletContext();
		String realpath = request.getSession().getServletContext().getRealPath("/");
		application.setAttribute("realpath", realpath);
		application.setAttribute("title", "왕십리 소개");
		
		List <Notice> latestNotiList = new ArrayList<>();
		List <QnA> latestQnAList = new ArrayList<>();
		List <Data> latestDataList = new ArrayList<>();
		
		request.setAttribute("latestNotiList", latestNotiList);
		request.setAttribute("latestQnAList", latestQnAList);
		request.setAttribute("latestDataList", latestDataList);
		
		request.setAttribute("name", name);
		request.setAttribute("logo", "./images/img.webp");
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}

}
