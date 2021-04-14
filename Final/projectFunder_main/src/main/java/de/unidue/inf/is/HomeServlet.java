package de.unidue.inf.is;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.unidue.inf.is.domain.Project;
import de.unidue.inf.is.stores.UserStore;

@WebServlet("/ProjectServlet")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     UserStore u=new UserStore();  
    
   


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Project> projects= new ArrayList<Project>();
		List<Project> Cprojects= new ArrayList<Project>();
		projects=u.getopenprojects();
		Cprojects=u.getcloseprojects();
		request.setAttribute("projects", projects);
		request.setAttribute("Cprojects", Cprojects);
		request.getRequestDispatcher("home.ftl").forward(request, response);
		
	}

	
}
