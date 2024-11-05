<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Reservation Confirmation</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<jsp:include page="BottomMenu.jsp" flush="true"/>
<div class="content">
  <h1>Reservation Confirmation (Not Yet Submitted!)</h1>
  <p><b>Assignment Instructions:</b> This page appears after a user completes a booking. 
  Provide customers with a reservation confirmation summary and a button to either cancel or submit the reservation. 
  Submitted reservation must be saved to MySQL. Canceling the reservation should take users back to the hotel reservation page.</p>
</div>
</body>
</html>