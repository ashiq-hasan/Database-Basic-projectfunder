package de.unidue.inf.is;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.unidue.inf.is.domain.Kategorie;
import de.unidue.inf.is.utils.DBUtil;



public final class New_projectServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    public static final String user = "alan@turing.com";



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	  Connection con = null;

          try {
              con = DBUtil.getExternalConnection();
              PreparedStatement ps = con
      				.prepareStatement("insert into dbp050.projekt (titel, finanzierungslimit, kategorie, vorgaenger, beschreibung) values (?, ?, ?, ?, ?, ?, ?)");
      		ps.setString(1, request.getParameter("title"));
      		ps.setString(2, request.getParameter("finanzierungslimit"));
      		ps.setString(3, request.getParameter("kategorie"));
      		ps.setString(4, request.getParameter("vorgaenger"));
      		ps.setString(5, request.getParameter("beschreibung"));
      		ps.executeUpdate();
              } catch (SQLException e) {
                  e.printStackTrace();
              } 
          
        
        request.getRequestDispatcher("new_project.ftl").forward(request, response);}
  


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
                    IOException {

    	doGet(request, response);
    }
}