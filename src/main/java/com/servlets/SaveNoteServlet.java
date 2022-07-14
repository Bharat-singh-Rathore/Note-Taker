package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SaveNoteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String title = request.getParameter("title");
			String text = request.getParameter("content");
			int userId = Integer.parseInt(request.getParameter("userId"));

			Note note = new Note(title, text, new Date(), userId);

			System.out.println(note.getId());
			System.out.println(note.getTitle());
			System.out.println(note.getContent());

			Session session = FactoryProvider.getFactory().openSession();

			Transaction transaction = session.beginTransaction();

			System.out.println("data saving proccess.......");
			session.save(note);

			transaction.commit();
			session.close();

			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("\r\n" + "<!DOCTYPE html>\r\n" + "<html>\r\n" + "   \r\n" + "<head>\r\n" + "    <script>\r\n"
					+ "        function showAlert() {\r\n" + "            alert(\"Displaying an Alert box\");\r\n"
					+ "        }\r\n" + "    </script>\r\n" + "</head>\r\n" + "  \r\n" + "<body>\r\n"
					+ "    <button onclick=\"showAlert()\">\r\n" + "        Display Alert Box\r\n" + "    </button>\r\n"
					+ "</body>\r\n" + "   \r\n" + "</html>");

//			
//			request.setAttribute("alert", true);
//			
//			System.out.println("saved data");
//			

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
