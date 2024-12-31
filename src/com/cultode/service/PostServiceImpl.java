package com.cultode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.EventDAO;
import com.cultode.dao.PostDAO;
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Post;
import com.cultode.model.PostComments;

@Service
public class PostServiceImpl implements PostService {

	@Autowired
	PostDAO postDao;

	@Override
	public boolean saveUserPost(Post post) {
		return postDao.saveUserPost(post);
	}

	@Override
	public List<Post> getRecentPosts(int limit) {
		return postDao.getRecentPosts(limit);
	}

	@Override
	public List<Post> getAllPosts(int limit, int offset) {
		return postDao.getAllPosts(limit, offset);
	}

	@Override
	public Post getPostEntry(int id) {
		return postDao.getPostEntry(id);
	}

	@Override
	public boolean incNoOfViews(int id) {
		return postDao.incNoOfViews(id);
	}

	@Override
	public List<Post> getUserPosts(int user_id, int limit) {
		return postDao.getUserPosts(user_id, limit);
	}

	@Override
	public List<PostComments> getPostComments(int id, int limit) {
		return postDao.getPostComments(id, limit);
	}

	@Override
	public boolean saveComment(PostComments comment) {
		return postDao.saveComment(comment);
	}

	@Override
	public List<JobPosts> getAllJobPosts(int limit, int offset) {
		return postDao.getAllJobPosts(limit, offset);
	}

	@Override
	public JobPosts getJobPostDetails(int id) {
		return postDao.getJobPostDetails(id);
	}

	@Override
	public boolean incJobNoOfViews(int id) {
		return postDao.incJobNoOfViews(id);
	}

	@Override
	public List<JobPosts> getRecentJobPosts(int limit) {
		return postDao.getRecentJobPosts(limit);
	}

	@Override
	public boolean applyForJob(JobApplications app) {
		return postDao.applyForJob(app);
	}

	@Override
	public boolean isAppliedForThisJob(int job_id, int user_id) {
		return postDao.isAppliedForThisJob(job_id, user_id);
	}

	@Override
	public List<JobApplications> getUserAppliedJobs(int user_id, int limit) {
		return postDao.getUserAppliedJobs(user_id, limit);
	}
	
}
