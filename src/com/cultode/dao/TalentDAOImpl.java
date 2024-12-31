package com.cultode.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cultode.model.Talent;

@Repository
@Transactional
public class TalentDAOImpl implements TalentDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveUserTalent(Talent post) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(post);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public Integer getTalentMaxId() {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Talent.class);
			criteria.setProjection(Projections.max("id"));
			Integer id = (Integer) criteria.uniqueResult();
			if (id != null)
				return id;
			else
				return 1;
		} catch (HibernateException e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	@Override
	public boolean saveEntryVisit(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			Criteria criteria = session.createCriteria(Talent.class);
			criteria.add(Restrictions.eq("id", id));
			Talent entry = (Talent) criteria.uniqueResult();
			entry.setViews(entry.getViews() + 1);
			session.merge(entry);
			return true;
		} catch (HibernateException exception) {
			exception.printStackTrace();
			return false;
		}

	}
	
	@Override
	public List<Talent> getAllTalentEntriesByUser(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session.createCriteria(Talent.class);
			criteria.add(Restrictions.eq("user_id", id));
				criteria.addOrder(Order.asc("id"));
				List<Talent> sessions = criteria.list();

			return sessions;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Talent getTalentEntry(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Talent) session.get(Talent.class, id);
		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
