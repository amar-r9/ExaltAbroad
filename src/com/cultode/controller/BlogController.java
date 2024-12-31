package com.cultode.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cultode.model.BlogArticle;
import com.cultode.model.Event;
import com.cultode.model.Loan;
import com.cultode.model.Talent;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.EventService;
import com.cultode.service.UserService;


@Controller
public class BlogController {
	
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
	private EventService eventService;
	
	@RequestMapping(value = "/mobile/user/blogs/list", method = RequestMethod.GET)
	public ModelAndView showArticles(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		int totalArticlesCount = articleService.getBlogArticlesCount("all");
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> articles=articleService.getBlogArtciles("all", 10, 0);
		modelAndView.addObject("articles", articles);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		//modelAndView.addObject("category", category);
		modelAndView.setViewName("/mobile/blogs/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/mobile/user/blogs/article/{id}",method=RequestMethod.GET)
	public ModelAndView showArticle(@PathVariable int id, HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		BlogArticle article=articleService.getBlogArticle(id);
		modelAndView.addObject("article", article);
		boolean saved = articleService.incNoOfViews(id);
		
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(article.getCategory(),article.getId(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(article.getCategory(),article.getId(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/mobile/blogs/article");
		return modelAndView;
	}
	
	@RequestMapping(value = "/blogs/list", method = RequestMethod.GET)
	public ModelAndView blogsList(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		int totalArticlesCount = articleService.getBlogArticlesCount("all");
		modelAndView.addObject("totalArticlesCount", totalArticlesCount);
		System.out.println("totalArticlesCount"+totalArticlesCount);
		List<BlogArticle> blogs=articleService.getBlogArtciles("all", 10, 0);
		modelAndView.addObject("blogs", blogs);
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		//modelAndView.addObject("category", category);
		modelAndView.setViewName("/blogs/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/blogs/article/{id}",method=RequestMethod.GET)
	public ModelAndView blogArticle(@PathVariable int id, HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		BlogArticle blog=articleService.getBlogArticle(id);
		modelAndView.addObject("blog", blog);
		boolean saved = articleService.incNoOfViews(id);
		
		List<BlogArticle> recentArticles=articleService.getRecentBlogArtciles(5);
		modelAndView.addObject("recentArticles", recentArticles);
		List<String> categories=articleService.getBlogArticleCategoryList();
		modelAndView.addObject("categories", categories);
		int nextArticle=articleService.getNextOrPreviousBlogArticleCode(blog.getCategory(),blog.getId(), true, false);
		int previousArticle=articleService.getNextOrPreviousBlogArticleCode(blog.getCategory(),blog.getId(), false, true);	
		if(nextArticle!=0)
		modelAndView.addObject("nextArticle", nextArticle);
		if(previousArticle!=0)
		modelAndView.addObject("previousArticle", previousArticle);
		modelAndView.setViewName("/blogs/article");
		return modelAndView;
	}
	
}
