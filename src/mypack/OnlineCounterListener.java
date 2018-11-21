package mypack;

import javax.servlet.*;
import javax.servlet.http.*;

public class OnlineCounterListener implements HttpSessionListener{
	public void sessionCreated(HttpSessionEvent event)
	{
		HttpSession session = event.getSession();
		ServletContext context = session.getServletContext();
		Integer counter = (Integer) context.getAttribute("counter");
		if (counter == null)
		{
			counter = new Integer(1);
		}
		else
		{
			counter = new Integer(counter + 1);
		}
		
		context.setAttribute("counter", counter);
		session.setMaxInactiveInterval(30);
		
		System.out.println("A new session is created.");
	}
	
	@Override
	public void sessionDestroyed(HttpSessionEvent event)
	{
		HttpSession session = event.getSession();
		ServletContext context = session.getServletContext();
		Integer counter = (Integer) context.getAttribute("counter");
		if (counter == null)
		{
			return;
		}
		else
		{
			counter = new Integer(counter - 1);
		}
		
		context.setAttribute("counter", counter);
		System.out.println("a session is to be destroyed.");
	}
}
