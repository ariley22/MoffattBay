<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="moffatbay.beans.User"%>
<jsp:useBean id="dataManager" scope="application"
  class="moffatbay.model.DataManager"/>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Sign In</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
</head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<div class="content">
<div class="login-container">
<div class="login-form">
  <h1>Sign In To Existing Account</h1>
  <jsp:useBean id="user" class="moffatbay.beans.User"/>
  <jsp:setProperty property="*" name="user"/>
  <%  dataManager.insertUser(user);
  	session.setAttribute("userObject", user); %>
    
  <form action="/MoffatBay/mbay" method="POST">
      <input type="hidden" name="action" value="validate"/>
      <table class="regform">
        <tr>
          <th colspan="2">Login</th>
          </tr>
        <tr>
          <td>Username/Email Address:</td>
          <td><input type="email" name="email"/></td>
          </tr>
        <tr>
          <td>Password:</td>
          <td><input type="password" name="password"/></td>
          </tr>
         <tr>
          <td>&nbsp;</td>
          <td><input type="submit" value="Sign In"/></td>
         </tr>
        </table>
      </form>
      </div>
      </div>
</div>
    <jsp:include page="footer.jsp" flush="true"/>

</body>
</html>