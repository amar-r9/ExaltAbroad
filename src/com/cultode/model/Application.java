package com.cultode.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.cultode.util.CultodeUtil;


@Entity
@Table(name = "APPLICATION")
public class Application implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "USER_ID")
	private int user_id;
	
	@Column(name = "SHORTLIST_ID")
	private int shortlist_id;

	@Column(name = "STATE_OF_PURPOSE")
	private String state_of_purpose;
	
	@Column(name = "FILENAME")
	private String filename;
	
	@Column(name = "SUBMIT_DATE")
	private Date submit_date;
	
	
	public Application() {
		setSubmit_date(CultodeUtil.getCurrentDate());
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getSubmit_date() {
		return submit_date;
	}

	public void setSubmit_date(Date submit_date) {
		this.submit_date = submit_date;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getState_of_purpose() {
		return state_of_purpose;
	}

	public void setState_of_purpose(String state_of_purpose) {
		this.state_of_purpose = state_of_purpose;
	}

	public int getShortlist_id() {
		return shortlist_id;
	}

	public void setShortlist_id(int shortlist_id) {
		this.shortlist_id = shortlist_id;
	}

}
