package moffatbay.beans;

import java.sql.Date;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

import org.apache.tomcat.jakartaee.commons.lang3.builder.ToStringBuilder;

public class Reservation {
	private String roomType = "";
	private int numGuests = 0;
	private Date checkInDate;
	private Date checkOutDate;

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getNumGuests() {
		return numGuests;
	}

	public void setNumGuests(int numGuests) {
		this.numGuests = numGuests;
	}

	public Date getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		Date dateObj = Date.valueOf(checkInDate);
		if(dateObj != null) this.checkInDate = dateObj;
		else throw new RuntimeException("Failed to parse date: " + checkInDate);
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		Date dateObj = Date.valueOf(checkOutDate);
		this.checkOutDate = dateObj;
	}
	public long getNumNights() {
		LocalDate checkIn = getCheckInDate().toLocalDate();
		LocalDate checkOut = getCheckOutDate().toLocalDate();
		return ChronoUnit.DAYS.between(checkIn, checkOut);
	}
	public double getRoomPrice() throws Exception {
		switch(this.roomType) {
			case "Double Full":
	          return 120;
	        case "Double Queen":
	          return 150;
	        case "Queen":
		      return 135;
	        case "King":
	          return 160;
		    default:
	          throw new Exception("Expected room type, got " + this.roomType);
	          }
	}
	public double calculatePrice() throws Exception {
		return getNumNights() * getRoomPrice();
	}

	@Override
	public String toString()
	{
	  return ToStringBuilder.reflectionToString(this);
	}
}