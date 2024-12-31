package com.cultode.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.transform.Transformers;
import org.hibernate.type.StandardBasicTypes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cultode.bean.MessageBean;
import com.cultode.model.Admin;
import com.cultode.model.BlogArticle;
import com.cultode.model.User;

@Repository
@Transactional
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public Admin validateUser(String username, String password) {
		Session session = sessionFactory.getCurrentSession();
		Admin other = null;
		try {
			System.out.println("\n"+username+password);
			
			Criteria criteria = session.createCriteria(Admin.class);
			criteria.add(Restrictions.eq("username", username));
			other = (Admin) criteria.uniqueResult();
			
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
	public Integer addAdmin(Admin admin) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Integer) session.save(admin);

		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public boolean isAdminExist(String username) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			System.out.println("checking mobile exist or not");
			Criteria criteria = session.createCriteria(Admin.class);
			
			criteria.add(Restrictions.and(Restrictions.eq("username", username)));
			
			Admin admin = (Admin) criteria.uniqueResult();

			if (admin != null)
				return true;
			else
				return false;
		
		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}
	
	}
	
	@Override
	public List<Admin> getAllAdmins() {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(Admin.class);
			criteria.addOrder(Order.asc("id"));
			
			List<Admin> tenants = criteria.list();

			return tenants;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Admin getAdminDetailsById(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Admin) session.get(Admin.class, id);
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public String getAdminNameById(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Admin.class);
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
	public List<User> getUserList() {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.addOrder(Order.desc("id"));
			
			List<User> tenants = criteria.list();

			return tenants;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<User> getUserListByReferral(String code) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(User.class);
			criteria.add(Restrictions.eq("referred_by", code));
			criteria.addOrder(Order.desc("id"));			
			List<User> tenants = criteria.list();

			return tenants;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
