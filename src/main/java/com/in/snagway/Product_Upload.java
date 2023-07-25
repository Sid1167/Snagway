package com.in.snagway;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Base64;
import java.io.InputStream;


@MultipartConfig
public class Product_Upload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		// Get the uploaded file
		Part image = request.getPart("p-img");
		  
		// Read the file content as binary data
		InputStream inputStream = image.getInputStream();
		
		byte[] imgData = inputStream.readAllBytes();
		  
		// Convert the binary data to a base64-encoded string
		String base64Image = Base64.getEncoder().encodeToString(imgData);
		
		String Name = request.getParameter("p-name");
		
		String Desc = request.getParameter("p-description");
		
		String Price = request.getParameter("p-price");
		
		Price = "550";
		
		String Type = request.getParameter("p-type");
		
		String Uptype = Type.toUpperCase();
		
		String Sex = request.getParameter("p-sex");

		String Upsex = Sex.toUpperCase();
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/snagway","root","");
			
			String q="insert into products(name,img,description,price,type,sex) values('"+Name+"','"+base64Image+"','"+Desc+"','"+Price+"','"+Uptype+"','"+Upsex+"')";

			PreparedStatement ps=con.prepareStatement(q);
			
			ps.executeUpdate();
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("admin.jsp"); // or servlet URL pattern
			dispatcher.forward(request, response);
			
		}
		catch(Exception e) {
			out.println(e);
		}
		
		

		
	}

}
