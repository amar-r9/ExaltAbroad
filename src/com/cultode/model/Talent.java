package com.cultode.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.cultode.util.CultodeUtil;

@Entity
@Table(name = "TALENT")
public class Talent implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_ID")
	private int user_id;
	
	@Column(name = "CLIENT_ID")
	private int client_id;

	@Column(name = "SUBMIT_DATE")
	private Date submit_date;

	@Column(name = "FILENAME")
	private String filename;
	
	@Column(name = "SUMMARY")
	private String summary;
	
	@Column(name = "VIEWS")
	private int views;
	
	@Column(name = "POINTS")
	private int points;
	
	@Column(name = "SUBMIT_TIME")
	private Timestamp submit_time;
	
	@Column(name = "CATEGORY")
	private String category;
	
	@Column(name = "REPORTS")
	private int reports;
	
	@ManyToOne(targetEntity = User.class, fetch = FetchType.EAGER)
	@JoinColumn(name = "USER_ID", referencedColumnName = "ID", insertable = false, updatable = false)
	
	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Talent() {
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
	

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}
	

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}
	

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}
	

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	

	public int getClient_id() {
		return client_id;
	}

	public void setClient_id(int client_id) {
		this.client_id = client_id;
	}
	

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
	

	public Timestamp getSubmit_time() {
		return submit_time;
	}

	public void setSubmit_time(Timestamp submit_time) {
		this.submit_time = submit_time;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getReports() {
		return reports;
	}

	public void setReports(int reports) {
		this.reports = reports;
	}

}
