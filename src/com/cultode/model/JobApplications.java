package com.cultode.model;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "JOB_APPLICATIONS")
public class JobApplications implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_ID")
	private int user_id;

	@Column(name = "JOB_ID")
	private int job_id;

	@Column(name = "STATUS")
	private String status;

	@Column(name = "APPLIED_DATE")
	private Date applied_date;

	
	@ManyToOne(optional = false)
	@JoinColumn(name = "JOB_ID", referencedColumnName = "id", updatable = false, insertable = false)
	private JobPosts job;

	public JobPosts getJob() {
		return job;
	}
	public void setJob(JobPosts job) {
		this.job = job;
	}

	@ManyToOne(optional = false)
	@JoinColumn(name = "USER_ID", referencedColumnName = "id", updatable = false, insertable = false)
	private User user;

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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
	
	public int getJob_id() {
		return job_id;
	}
	public void setJob_id(int job_id) {
		this.job_id = job_id;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public Date getApplied_date() {
		return applied_date;
	}
	public void setApplied_date(Date applied_date) {
		this.applied_date = applied_date;
	}

}
