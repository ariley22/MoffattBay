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
					Privacy Policy | Terms & Conditions </br> We value your privacy and are committed to protecting your personal information. Read our full Privacy Policy for details on data handling and security measures.
					Terms of Service: By accessing our website and services, you agree to our Terms of Service, which outline your rights and responsibilities while using our site.
					Cancellation Policy: Reservations can be canceled up to 48 hours before arrival without penalty. Please review our full Cancellation Policy for details.
				</p>
	        </div>
        </div>
        <p>&copy; 2024 Moffat Bay Lodge. All rights reserved.</p>
    </footer>
    </html>