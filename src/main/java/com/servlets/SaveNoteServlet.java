package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.Entity.Note;
import com.Helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();			
		try
		{
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			
			Note note=new Note(title,content,new Date());
//			System.out.println(note.getId()+" "+note.getTitle()+" "+note.getContent()+" "+note.getAddedDate());
			//hibernate: save()
			Session session=FactoryProvider.getFactory().openSession();
			Transaction t=session.beginTransaction();
			session.save(note);
			t.commit();
			session.close();
			out.print("<h1 style='text-align : center;'>Note is Added Successfully</h1>");
			out.print("<h1 style='text-align : center;'><a href='all_notes.jsp'>View All Notes</a></h1>");

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
