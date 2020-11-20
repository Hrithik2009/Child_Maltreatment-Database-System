package com.cmds.pbl.tcet.model;

public class lodgecomplaint {
	private String username;
	private String city;
	private String email;
	private String mob_no;
	private String registration_date;
	
	
	public String getRegistration_date() {
		return registration_date;
	}
	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}
	private String abuse_type;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMob_no() {
		return mob_no;
	}
	public void setMob_no(String mob_no) {
		this.mob_no = mob_no;
	}
	public String getAbuse_type() {
		return abuse_type;
	}
	public void setAbuse_type(String abuse_type) {
		this.abuse_type = abuse_type;
	}
	
}
