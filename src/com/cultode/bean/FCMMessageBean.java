package com.cultode.bean;

import com.google.auto.value.AutoValue.Builder;


@Builder
public class FCMMessageBean {
	
	private String to;
	private String collapse_key;
	private String link;
	private Notification notification;
	private Data data;
	
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	
	public String getCollapse_key() {
		return collapse_key;
	}
	public void setCollapse_key(String collapse_key) {
		this.collapse_key = collapse_key;
	}
	
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	
	public Notification getNotification() {
		return notification;
	}
	public void setNotification(Notification notification) {
		this.notification = notification;
	}
	
	public Data getData() {
		return data;
	}
	public void setData(Data data) {
		this.data = data;
	}

}
