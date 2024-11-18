package moffatbay.model;

import java.sql.*;
import moffatbay.beans.User;

public class UserPeer {

  public static void createUser(Statement stmt,
      User user) throws SQLException {
    String sql = "insert into customers (email, first_name,"
        + " last_name, phone_number, password) values ('"
    	+ user.getEmail() + "','"
        + user.getFirstName() + "','"
        + user.getLastName() + "','" + user.getPhoneNumber()
        + "','" + user.getPassword() + "')"
        ;
    stmt.executeUpdate(sql);
    }
  
  	public static boolean checkUser(DataManager dataManager, String email, String passwordInput) {
  		String hashedPassword = HashUtil.hashPassword(passwordInput);
  		
		String query = "SELECT password FROM customers WHERE email = ?";

		try (Connection conn = dataManager.getConnection();
			PreparedStatement stmt = conn.prepareStatement(query)) {
		            
		        // Set the email parameter in the query
		        stmt.setString(1, email);
		            
		        // Execute the query and get the result
		        try (ResultSet rs = stmt.executeQuery()) {
		        	if (rs.next()) {
		        		String password = rs.getString("password");
		                    
		                if (password.equals(hashedPassword)) {
		                	return true; // The user is valid
		                }
		            }
		        }
		            
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        
		        return false; // Either email doesn't exist or password doesn't match
  	}
  }