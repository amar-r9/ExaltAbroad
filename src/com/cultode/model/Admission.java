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
@Table(name = "ADMISSION")
public class Admission implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name = "USER_ID")
	private int user_id;

	@Column(name = "COUNTRY")
	private String country;
	
	@Column(name = "COURSE")
	private String course;
	
	@Column(name = "YEAR_OF_JOINING")
	private String year_of_joining;
	
	@Column(name = "SCHOLARSHIPS")
	private String scholarships;
	
	@Column(name = "ACCOMMODATION")
	private String accommodation;
	
	@Column(name = "DISCIPLINE")
	private String discipline;
	
	@Column(name = "ENQUIRY_DATE")
	private Date enquiry_date;
	
	public Admission() {
		setEnquiry_date(CultodeUtil.getCurrentDate());
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getYear_of_joining() {
		return year_of_joining;
	}

	public void setYear_of_joining(String year_of_joining) {
		this.year_of_joining = year_of_joining;
	}

	public String getScholarships() {
		return scholarships;
	}

	public void setScholarships(String scholarships) {
		this.scholarships = scholarships;
	}

	public String getDiscipline() {
		return discipline;
	}

	public void setDiscipline(String discipline) {
		this.discipline = discipline;
	}

	public String getAccommodation() {
		return accommodation;
	}

	public void setAccommodation(String accommodation) {
		this.accommodation = accommodation;
	}

	public Date getEnquiry_date() {
		return enquiry_date;
	}

	public void setEnquiry_date(Date enquiry_date) {
		this.enquiry_date = enquiry_date;
	}
	
	
	
}
