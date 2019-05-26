package com.kanumalivad.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
/**
 * Servlet implementation class SendEmail
 */
@WebServlet("/SendEmail")
public class SendEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendEmail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
		      String to = "radha.malivad@gmail.com";//change accordingly
		      String from = "kanu.malivad@gmail.com";//change accordingly
		      String host = "localhost";//or IP address

		     //Get the session object
		      Properties properties = System.getProperties();
		      properties.setProperty("mail.smtp.host", host);
		      Session session = Session.getDefaultInstance(properties);

		     //compose the message
		      try{
		         MimeMessage message = new MimeMessage(session);
		         message.setFrom(new InternetAddress(from));
		         message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		         message.setSubject("Ping");
		         message.setText("Hello, this is example of sending email  ");

		         // Send message
		         Transport.send(message);
		         System.out.println("message sent successfully....");

		      }catch (MessagingException mex) {mex.printStackTrace();}
		   }
			

}
