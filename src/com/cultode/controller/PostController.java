package com.cultode.controller;

import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cultode.model.BlogArticle;
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Messages;
import com.cultode.model.Post;
import com.cultode.model.PostComments;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.PostService;
import com.cultode.service.UserService;
import com.cultode.util.CultodeUtil;


@Controller
public class PostController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CultodeService cultodeService;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private PostService postService;
	
	@ResponseBody
	@RequestMapping(value = "/mobile/save-post", method = RequestMethod.POST)
	public String saveUserPost(@ModelAttribute Post post,
			HttpSession session) {
			
		User user = (User) session.getAttribute("User");
		post.setUser_id(user.getId());
		Timestamp time = Timestamp.from(Instant.now());
		post.setPost_time(time);
		
		boolean save = postService.saveUserPost(post);
			if (save) {
				userService.updateUserPoints(user.getId(), 10);
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/mobile/user/posts/list", method = RequestMethod.GET)
	public ModelAndView showPosts(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		//int totalArticlesCount = articleService.getBlogArticlesCount("all");
		//modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		//System.out.println("totalArticlesCount"+totalArticlesCount);
		List<Post> posts=postService.getAllPosts(10, 0);
		modelAndView.addObject("posts", posts);
		//List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(user.getClient_id(), 5);
		//modelAndView.addObject("recentArticles", recentArticles);
		//List<String> categories=articleService.getBlogArticleCategoryList();
		//modelAndView.addObject("categories", categories);
		//modelAndView.addObject("category", category);
		modelAndView.setViewName("/mobile/posts/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/mobile/user/posts/view/{id}",method=RequestMethod.GET)
	public ModelAndView showPost(@PathVariable int id, HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		Post post=postService.getPostEntry(id);
		modelAndView.addObject("post", post);
		boolean saved = postService.incNoOfViews(id);

		List<Post> posts = postService.getRecentPosts(2);
		modelAndView.addObject("posts", posts);
		//int totalArticlesCount = articleService.getBlogArticlesCount("all");
		List<PostComments> comments = postService.getPostComments(id, 5);
		modelAndView.addObject("comments", comments);
		//modelAndView.addObject("recentArticles", recentArticles);
		//List<String> categories=articleService.getBlogArticleCategoryList();
		//modelAndView.addObject("categories", categories);
		//int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getCategory(),article.getId(), true, false);
		//int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getCategory(),article.getId(), false, true);	
		//if(nextArticle!=0)
		//modelAndView.addObject("nextArticle", nextArticle);
		//if(previousArticle!=0)
		//modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/mobile/posts/view");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/savePostComment", method = RequestMethod.POST)
	public String saveUserComment(@ModelAttribute PostComments comment,
			HttpSession session) {

		User user = (User) session.getAttribute("User");
		comment.setUser_id(user.getId());
		comment.setVotes(0);
		comment.setStatus(1);
		comment.setReported(0);
		Timestamp time = Timestamp.from(Instant.now());
		comment.setComment_date(time);
		
		boolean save = postService.saveComment(comment);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/mobile/user/jobs/list", method = RequestMethod.GET)
	public ModelAndView jobslist(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<JobPosts> posts=postService.getAllJobPosts(10, 0);
		modelAndView.addObject("posts", posts);
		modelAndView.setViewName("/mobile/jobs/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/jobs/description", method = RequestMethod.GET)
	public ModelAndView description(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/jobs/description");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/mobile/user/jobs/view/{id}",method=RequestMethod.GET)
	public ModelAndView showjob(@PathVariable int id, HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		JobPosts post=postService.getJobPostDetails(id);
		modelAndView.addObject("post", post);
		boolean saved = postService.incJobNoOfViews(id);
		boolean applied = postService.isAppliedForThisJob(id, user.getId());
		modelAndView.addObject("applied", applied);
		List<JobPosts> posts = postService.getRecentJobPosts(2);
		modelAndView.addObject("posts", posts);
		modelAndView.setViewName("/mobile/jobs/view");
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/applyForJob/{id}", method = RequestMethod.POST)
	public String saveUserComment(@PathVariable int id,
			HttpSession session) {

		User user = (User) session.getAttribute("User");
		JobApplications app = new JobApplications();
		app.setUser_id(user.getId());
		app.setJob_id(id);
		app.setStatus("Applied");
		app.setApplied_date(CultodeUtil.getCurrentDate());
		
		boolean save = postService.applyForJob(app);
		if (save) {
			return "success";
		} else {
			return "error";
		}
	}
	
}
