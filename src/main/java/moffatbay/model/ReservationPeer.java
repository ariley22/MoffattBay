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
  
  }