<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="moffatbay.beans.User"%>
<%@page import="moffatbay.beans.Reservation"%>
<jsp:useBean id="dataManager" scope="application"
	class="moffatbay.model.DataManager" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Look Up Reservation</title>
<link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css"
	type="text/css" />
</head>
<body>
	<jsp:include page="TopMenu.jsp" flush="true" />
	<% 
	String base = (String) application.getAttribute("base");
	String action = request.getParameter("action");
	if (action != null && action.equals("query")) {
	  try {
	    String email = request.getParameter("email");
	    int resId = 0;
	    if(request.getParameter("resId") != ""){resId = Integer.parseInt(request.getParameter("resId"));}
	    
	    if (email != "") {
	    	int userId = dataManager.getUserIdFromEmail(email);
	    	System.out.println("User ID: " + userId);
	    	if(userId != 0){
	    		out.println(dataManager.lookupResByUserId(userId));
	    	}
	    	else{
	    		out.println("Invalid email, please refresh the page and try again.");
	    	}
	    }
	    else if (resId != 0){
	    	out.println(dataManager.lookupResByResId(resId));
	    	}
	    else { out.println("Error looking up reservation, please refresh the page and try again."); }
	  	}
	  catch (Exception e) {
		e.printStackTrace();
	    out.println("Error looking up reservation");
	    }
	  }
	else if(action != null && action.equals("lookup")){
	%>
	<div class="content">
		<h1>Look Up Existing Reservation</h1>
		<form action="/MoffatBay/mbay" method="POST">
			<input type="hidden" name="action" value="query" />
			<table class="lookupform">
				<tr>
					<th colspan="2">Look Up Reservation (choose one)</th>
				</tr>
				<tr>
					<td>Username/Email Address:</td>
					<td><input type="email" name="email" /></td>
				</tr>
				<tr>
					<td>Reservation ID:</td>
					<td><input type="number" name="resId" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</form>
	</div>
	<% }%>
</body>
</html>