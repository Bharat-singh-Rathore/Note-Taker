import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entities.User;
import com.servlets.RegisterServlet;

public class Test {

	public static void main(String[] args) {
		

	Configuration cfg=new Configuration();
	cfg.configure("hibernate.cfg.xml");
	
	SessionFactory factory=cfg.buildSessionFactory();
	
	Session session=factory.openSession();
	
	Transaction tx=session.beginTransaction();
	
			User user=new User("indore", "bharat@123", "bharat singh", "1234", "8109162627");
			
	session.save(user);
			tx.commit();
	session.close();
	factory.close();
		
	}
	
}
