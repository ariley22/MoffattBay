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
  should be at least 8 characters in length and include one number, one uppercase and one lowercase letter, one special character (hint: use regular expression). 
  Passwords should be hashed and/or encrypted using standard security practices (use the Internet for ideas/code snippets; 
  be sure to cite all external authors).</p>
  
  <form id="registrationForm" action="/MoffatBay/mbay" method="POST">
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
          <td><input 
            type="password" 
            id="password" 
            name="password" 
            required 
            pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}" 
            title="Password must be at least 8 characters long, include one uppercase letter, one lowercase letter, one number, and one special character."
        >
        <tr>
        	<td><small class="error" id="passwordError">
        </small></td>
        <td></td>
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
      
       <script>
       //script to validate paassword using a regex:
    	   
        const passwordInput = document.getElementById('password');
        const passwordError = document.getElementById('passwordError');
        const form = document.getElementById('registrationForm');

        // Regex for password validation
        const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

        // Validate password on input
        passwordInput.addEventListener('input', () => {
            if (regex.test(passwordInput.value)) {
                passwordError.style.display = 'none';
                passwordInput.setCustomValidity('');
            } else {
                passwordError.style.display = 'block';
                passwordInput.setCustomValidity('Password must be at least 8 characters long, include one uppercase letter, one lowercase letter, one number, and one special character');
            }
        });

        // Validate again on form submission
        form.addEventListener('submit', (e) => {
            if (!regex.test(passwordInput.value)) {
                e.preventDefault();
                passwordError.style.display = 'block';
                passwordInput.setCustomValidity('Password must be at least 8 characters long, include one uppercase letter, one lowercase letter, one number, and one special character');
            } else {
                passwordError.style.display = 'none';
                passwordInput.setCustomValidity('');
            }
        });
    </script>
</div>
    <jsp:include page="footer.jsp" flush="true"/>

</body>
</html>