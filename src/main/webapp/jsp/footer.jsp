<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String base = (String)application.getAttribute("base");
  %>
<!DOCTYPE html>
<html lang="en">
<footer class="footer1">
    	<div class="footer-section">
	        <div class="contact">
		        Contact Us: 
		        Moffat Bay Lodge
				123 Island View Road
				Joviedsa Island, San Juan Islands, WA
				Phone: (555) 123-4567
				Email: info@moffatbaylodge.com
	        </div>
	        <div class="links">
	        	<h3>Quick Links</h3>
	        	<a href="<%=base%>?action=about">About Us</a>
	        	<a href="<%=base%>?action=attractions">Attractions</a>
	        	<a href="<%=base%>?action=reserve">Book Now</a>
	        	<a href="<%=base%>?action=login">Login Page</a>
	        </div>
	        <div class="social-icons">
	        	<h3>Follow Us!</h3>
	            <a href="#"><img src="images/facebook.png" alt="Facebook"></a>
	            <a href="#"><img src="images/x.png" alt="Twitter"></a>
	            <a href="#"><img src="images/instagram.png" alt="Instagram"></a>
	        </div>
	        <div class="policy">
	        	<p>
					<a>Privacy Policy | Terms & Conditions</a> </br> 
					Cancellation Policy: Reservations can be canceled up to 48 hours before arrival without penalty. Please review our full Cancellation Policy for details.
				</p>
	        </div>
        </div>
    </footer>
    </html>