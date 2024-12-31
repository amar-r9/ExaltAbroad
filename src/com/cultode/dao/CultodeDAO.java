package com.cultode.dao;

import java.sql.Date;
import java.util.List;

import com.cultode.model.CallBack;
import com.cultode.model.Contact;
import com.cultode.model.Event;
import com.cultode.model.Loan;
import com.cultode.model.Notice;
import com.cultode.model.Token;

public interface CultodeDAO {

	public boolean saveEnquiry(Contact contact);

	public List<Event> getUpcomingEventsList();

	public Event getEvent(int id);

	public Notice getLatestNotice(Date date);

	public boolean isMobileExist(String mobile);

	public boolean increaseLoginCount(String username);

	public boolean applyLoan(Loan loan);

	public boolean isUserAppliedForLoan(int user_id);

	public List<Notice> getRecentNotices(int limit);

	public List<Notice> getAllNotifications(int limit, int offset);

	public Notice getNoticeDetails(int id);

	public boolean saveToken(Token token);

	public boolean deleteToken(String sessionId);

	public String getUserDeviceId(String username);

	public List<Token> getUserTokens();

	public boolean saveCallBackRequest(CallBack enquiry);

	public boolean saveJoinRequest(Contact call);
	
}
