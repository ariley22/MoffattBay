<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Register</title>
  <link rel="stylesheet" href="/MoffatBay/css/MoffatBay.css" type="text/css"/>
  </head>
<body>
<jsp:include page="TopMenu.jsp" flush="true"/>
<jsp:include page="BottomMenu.jsp" flush="true"/>
<div class="content">
  <h1>Register New Account</h1>
  <p><b>Assignment Instructions:</b> Students can pick the number of fields, but at minimum, there should be fields for: 
  email address, first name, last name, telephone, and password. 
  All customers should be assigned a unique customerId. 
  All customers should use their email address as the “username” field and the password 
  should be at least 8 characters in length and include one number, one uppercase and one lowercase letter (hint: use regular expression). 
  Passwords should be hashed and/or encrypted using standard security practices (use the Internet for ideas/code snippets; 
  be sure to cite all external authors).</p>
</div>
</body>
</html>