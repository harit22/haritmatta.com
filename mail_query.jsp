
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page import="java.sql.*"%>
<%@ page import ="java.net.*"%>
<%@ page import ="javax.mail.*"%>
<%@ page import ="java.io.*"%>
<%@ page import ="java.util.*"%>
<%@ page import ="javax.mail.internet.InternetAddress"%>
<%@ page import ="javax.mail.internet.MimeMessage" %>
						 
<%

String username=session.getAttribute("n").toString();
String query=session.getAttribute("q").toString();


String host="smtp.gmail.com",user="", pass="engineers";
		
		user="harit.matta@gmail.com";
	
		//host = smtp_server; //"smtp.gmail.com"; user = jsp_email; //"YourEmailId@gmail.com" // email id to send the emails
		//pass = jsp_email_pw; //Your gmail password
		String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
		String to ="harit.matta@gmail.com"; // out going email id
		String from = user; //Email id of the recipient
		String subject = "QUERY";
		String messageText ="mail by: "+username+"Query : "+query;
		boolean sessionDebug = true;
		Properties props = System.getProperties();
		props.put("mail.host", host);
		props.put("mail.transport.protocol.", "smtp");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.", "true");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.socketFactory.fallback", "false");
		props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(sessionDebug);
		try{
			
			Message msg= new MimeMessage(mailSession);
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(to)};
		msg.setRecipients(Message.RecipientType.TO, address);
		msg.setSubject(subject);
		msg.setContent(messageText, "text/html"); // use setText if you want to send text
		
		Transport transport;
		 transport = mailSession.getTransport("smtp");
		transport.connect(host, user, pass);
		
		transport.sendMessage(msg, msg.getAllRecipients());
		//WasEmailSent = true; // assume it was sent
		transport.close();}
		catch (Exception err)
		 {
		out.print(err);
		}
		
	
	response.sendRedirect("in.jsp");
%>
 


