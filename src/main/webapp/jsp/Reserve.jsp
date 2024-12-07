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
  <script>
        // Function to validate the dates
        function validateDates() {
            var checkinDate = document.getElementById('checkin').value;
            var checkoutDate = document.getElementById('checkout').value;

            if (checkinDate && checkoutDate) {
                // If check-out date is not later than check-in date, show an alert and reset the check-out date
                if (new Date(checkoutDate) <= new Date(checkinDate)) {
                    alert("Check-out date must be later than the check-in date.");
                    document.getElementById('checkout').value = ""; // Reset the check-out date
                }
            }
        }

        // Function to set the min date for check-out based on check-in date
        function setMinCheckoutDate() {
            var checkinDate = document.getElementById('checkin').value;
            if (checkinDate) {
                // Set the min date for checkout to be the day after check-in date
                var minCheckout = new Date(checkinDate);
                minCheckout.setDate(minCheckout.getDate() + 1);
                document.getElementById('checkout').setAttribute('min', minCheckout.toISOString().split('T')[0]);
            } else {
                document.getElementById('checkout').removeAttribute('min');
            }
        }

        // Function to set the min date for check-in to today's date
        function setMinCheckinDate() {
            var today = new Date();
            var yyyy = today.getFullYear();
            var mm = today.getMonth() + 1; // Months are zero-indexed
            var dd = today.getDate();

            if (mm < 10) mm = '0' + mm; // Add leading zero for single digit months
            if (dd < 10) dd = '0' + dd; // Add leading zero for single digit days

            var todayStr = yyyy + '-' + mm + '-' + dd;
            document.getElementById('checkin').setAttribute('min', todayStr);
        }

        // Call setMinCheckinDate when the page loads
        window.onload = setMinCheckinDate;
    </script>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
<!-- On validate action, we will check for request params, if they exist, check if they exist in DB, if yes, add user details to session.
    If no request params or not in database, redirect to login page. -->
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
          <td><input type="number" name="numGuests" value="1" min="1" max="4" required/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-In Date:</td>
          <td><input type="date" id="checkin" name="checkInDate" onchange="setMinCheckoutDate(); validateDates()" required/></td>
          </tr>
         <tr>
        <tr>
          <td>Check-Out Date:</td> 
          <td><input type="date" id="checkout" name="checkOutDate" onchange="validateDates()" required/></td>
          </tr>
         <tr>
          <td><i>You will have a chance to confirm</i></td>
          <td><input type="submit" value="Submit"/></td>
         </tr>
        </table>
      </form>
</div>
    <jsp:include page="footer.jsp" flush="true"/>

</body>
</html>
<%
		}
		else response.sendRedirect(base + "?action=login");
	}
%>