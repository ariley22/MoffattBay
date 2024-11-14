<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="moffatbay.beans.User"%>
<jsp:useBean id="dataManager" scope="application"
  class="moffatbay.model.DataManager"/>
<% 
	String base = (String) application.getAttribute("base");
	String action = request.getParameter("action");
	if (action != null && action.equals("validate")) {
	  try {
	    String email = request.getParameter("email");
	    String password = request.getParameter("password");
	    
	    if (email != null && password != null) {
	    	if(dataManager.validateUser(email, password)){
	    		session.setAttribute("username", email);
	    		response.sendRedirect(base + "?action=reserve");
	    	}
	    	else response.sendRedirect(base + "?action=login");
	    }
	    else response.sendRedirect(base + "?action=login");
	  }
	  catch (Exception e) {
	    out.println("Error validating user");
	    }
	  }
	if(action != null && action.equals("reserve")){
		if(session.getAttribute("username") != null){
	%>
	<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Book Your Vacation</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
<!-- On validate action, we will check for request params, if they exist, check if they exist in DB, if yes, add user details to session.
    If no request params or not in database, redirect to login page. -->
  <h1>Book Your Vacation</h1>
  <p><b>Assignment Instructions:</b> You are building a lodge reservation page that allows customers to “book their vacation.” 
  MySQL must be used to save the data. Form selection options: room size, number of guests, and check-in/check-out dates. 
  Room size: double full beds = 120.00 per night, queen = 135.00 per night, double queen beds = 150.00 per night, and king = 160.00 per night.</p>
</div>
</body>
</html>
<%
		}
		else response.sendRedirect(base + "?action=login");
	}
%>