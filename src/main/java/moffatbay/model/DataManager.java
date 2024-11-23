package moffatbay.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import moffatbay.beans.User;
import moffatbay.beans.Reservation;

/* Each instance stores all database connection info and is able
 * to start and close a connection */
public class DataManager {
  private String dbURL = "";
  private String dbUserName = "";
  private String dbPassword = "";

  public void setDbURL(String dbURL) {
    this.dbURL = dbURL;
    }
  public String getDbURL() {
    return dbURL;
    }

  public void setDbUserName(String dbUserName) {
    this.dbUserName = dbUserName;
    }
  public String getDbUserName() {
    return dbUserName;
    }

  public void setDbPassword(String dbPassword) {
    this.dbPassword = dbPassword;
    }
  public String getDbPassword() {
    return dbPassword;
    }

  public Connection getConnection() {
    Connection conn = null;
    try {
      conn = DriverManager.getConnection(getDbURL(), getDbUserName(),
          getDbPassword());
      }
    catch (SQLException e) {
      System.out.println("Could not connect to DB: " + e.getMessage());
      }
    return conn;
    }
  public void putConnection(Connection conn) {
    if (conn != null) {
      try { conn.close(); }
      catch (SQLException e) { }
      }
    }
  
  public void insertReservation(Reservation reservation, String email) throws Exception {
	  Connection connection = getConnection();
	  if (connection != null) {
	    Statement stmt = null;
	    try {
	      connection.setAutoCommit(false);
	      stmt = connection.createStatement();
	      try {
	        ReservationPeer.createReservation(stmt, reservation, email, this);
	        try { stmt.close(); }
	        finally { stmt = null; }
	        connection.commit();
	        }
	      catch (SQLException e) {
	        System.out.println("Could not create user: " + e.getMessage());
	        e.printStackTrace();
	        try { connection.rollback(); }
	        catch (SQLException ee) { }
	        }
	      }
	    catch (SQLException e) {
	      System.out.println("Could not create user: " + e.getMessage());
	      e.printStackTrace();
	      }
	    finally {
	      if (stmt != null) {
	        try { stmt.close(); }
	        catch (SQLException e) { }
	        }
	      putConnection(connection);
	      }
	    }
  	}
  public void insertUser(User user) {
	  Connection connection = getConnection();
	  if (connection != null) {
	    Statement stmt = null;
	    try {
	      connection.setAutoCommit(false);
	      stmt = connection.createStatement();
	      try {
	        UserPeer.createUser(stmt, user);
	        try { stmt.close(); }
	        finally { stmt = null; }
	        connection.commit();
	        }
	      catch (SQLException e) {
	        System.out.println("Could not create user: " + e.getMessage());
	        e.printStackTrace();
	        try { connection.rollback(); }
	        catch (SQLException ee) { }
	        }
	      }
	    catch (SQLException e) {
	      System.out.println("Could not create user: " + e.getMessage());
	      e.printStackTrace();
	      }
	    finally {
	      if (stmt != null) {
	        try { stmt.close(); }
	        catch (SQLException e) { }
	        }
	      putConnection(connection);
	      }
	    }
  	}
  public boolean validateUser(String email, String password) {
	  return UserPeer.checkUser(this, email, password);
  }
  
  public int getUserIdFromEmail(String email) {
	  return UserPeer.getUserId(this, email);
  }
}