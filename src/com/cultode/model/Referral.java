package com.cultode.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

@Entity
@Table(name = "REFERRAL")

public class Referral implements Serializable {

	public interface SaveUser {
	};

	private static final long serialVersionUID = 1L;
	private int id;
	private int referred_user;
	private String registered_user;
	private int points;
	private String status;

	public Referral() {
		
	}

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "REFERRED_USER")
	public int getReferred_user() {
		return referred_user;
	}

	public void setReferred_user(int referred_user) {
		this.referred_user = referred_user;
	}

	@Column(name = "REGISTERED_USER")
	public String getRegistered_user() {
		return registered_user;
	}

	public void setRegistered_user(String registered_user) {
		this.registered_user = registered_user;
	}

	@Column(name = "STATUS")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "POINTS")
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

}
