package com.in.snagway;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;

import com.mysql.cj.Session;

import java.io.InputStream;


@MultipartConfig
public class Update_Product extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Get the uploaded file
					Part image = request.getPart("sup-img");
					  
					// Read the file content as binary data
					InputStream inputStream = image.getInputStream();
					
					byte[] imgData = inputStream.readAllBytes();
					  
					// Convert the binary data to a base64-encoded string
					String base64Image = Base64.getEncoder().encodeToString(imgData);
//					System.out.println("******************************************");
					HttpSession session=request.getSession();  

					String ID = (String)session.getAttribute("product-id");
							
//					System.out.println("******************************************");
//					System.out.println(ID);
					
					String Name = request.getParameter("sup-name");
					
					String Desc = request.getParameter("sup-description");
					
					String Price = request.getParameter("sup-price");
					
					String Type = "Tshirt";
					
					Type = request.getParameter("sup-type");
					
					String Uptype = Type.toUpperCase();
					
					String Sex = "UNISEX";
					
					Sex = request.getParameter("sup-sex");

					String Upsex = Sex.toUpperCase();
		
					
		
		try {
			

			
 			Class.forName("com.mysql.cj.jdbc.Driver");
 			
 			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
			
 			String q="update products set name='"+Name+"',img='"+base64Image+"',description='"+Desc+"',price='"+Price+"',type='"+Uptype+"',sex='"+Upsex+"' where id = '"+ID+"'";
 
 			PreparedStatement ps=con.prepareStatement(q);
			
			ps.executeUpdate();
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp"); // or servlet URL pattern
			dispatcher.forward(request, response);
			
		}
		catch(Exception e) {
			PrintWriter out = response.getWriter();
			out.println(e);
		}
		
		

		
	}

}
