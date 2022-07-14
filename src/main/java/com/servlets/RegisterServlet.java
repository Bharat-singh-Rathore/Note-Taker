package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entities.User;
import com.helper.FactoryProvider;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
		System.out.println("Register Servlet is working please proccess yooouer work");

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String mobile=request.getParameter("mobile");
		String password=request.getParameter("password");
		
		
		SessionFactory factory=FactoryProvider.getFactory();
		Session session=factory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		Query<User> query=session.createQuery("from User where userPhone= :mobile and userPassword= :password");
		
		query.setParameter("mobile", mobile);
		query.setParameter("password", password);
		
//  List<User> list = query.list();
			User userResult = query.getSingleResult();
	if(userResult==null)
	{
		System.out.println("incorrect id and password");
		response.sendRedirect("login.jsp");
	}else
	{
		System.out.println("user Id ="+userResult.getUserId());
	
		request.setAttribute("user", userResult);
		request.getRequestDispatcher("home.jsp").forward(request, response);
		
	}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String name=request.getParameter("user_name");
		String email=request.getParameter("user_email");
		String mobile=request.getParameter("user_phone");
		String address=request.getParameter("user_address");
		String password=request.getParameter("user_password");
		User user=new User(address, email, name, password, mobile);
		
		System.out.println(name+" -"+email+" -"+mobile+" -"+address+"- "+password);
		
		Configuration cfg=new Configuration();
		
		cfg.configure("hibernate.cfg.xml");
		
		
		SessionFactory factory=cfg.buildSessionFactory();
		
		Session session=factory.openSession();
		Transaction tx=session.beginTransaction();
		
		session.save(user);
		
		
		
//		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		out.println("<h1>note is added sucessfully</h1>");
		
		tx.commit();
		session.close();
		factory.close();
		
		response.sendRedirect("login.jsp");
	}

}
