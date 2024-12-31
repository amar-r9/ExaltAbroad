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

/**
 * @author 91970
 *
 */
@Entity
@Table(name = "ACCOMMODATION")
public class Accommodation implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "USER_ID")
	private int user_id;

	@Column(name = "LOCATION")
	private String location;
	
	@Column(name = "UNIVERSITY")
	private String university;
	
	@Column(name = "START_FROM")
	private Date start_from;
	
	@Column(name = "SHARING")
	private String sharing;
	
	@Column(name = "BUDGET")
	private String budget;
	
	public Accommodation() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public Date getStart_from() {
		return start_from;
	}

	public void setStart_from(Date start_from) {
		this.start_from = start_from;
	}

	public String getSharing() {
		return sharing;
	}

	public void setSharing(String sharing) {
		this.sharing = sharing;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}
	
}
