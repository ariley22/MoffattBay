<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@page import="moffatbay.beans.User"%>
<jsp:useBean id="dataManager" scope="application"
  class="moffatbay.model.DataManager"/>

<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Register</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
  <h1>Register New Account</h1>
  <p><b>Assignment Instructions:</b> 
  All customers should use their email address as the “username” field and the password 
  should be at least 8 characters in length and include one number, one uppercase and one lowercase letter (hint: use regular expression). 
  Passwords should be hashed and/or encrypted using standard security practices (use the Internet for ideas/code snippets; 
  be sure to cite all external authors).</p>
  
  <form action="">
      <input type="hidden" name="action" value="login"/>
      <table class="regform">
        <tr>
          <th colspan="2">Login Info</th>
          </tr>
        <tr>
          <td>Email Address:</td>
          <td><input type="email" name="email"/></td>
          </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" name="password"/></td>
          </tr>
        <tr>
          <th colspan="3">Personal Details</th>
          </tr>
        <tr>
          <td>First Name:</td>
          <td><input type="text" name="firstName"/></td>
          </tr>
        <tr>
          <td>Last Name:</td>
          <td><input type="text" name="lastName"/></td>
          </tr>
        <tr>
          <td>Phone Number:</td>
          <td><input type="tel" name="phoneNumber"/></td>
          </tr>
        <tr>
          <td>&nbsp;</td>
          <td><input type="submit" value="Create Account"/></td>
          </tr>
        </table>
      </form>
</div>
</body>
</html>