package com.kanumalivad.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import com.kanumalivad.model.Comments;
import com.kanumalivad.service.AddCommentService;
@WebServlet("/AddCommentServlet")
public class AddCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public AddCommentServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name=request.getParameter("name");
		String message=request.getParameter("message");
		int pid=Integer.parseInt(request.getParameter("postid"));
		int replyid=Integer.parseInt(request.getParameter("replyid"));
		String page=request.getParameter("page");
		String title=request.getParameter("title");
	    Date date=new Date();
	    
	    Comments c=new Comments(pid,replyid,name,message,date);
	    
	    AddCommentService service=new AddCommentService();
	    
	    if(service.register(c))
	    	response.sendRedirect("Fullpost.jsp?page="+page+"&pid="+pid+"&title="+title);
	    else
	    	response.getWriter().write("no halyu ho");
		
		
		
		
		
		
	}

}
