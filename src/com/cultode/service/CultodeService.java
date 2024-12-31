package com.cultode.service;

import java.sql.Date;
import java.util.List;

import com.cultode.model.CallBack;
import com.cultode.model.Contact;
import com.cultode.model.Event;
import com.cultode.model.Loan;
import com.cultode.model.Notice;
import com.cultode.model.Talent;
import com.cultode.model.Token;
import com.cultode.model.VisaGuidance;

public interface CultodeService {

	public boolean saveEnquiry(Contact contact);

	public Event getEvent(int id);

	public List<Event> getUpcomingEventsList();

	public Notice getLatestNotice(Date currentDate);

	public boolean isMobileExist(String mobile);

	public boolean increaseLoginCount(String username);

	public boolean applyLoan(Loan loan);

	public boolean isUserAppliedForLoan(int id);

	public List<Notice> getRecentNotices(int client_id);

	public List<Notice> getAllNotifications(int limit, int offset);

	public Notice getNoticeDetails(int id);

	public boolean saveToken(Token token);

	public boolean deleteToken(String username);
	
	public String getUserDeviceId(String username);

	public List<Token> getUserTokens();

	public boolean saveCallBackRequest(CallBack enquiry);

	public boolean saveJoinRequest(Contact call);

}
