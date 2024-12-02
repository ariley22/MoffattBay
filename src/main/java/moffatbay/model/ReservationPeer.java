package moffatbay.model;

import java.sql.*;
import moffatbay.beans.Reservation;

public class ReservationPeer {

  public static void createReservation(Statement stmt,
      Reservation reservation, String email, DataManager dataManager) throws Exception {
	  int userId = dataManager.getUserIdFromEmail(email);
    String sql = "insert into reservations (customer_id, room_type, number_of_guests,"
        + " check_in_date, check_out_date, total_cost) values ('"
    	+ userId + "','" + reservation.getRoomType() + "','"
        + reservation.getNumGuests() + "','"
        + reservation.getCheckInDate() + "','" + reservation.getCheckOutDate()
        + "','" + reservation.calculatePrice() + "')"
        ;
    stmt.executeUpdate(sql);
    }
  public static String getResByResId(DataManager dataManager, int resId) {
		String query = "SELECT * FROM reservations WHERE reservation_id = ?";
	    StringBuilder result = new StringBuilder();
		try (Connection conn = dataManager.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query)) {
			            
			        // Set the email parameter in the query
			        stmt.setInt(1, resId);
			            
			        // Execute the query and get the result
			        try (ResultSet rs = stmt.executeQuery()) {
			        	while (rs.next()) {
			        		String roomSize = rs.getString("room_type");
			        		int numGuests = rs.getInt("number_of_guests");
			        		Date checkIn = rs.getDate("check_in_date");
			        		Date checkOut = rs.getDate("check_out_date");
			        		
			        		result.append("Room size: ").append(roomSize).append("<br/>")
		                      .append("Number of Guests: ").append(numGuests).append("<br/>")
		                      .append("Check-in: ").append(checkIn).append("<br/>")
		                      .append("Check-out: ").append(checkOut).append("<br/><br/>");
			            }
			        }
			            
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
		return result.length() > 0 ? result.toString() : "Error processing reservation data";
  }
  
  public static String getResbyUserId(DataManager dataManager, int userId) {
		String query = "SELECT * FROM reservations WHERE customer_id = ?";
	    StringBuilder result = new StringBuilder();
		try (Connection conn = dataManager.getConnection();
				PreparedStatement stmt = conn.prepareStatement(query)) {
			            
			        // Set the email parameter in the query
			        stmt.setInt(1, userId);
			            
			        // Execute the query and get the result
			        try (ResultSet rs = stmt.executeQuery()) {
			        	while (rs.next()) {
			        		String roomSize = rs.getString("room_type");
			        		int numGuests = rs.getInt("number_of_guests");
			        		Date checkIn = rs.getDate("check_in_date");
			        		Date checkOut = rs.getDate("check_out_date");
			        		
			        		result.append("Room size: ").append(roomSize).append("<br/>")
		                      .append("Number of Guests: ").append(numGuests).append("<br/>")
		                      .append("Check-in: ").append(checkIn).append("<br/>")
		                      .append("Check-out: ").append(checkOut).append("<br/><br/>");			            }
			        }
			            
			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
		return result.length() > 0 ? result.toString() : "Error processing reservation data";
  }
  
  }