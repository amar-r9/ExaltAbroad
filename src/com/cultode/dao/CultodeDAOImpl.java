package com.cultode.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cultode.model.CallBack;
import com.cultode.model.Contact;
import com.cultode.model.Event;
import com.cultode.model.Loan;
import com.cultode.model.Notice;
import com.cultode.model.Post;
import com.cultode.model.User;
import com.cultode.model.Token;

@Repository
@Transactional
public class CultodeDAOImpl implements CultodeDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean saveEnquiry(Contact enquiry) {
		Session session = sessionFactory.getCurrentSession();

		try {
			/*
			 * System.out.println("photo size" + photo.available()); if (photo
			 * != null && photo.available() > 0) { // UserProfileImage
			 * profileImage = new UserProfileImage(); byte[] image =
			 * IOUtils.toByteArray(photo); user.setImage(image); }
			 */
			//other.setTxnref("MSBU00" + (getStudentMaxID() + 1));

			session.save(enquiry);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Event> getUpcomingEventsList() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Event.class);

			criteria.addOrder(Order.desc("id"));

			//if (limit != 0)
				//criteria.setMaxResults(limit);
			List<Event> events = criteria.list();

			return events;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Event getEvent(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Event) session.get(
					Event.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Notice getLatestNotice(Date date) {
		Session session = sessionFactory.getCurrentSession();

		System.out.println("In DAOImpl \n");
		System.out.println("The utl date is : "+date);
		try {
			Criteria criteria = session.createCriteria(Notice.class);

			criteria.add(Restrictions.eq("date", date));

			Notice propertyDetails = (Notice) criteria.uniqueResult();
			return propertyDetails;

		} catch(HibernateException exception){
		     exception.printStackTrace();
				return null;
		}
	}
	
	@Override
	public boolean isMobileExist(String mobile) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			System.out.println("checking mobile exist or not");
			Criteria criteria = session.createCriteria(User.class);
			
			criteria.add(Restrictions.and(Restrictions.eq("mobile", mobile)));
			criteria.add(Restrictions.and(Restrictions.isNull("moveout_date")));
			
			User user = (User) criteria.uniqueResult();

			if (user != null)
				return true;
			else
				return false;
		
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	
	}
	
	@Override
	public boolean increaseLoginCount(String username) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", username));
			User other = (User) criteria.uniqueResult();
			other.setLogin_count(other.getLogin_count() + 1);
			session.merge(other);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean applyLoan(Loan loan) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(loan);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isUserAppliedForLoan(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			System.out.println("checking mobile exist or not");
			Criteria criteria = session.createCriteria(Loan.class);
			
			criteria.add(Restrictions.and(Restrictions.eq("user_id", id)));
			
			Loan loan = (Loan) criteria.uniqueResult();

			if (loan != null)
				return true;
			else
				return false;
		
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> getRecentNotices(int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Notice.class);

			criteria.addOrder(Order.desc("id"));

			if (limit != 0)
			criteria.setMaxResults(limit);
			List<Notice> events = criteria.list();

			return events;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Notice> getAllNotifications(int limit,
			int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Notice.class);
			criteria.addOrder(Order.desc("id"));
			if (offset != 0)
				criteria.setFirstResult(offset);
			if (limit != 0)
				criteria.setMaxResults(limit);

			List<Notice> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Notice getNoticeDetails(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Notice) session.get(Notice.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveToken(Token token) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(token);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean deleteToken(String sessionId) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Query deleteQuery = session
				.createQuery("delete from Token where session_id = :acode");
				deleteQuery.setParameter("acode", sessionId);

				int deleted = deleteQuery.executeUpdate();
				System.out.println(deleted);
				if (deleted > 0) {
					return true;
				} else {
					return false;
				}

		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
	@Override
	public String getUserDeviceId(String username) {
		Session session = sessionFactory.getCurrentSession();

		try {

			Criteria criteria = session.createCriteria(Token.class);
			
			Criterion scode = Restrictions.eq("sessionId", username);
			criteria.add(Restrictions.and(scode));
			criteria.setProjection(Projections.property("deviceId"));
			String token = (String) criteria.uniqueResult();

			return token;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Token> getUserTokens() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Token.class);

			criteria.addOrder(Order.desc("id"));

			List<Token> events = criteria.list();

			return events;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveCallBackRequest(CallBack request) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(request);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	@Override
	public boolean saveJoinRequest(Contact request) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(request);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
