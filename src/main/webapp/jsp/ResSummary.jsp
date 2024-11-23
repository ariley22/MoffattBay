<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="moffatbay.beans.Reservation"%>
<%@page import="moffatbay.beans.User" %>
<jsp:useBean id="dataManager" scope="application"
  class="moffatbay.model.DataManager"/>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Reservation Confirmation</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
  <h1>Reservation Confirmation (Not Yet Submitted!)</h1>
  <p><b>Assignment Instructions:</b> This page appears after a user completes a booking. 
  Provide customers with a reservation confirmation summary and a button to either cancel or submit the reservation. 
  Submitted reservation must be saved to MySQL. Canceling the reservation should take users back to the hotel reservation page.</p>
  <jsp:useBean id="reservation" class="moffatbay.beans.Reservation" scope="session"/>
  <jsp:setProperty property="*" name="reservation"/>
    <% 
    reservation.setCheckInDate(request.getParameter("checkInDate"));
    reservation.setCheckOutDate(request.getParameter("checkOutDate"));
    System.out.println("Reservation: " + reservation.toString());
	String base = (String) application.getAttribute("base");
	String action = request.getParameter("action");
	String email = ((User)session.getAttribute("userObject")).getEmail();
	if (action != null && action.equals("success")) {
	  try {
		dataManager.insertReservation(reservation, email);
		%>
		Reservation successfully created!
		<%
	  }
	  catch (Exception e) {
	    out.println("Error creating reservation");
	    }
	  }
	else if(action != null && action.equals("confirm")){
		String typeOfRoomLabel = "";
		switch (reservation.getRoomType()) {
	        case "Double Full":
	          typeOfRoomLabel = "Double Full Beds ($120/night)";
	          break;
	        case "Double Queen":
	          typeOfRoomLabel = "Double Queen Beds ($150/night)";
	          break;
	        case "Queen":
		      typeOfRoomLabel = "Queen ($135/night)";
		      break;
	        case "King":
	          typeOfRoomLabel = "King ($160/night)";
		      break;
		    default:
	          typeOfRoomLabel = "No room type chosen";
	          break;
        }
		
	%>
  <form action="/MoffatBay/mbay" method="POST">
      <input type="hidden" name="action" value="success"/>
      <input type="hidden" name="roomType" value="<%=reservation.getRoomType() %>"/>
      <table>
        <tr>
          <th colspan="4">Booking Options</th>
          </tr>
        <tr>
          <td><label for="roomType">Room Type:</label>
			<select name="roomType" id="roomType" disabled="true">
			  <option value="<%=reservation.getRoomType() %>"><%=typeOfRoomLabel %></option>
			</select></td>
          </tr>
        <tr>
          <td>Number of Guests:</td>
          <td><input type="number" name="numGuests" value="<%=reservation.getNumGuests() %>" readonly/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-In Date:</td>
          <td><input type="date" name="checkInDate" value="<%=request.getParameter("checkInDate")%>" readonly/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-Out Date:</td>
          <td><input type="date" name="checkOutDate" value="<%=request.getParameter("checkOutDate")%>" readonly/></td>
          </tr>
          <tr><td><b>Number of Nights: </b></td><td><%=reservation.getNumNights() %></td></tr>
          <tr><td><b>Total Price: </b></td><td><%=reservation.calculatePrice() %></td></tr>
         <tr>
          <td></td>
          <td><input type="submit" value="Submit"/></td>
         </tr>
        </table>
      </form>
    <form action="">
      <input type="hidden" name="action" value="reserve"/>
      <table>
          <td>&nbsp;</td>
          <td><input type="submit" value="Cancel"/></td>
         </tr>
        </table>
      </form>
      <% } %>
</div>
</body>
</html>