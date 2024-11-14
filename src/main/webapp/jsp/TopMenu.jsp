<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  String base = (String)application.getAttribute("base");
  %>
<div class="header">
	<div class="logo">
    	<p><a href="index.jsp"><b>MOFFAT BAY LODGE</b></a></p>
	</div></div>
	<div class="accounts">
		 <p><a href="<%=base%>?action=login">Sign In</a>
		 <a href="<%=base%>?action=register">Register</a></p>
	</div>
 <div class="navigation">
  <ul>
    <li><a class="link2" href="<%=base%>?action=about">About</a></li>
    <li><a class="link2" href="<%=base%>?action=reserve">Book Your Vacation</a></li>
    <li><a class="link2" href="<%=base%>?action=lookup">Look Up Reservation</a></li>
    <li><a class="link2" href="<%=base%>?action=attractions">Attractions</a></li>
    <li><a class="link2" href="<%=base%>?action=contact">Contact Us</a></li>
    </ul>
</div>