package com.cultode.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.persistence.Table;

import com.cultode.util.CultodeUtil;

@Entity
@Table(name = "USER")
@SecondaryTables({
	@SecondaryTable(name = "USER_IMAGE", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "id", referencedColumnName = "id") }) })
	//,
	//@SecondaryTable(name = "USER_TOKEN", pkJoinColumns = { @PrimaryKeyJoinColumn(name = "id", referencedColumnName = "id") }) })
public class User implements Serializable {

	public interface SaveUser {
	};

	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String name;
	private int id;
	private String mobile;
	private String email;
	private Date reg_date;
	private int active;
	private byte[] image;
	private int points;
	private Date dob;
	private int login_count;
	private String gender;
	private String country;
	private String state;
	private String city;
	
	private String college;
	private String course;
	private String branch;
	private String year;
	private String graduating_year;
	
	private String grad;
	private String stream;
	private String referred_by;
	private int verified;
	private String cgps;

	//@OneToMany(mappedBy = "user")
	//private List<Post> posts;

	//public List<Post> getPosts() {
		//return posts;
	//}

	//public void setPosts(List<Post> posts) {
		//this.posts = posts;
	//}
	
	
	public User() {
		setReg_date(CultodeUtil.getCurrentDate());
		setPoints(25);
		setActive(1);
	}

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "PASSWORD")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "USERNAME")
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "NAME")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "LoginModel{" + "userName=" + username + ", name=" + password + '}';
	}

	public char[] getRandomNumber(int length) {
		String capitalCaseLetters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	      String lowerCaseLetters = "abcdefghijklmnopqrstuvwxyz";
	      String numbers = "1234567890";
	      String combinedChars = capitalCaseLetters + lowerCaseLetters + numbers;
	      Random random = new Random();
	      char[] password = new char[length];

	      password[0] = lowerCaseLetters.charAt(random.nextInt(lowerCaseLetters.length()));
	      password[1] = capitalCaseLetters.charAt(random.nextInt(capitalCaseLetters.length()));
	      password[2] = numbers.charAt(random.nextInt(numbers.length()));
	   
	      for(int i = 3; i< length ; i++) {
	         password[i] = combinedChars.charAt(random.nextInt(combinedChars.length()));
	      }
	      return password;
	}

	@Column(name = "MOBILE")
	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	@Column(name = "EMAIL")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "REG_DATE")
	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	@Column(name = "ACTIVE")
	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}
	
	@Column(table = "USER_IMAGE")
	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	@Column(name = "POINTS")
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	@Column(name = "DOB")
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	@Column(name = "LOGIN_COUNT")
	public int getLogin_count() {
		return login_count;
	}

	public void setLogin_count(int login_count) {
		this.login_count = login_count;
	}

	@Column(name = "GENDER")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Column(name = "COUNTRY")
	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Column(name = "STATE")
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Column(name = "CITY")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name = "COLLEGE")
	public String getCollege() {
		return college;
	}

	public void setCollege(String college) {
		this.college = college;
	}

	@Column(name = "COURSE")
	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	@Column(name = "BRANCH")
	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	@Column(name = "YEAR")
	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	@Column(name = "GRADUATING_YEAR")
	public String getGraduating_year() {
		return graduating_year;
	}

	public void setGraduating_year(String graduating_year) {
		this.graduating_year = graduating_year;
	}

	@Column(name = "GRAD")
	public String getGrad() {
		return grad;
	}

	public void setGrad(String grad) {
		this.grad = grad;
	}

	@Column(name = "STREAM")
	public String getStream() {
		return stream;
	}

	public void setStream(String stream) {
		this.stream = stream;
	}

	@Column(name = "REFERRED_BY")
	public String getReferred_by() {
		return referred_by;
	}

	public void setReferred_by(String referred_by) {
		this.referred_by = referred_by;
	}

	@Column(name = "VERIFIED")
	public int getVerified() {
		return verified;
	}

	public void setVerified(int verified) {
		this.verified = verified;
	}

	@Column(name = "CGPS")
	public String getCgps() {
		return cgps;
	}

	public void setCgps(String cgps) {
		this.cgps = cgps;
	}


	/*
	 * @Column(table = "USER_TOKEN") public String getToken() { return token; }
	 * 
	 * public void setToken(String token) { this.token = token; }
	 */

}
