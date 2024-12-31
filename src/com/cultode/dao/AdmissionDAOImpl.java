package com.cultode.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cultode.model.Accommodation;
import com.cultode.model.Admission;
import com.cultode.model.Application;
import com.cultode.model.BlogArticle;
import com.cultode.model.FlightTickets;
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Messages;
import com.cultode.model.Post;
import com.cultode.model.PostComments;
import com.cultode.model.Shortlist;
import com.cultode.model.Tests;
import com.cultode.model.University;
import com.cultode.model.User;
import com.cultode.model.VisaGuidance;

@Repository
@Transactional
public class AdmissionDAOImpl implements AdmissionDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveShortlist(Shortlist list) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(list);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean saveUserTest(Tests test) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(test);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Tests> getUserTestsList(int user_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Tests.class);
			
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.asc("test_date"));			

			List<Tests> tests = criteria.list();

			return tests;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveTestScore(int id, String score) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Tests.class);
			criteria.add(Restrictions.eq("id", id));
			Tests test = (Tests) criteria.uniqueResult();
			test.setScore(score);
			session.merge(test);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public String getUniversities(String name) {
		Session session = sessionFactory.getCurrentSession();
		StringBuffer colleges = new StringBuffer();
		try {
			Criteria criteria = session.createCriteria(University.class);
			//criteria.add(Restrictions.ilike("location", location, MatchMode.ANYWHERE));
			criteria.setProjection(Projections.distinct(Projections.property("name")));
			List<String> locations = criteria.list();
			colleges.append("[");
			for (String list : locations) {
				colleges.append("\"");
				colleges.append(list.toString());
				colleges.append("\"");
				colleges.append(",");
			}
			colleges.append("]");

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
		return colleges.toString();
	}
	
	@Override
	public boolean saveAccommodationRequest(Accommodation accommodation) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(accommodation);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean saveTicketsRequest(FlightTickets accommodation) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(accommodation);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Shortlist> getUserShortList(int user_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Shortlist.class);
			
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.asc("id"));			

			List<Shortlist> tests = criteria.list();

			return tests;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Accommodation> getUserAccommodationRequests(int user_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Accommodation.class);
			
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.asc("id"));			

			List<Accommodation> tests = criteria.list();

			return tests;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<FlightTickets> getUserTicketsRequests(int user_id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(FlightTickets.class);
			
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.asc("id"));			

			List<FlightTickets> tests = criteria.list();

			return tests;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveUserAdmission(Admission list) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(list);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean saveUserApplication(Application list) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(list);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean saveVisaGuidance(VisaGuidance visa) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(visa);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
}
