package com.in.snagway;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.mysql.cj.Session;

/**
 * Servlet implementation class logout
 */

public class logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();		
		
		HttpSession session = request.getSession(); //getting to session object

		try {
			if(session!=null) // check if condition the session not null

			{
//				System.out.println("************************");
//				System.out.println(session);
//				System.out.println("************************");
//				

				session.invalidate(); //using this method to destroy the sesion object
				
				
				System.out.println("Logged out successfully"); //send "errorMSG" object on client side. And get using request.getAttribute() method
				
//				System.out.println(session);
				
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp"); // using RequestDispatcher method forward to login page.
	
				requestDispatcher.forward(request, response);
	
				System.out.println("you can logged out successfully");

			}
		}
		catch(Exception e) {
			out.println(e);
		}
		
	}

}
