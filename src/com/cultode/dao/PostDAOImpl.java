package com.cultode.dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cultode.model.BlogArticle;
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Messages;
import com.cultode.model.Post;
import com.cultode.model.PostComments;
import com.cultode.model.User;

@Repository
@Transactional
public class PostDAOImpl implements PostDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveUserPost(Post post) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(post);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Post> getRecentPosts(int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Post.class);
			criteria.addOrder(Order.desc("id"));
			
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<Post> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Post> getAllPosts(int limit, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Post.class);

			criteria.addOrder(Order.desc("id"));
			if (offset != 0)
				criteria.setFirstResult(offset);
			if (limit != 0)
				criteria.setMaxResults(limit);

			List<Post> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public Post getPostEntry(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (Post) session.get(Post.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean incNoOfViews(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			
			Criteria criteria = session.createCriteria(Post.class);
			criteria.add(Restrictions.eq("id", id));
			Post competitionText = (Post) criteria
					.uniqueResult();
			competitionText.setViews(competitionText.getViews() + 1);
			session.update(competitionText);
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
	public List<Post> getUserPosts(int user_id, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(Post.class);
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.desc("id"));
			
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<Post> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<PostComments> getPostComments(int id, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(PostComments.class);
			criteria.add(Restrictions.eq("post_id", id));
			criteria.addOrder(Order.desc("id"));
			
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<PostComments> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean saveComment(PostComments comment) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(comment);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	
	
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<JobPosts> getAllJobPosts(int limit, int offset) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(JobPosts.class);

			criteria.addOrder(Order.desc("id"));
			if (offset != 0)
				criteria.setFirstResult(offset);
			if (limit != 0)
				criteria.setMaxResults(limit);

			List<JobPosts> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public JobPosts getJobPostDetails(int id) {
		Session session = sessionFactory.getCurrentSession();

		try {
			return (JobPosts) session.get(JobPosts.class, id);

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean incJobNoOfViews(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			
			Criteria criteria = session.createCriteria(JobPosts.class);
			criteria.add(Restrictions.eq("id", id));
			JobPosts competitionText = (JobPosts) criteria
					.uniqueResult();
			competitionText.setViews(competitionText.getViews() + 1);
			session.update(competitionText);
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
	public List<JobPosts> getRecentJobPosts(int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(JobPosts.class);
			criteria.addOrder(Order.desc("id"));
			
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<JobPosts> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@Override
	public boolean applyForJob(JobApplications app) {
		Session session = sessionFactory.getCurrentSession();

		try {
			session.save(app);
			return true;

		} catch (HibernateException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	@Override
	public boolean isAppliedForThisJob(int job_id, int user_id) {
		Session session = sessionFactory.getCurrentSession();
		
		try {
			Criteria criteria = session.createCriteria(JobApplications.class);
			
			criteria.add(Restrictions.and(Restrictions.eq("job_id", job_id)));
			criteria.add(Restrictions.and(Restrictions.eq("user_id", user_id)));
			
			JobApplications app = (JobApplications) criteria.uniqueResult();

			if (app != null)
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
	public List<JobApplications> getUserAppliedJobs(int user_id, int limit) {
		Session session = sessionFactory.getCurrentSession();

		try {
			Criteria criteria = session
					.createCriteria(JobApplications.class);
			criteria.add(Restrictions.eq("user_id", user_id));
			criteria.addOrder(Order.desc("id"));
			
			if (limit != 0)
				criteria.setMaxResults(limit);
			List<JobApplications> Articles = criteria.list();

			return Articles;

		} catch (HibernateException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
