package com.cultode.dao;

public interface MailDAO {
	
	public boolean sendMail(String subject,String Text,String recipient,boolean multipleRecipients,String mailTitle);

}
