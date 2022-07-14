package com.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Criteria;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;

import com.entities.Note;


public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public SearchServlet() {
        super();

System.out.println("servelet is working");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	String value=request.getParameter("searchvalue");
	System.out.println(value);
	SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	
	String query="from Note as n where n.title like :value ";
	
	Session session=factory.openSession();
Set<Note> list=new LinkedHashSet<Note>();



for (int i = 0; i < 3; i++) {
	switch (i) {
	case 0:
		Query<Note> q=session.createQuery("from Note as n where n.title like :value");
		q.setParameter("value", "%"+value+"%");
	
		list.addAll(q.getResultList());
		break;
	case 1:
		Query<Note> q1=session.createQuery("from Note as n where n.content like :value");
		q1.setParameter("value", "%"+value+"%");

		list.addAll(q1.getResultList());
		break;
//	case 2:
//		Query<Note> q2=session.createQuery("from Note as n where n.addedDate like :value");
//		q2.setParameter("value", "%"+value+"%");
//
//		list.addAll(q2.getResultList());
//		break;

	default:
		break;
	}
}

System.out.println(list.isEmpty());
for (Note note : list) {
	
	System.out.println(note.getId()+"  "+note.getTitle()+"  "+note.getContent()+"  "+note.getAddedDate());
	
	System.out.println("--------------------------------------------");
}


request.setAttribute("list", list);
request.getRequestDispatcher("search_result.jsp").forward(request, response);
	
	session.close();
	factory.close();
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
