package com.cultode.dao;

import java.util.List;

import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Post;
import com.cultode.model.PostComments;

public interface PostDAO {

	public boolean saveUserPost(Post post);

	public List<Post> getRecentPosts(int client_id);

	public List<Post> getAllPosts(int limit, int offset);

	public Post getPostEntry(int id);

	public boolean incNoOfViews(int id);

	public List<Post> getUserPosts(int user_id, int limit);

	public List<PostComments> getPostComments(int id, int limit);

	public boolean saveComment(PostComments comment);

	public List<JobPosts> getAllJobPosts(int limit, int offset);

	public JobPosts getJobPostDetails(int id);

	public boolean incJobNoOfViews(int id);

	public List<JobPosts> getRecentJobPosts(int limit);

	public boolean applyForJob(JobApplications app);

	public boolean isAppliedForThisJob(int job_id, int user_id);

	public List<JobApplications> getUserAppliedJobs(int user_id, int limit);
	
}
