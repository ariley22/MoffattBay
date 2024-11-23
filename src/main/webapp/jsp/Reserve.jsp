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
  <form action="/MoffatBay/mbay" method="POST">
      <input type="hidden" name="action" value="confirm"/>
      <table>
        <tr>
          <th colspan="4">Booking Options</th>
          </tr>
        <tr>
          <td><label for="roomType">Room Type:</label>
			<select name="roomType" id="roomType">
			  <option value="Double Full">Double Full Beds ($120/night)</option>
			  <option value="Queen">Queen ($135/night)</option>
			  <option value="Double Queen">Double Queen Beds ($150/night)</option>
			  <option value="King">King ($160/night)</option>
			</select></td>
          </tr>
        <tr>
          <td>Number of Guests:</td>
          <td><input type="number" name="numGuests"/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-In Date:</td>
          <td><input type="date" name="checkInDate"/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-Out Date:</td>
          <td><input type="date" name="checkOutDate"/></td>
          </tr>
         <tr>
          <td><i>You will have a chance to confirm</i></td>
          <td><input type="submit" value="Submit"/></td>
         </tr>
        </table>
      </form>
</div>
</body>
</html>
<%
		}
		else response.sendRedirect(base + "?action=login");
	}
%>