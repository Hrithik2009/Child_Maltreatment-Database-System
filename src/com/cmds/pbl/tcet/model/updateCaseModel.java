package com.cmds.pbl.tcet.model;

public class updateCaseModel {
	
	private int complaint_id;
    private String registration;
    private String registration_date;
    private String reviewed;
    private String review_date;
    private String action;
    private String action_date;
    private String case_solved;
    private String solved_date;
	public int getComplaint_id() {
		return complaint_id;
	}
	public void setComplaint_id(int complaint_id) {
		this.complaint_id = complaint_id;
	}
	public String getRegistration() {
		return registration;
	}
	public void setRegistration(String registration) {
		this.registration = registration;
	}
	public String getRegistration_date() {
		return registration_date;
	}
	public void setRegistration_date(String registration_date) {
		this.registration_date = registration_date;
	}
	public String getReviewed() {
		return reviewed;
	}
	public void setReviewed(String reviewed) {
		this.reviewed = reviewed;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}
	public String getAction_date() {
		return action_date;
	}
	public void setAction_date(String action_date) {
		this.action_date = action_date;
	}
	public String getCase_solved() {
		return case_solved;
	}
	public void setCase_solved(String case_solved) {
		this.case_solved = case_solved;
	}
	public String getSolved_date() {
		return solved_date;
	}
	public void setSolved_date(String solved_date) {
		this.solved_date = solved_date;
	}

}
