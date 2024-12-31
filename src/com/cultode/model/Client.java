package com.cultode.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "CLIENT")
public class Client implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "FULL_NAME")
	private String full_name;
	
	@Column(name = "SHORT_NAME")
	private String short_name;
	
	@Column(name = "CITY")
	private String city;
	
	@Column(name = "STATE")
	private String state;

	@Column(name = "GST")
	private String gst;
	
	@Column(name = "POC_NAME")
	private String poc_name;
	
	@Column(name = "POC_MOBILE")
	private String poc_mobile;
	
	@Column(name = "POC_EMAIL")
	private String poc_email;

	public Client() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getShort_name() {
		return short_name;
	}

	public void setShort_name(String short_name) {
		this.short_name = short_name;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getPoc_name() {
		return poc_name;
	}

	public void setPoc_name(String poc_name) {
		this.poc_name = poc_name;
	}

	public String getPoc_mobile() {
		return poc_mobile;
	}

	public void setPoc_mobile(String poc_mobile) {
		this.poc_mobile = poc_mobile;
	}

	public String getPoc_email() {
		return poc_email;
	}

	public void setPoc_email(String poc_email) {
		this.poc_email = poc_email;
	}

}
