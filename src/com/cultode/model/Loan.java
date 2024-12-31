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
@Table(name = "LOAN")
public class Loan implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "USER_ID")
	private int user_id;
	
	@Column(name = "UNIVERSITY")
	private String university;
	
	@Column(name = "SEMESTER")
	private String semester;
	
	@Column(name = "MONEY_NEEDED")
	private double money_needed;
	
	@Column(name = "HOW_SOON")
	private String how_soon;
	
	@Column(name = "ENQUIRY_DATE")
	private Date enquiry_date;

	public Loan() {
		enquiry_date = CultodeUtil.getCurrentDate();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getEnquiry_date() {
		return enquiry_date;
	}

	public void setEnquiry_date(Date enquiry_date) {
		this.enquiry_date = enquiry_date;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public String getUniversity() {
		return university;
	}

	public void setUniversity(String university) {
		this.university = university;
	}

	public double getMoney_needed() {
		return money_needed;
	}

	public void setMoney_needed(double money_needed) {
		this.money_needed = money_needed;
	}

	public String getHow_soon() {
		return how_soon;
	}

	public void setHow_soon(String how_soon) {
		this.how_soon = how_soon;
	}

}
