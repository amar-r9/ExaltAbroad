package com.cultode.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
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

import com.cultode.model.Admin;
import com.cultode.model.Referral;
import com.cultode.model.User;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User validateUser(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		User other = null;
		try {
			System.out.println("\n"+username+password);
			
			Criteria criteria = session.createCriteria(User.class);
			Criterion userId = Restrictions.eq("username", username);
			Criterion status = Restrictions.eq("active", 1);
			criteria.add(Restrictions.and(userId, status));
			other = (User) criteria.uniqueResult();
			
			if (other != null && other.getUsername() != null
					&& !other.getUsername().isEmpty()) {
				if (other.getPassword().equals(password)) {
					return other;
				}

			} else
				return null;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}

		return null;
	}

	@Override
	public User getUserDetails(String username) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;
		try {

			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", username));
			user = (User) criteria.uniqueResult();

			return user;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean isUserExist(String username) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;
		try {
			System.out.println("checking username exist or not");
			Criteria criteria = session.createCriteria(User.class);
			Criterion userId = Restrictions.eq("username", username);
			Criterion status = Restrictions.eq("active", 1);
			criteria.add(Restrictions.and(userId, status));
			user = (User) criteria.uniqueResult();

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
	public Map<String, String> getUserPassword(String userNameOrMail) {
		Session session = sessionFactory.getCurrentSession();
		Map<String, String> usermap = new HashMap<String, String>();
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("username", userNameOrMail));
			User user = (User) criteria.uniqueResult();

			if (user != null)
				usermap.put(user.getEmail(), user.getPassword());

			return usermap;

		} catch (HibernateException exception) {
			exception.printStackTrace();
			return null;
		}
	}

	@Override
	public boolean saveUser(User user) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.flush();
			session.save(user);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean activateRegisteredUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean changePassword(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateProfilePicture(User user) {
		return false;
	}

	@Override
	public boolean updateUserDetails(User user) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.update(user);
			session.flush();
			session.refresh(user);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean updateUserPoints(int user_id, int points) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("id", user_id));
			User user = (User) criteria.uniqueResult();
			user.setPoints(user.getPoints() + points);
			session.update(user);
			/*
			 * session.flush(); session.refresh(user);
			 */
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> getTopUsers(int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			//int limit = 5;
			Criteria criteria = session.createCriteria(User.class);
			criteria.addOrder(Order.desc("points"));
			criteria.setMaxResults(limit);
			List<User> competitions = criteria.list();

			return competitions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public User getUserDetailsById(int id) {
		Session session = sessionFactory.getCurrentSession();
		User user = null;

		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("id", id));
			user = (User) criteria.uniqueResult();

			return user;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public String getUserNameById(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("id", id));

			criteria.setProjection(Projections.property("name"));
			String name = (String) criteria.uniqueResult();
			return name;
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUsersList(int sessionUser, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.neOrIsNotNull("id", sessionUser));
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<User> users = criteria.list();
			return users;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Integer> getUserId(int id, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.neOrIsNotNull("id", id));
			if (limit != 0)
				criteria.setMaxResults(limit);
			criteria.setProjection(Projections.property("id"));
			List<Integer> ids = criteria.list();
			return ids;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveUserReference(Referral ref) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.flush();
			session.save(ref);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	}
	
}
