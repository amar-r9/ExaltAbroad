package com.cultode.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.CultodeDAO;
import com.cultode.model.CallBack;
import com.cultode.model.Contact;
import com.cultode.model.Event;
import com.cultode.model.Loan;
import com.cultode.model.Notice;
import com.cultode.model.Token;

@Service
public class CultodeServiceImpl implements CultodeService {

	@Autowired
	CultodeDAO tikaanaDao;

	@Override
	public boolean saveEnquiry(Contact contact) {
		return tikaanaDao.saveEnquiry(contact);
	}
	
	@Override
	public List<Event> getUpcomingEventsList() {
		return tikaanaDao.getUpcomingEventsList();
	}

	@Override
	public Event getEvent(int id) {
		return tikaanaDao.getEvent(id);
	}
	
	@Override
	public Notice getLatestNotice(Date date) {
		return tikaanaDao.getLatestNotice(date);
	}

	@Override
	public boolean isMobileExist(String mobile) {
		
		return tikaanaDao.isMobileExist(mobile);
	}

	@Override
	public boolean increaseLoginCount(String username) {
		return tikaanaDao.increaseLoginCount(username);
	}

	@Override
	public boolean applyLoan(Loan loan) {
		return tikaanaDao.applyLoan(loan);
	}

	@Override
	public boolean isUserAppliedForLoan(int user_id) {
		return tikaanaDao.isUserAppliedForLoan(user_id);
	}

	@Override
	public List<Notice> getRecentNotices(int limit) {
		return tikaanaDao.getRecentNotices(limit);
	}

	@Override
	public List<Notice> getAllNotifications(int limit, int offset) {
		return tikaanaDao.getAllNotifications(limit, offset);
	}

	@Override
	public Notice getNoticeDetails(int id) {
		return tikaanaDao.getNoticeDetails(id);
	}

	@Override
	public boolean saveToken(Token token) {
		return tikaanaDao.saveToken(token);
	}

	@Override
	public boolean deleteToken(String username) {
		return tikaanaDao.deleteToken(username);
	}

	@Override
	public String getUserDeviceId(String username) {
		return tikaanaDao.getUserDeviceId(username);
	}

	@Override
	public List<Token> getUserTokens() {
		return tikaanaDao.getUserTokens();
	}

	@Override
	public boolean saveCallBackRequest(CallBack enquiry) {
		return tikaanaDao.saveCallBackRequest(enquiry);
	}

	@Override
	public boolean saveJoinRequest(Contact call) {
		return tikaanaDao.saveJoinRequest(call);
	}
	
}
