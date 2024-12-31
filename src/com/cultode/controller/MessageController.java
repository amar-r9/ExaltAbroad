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

import com.cultode.bean.MessageBean;
import com.cultode.model.BlogArticle;
import com.cultode.model.Messages;
import com.cultode.model.Post;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.MessageService;
import com.cultode.service.PostService;
import com.cultode.service.UserService;


@Controller
public class MessageController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private MessageService messageService;
	
	@Autowired
	private UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/send-message", method = RequestMethod.POST)
	public String saveUserPost(@ModelAttribute Messages message,
			HttpSession session) {
			
		User user = (User) session.getAttribute("User");
		Timestamp time = Timestamp.from(Instant.now());
		message.setMessage_time(time);
		
		boolean save = messageService.saveMessage(message);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/mobile/user/chat/list", method = RequestMethod.GET)
	public ModelAndView allChats(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
			//List<User> users = userService.getUsersListForChat(user.getId(), 0);
			//modelAndView.addObject("users", users);
		
		modelAndView.setViewName("/mobile/chat/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/chat/message/{receiver_id}", method = RequestMethod.GET)
	public ModelAndView showPosts(@PathVariable int receiver_id, HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		//List<Messages> messages = messageService.getRecentMessages(user.getId(), receiver_id, 10, 0);
		//modelAndView.addObject("messages", messages);
		modelAndView.addObject("otherUser", receiver_id);
		modelAndView.setViewName("/mobile/chat/message");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/chat/getMessages/{receiver_id}", method = RequestMethod.GET)
	public String getAllUserPaints(@PathVariable int receiver_id, HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		List<Messages> entry = messageService .getRecentMessages(user.getId(), receiver_id, 10, 0);
		StringBuffer paintsString = new StringBuffer();
		if (entry.isEmpty()) return
				" "; 
		else {
			for (Messages mst : entry) {
				if(mst.getSender_id() == user.getId()) {
					paintsString
					.append("<div class=\"row no-margin right-chat\">" + 
							"<div class=\"col-12\">" + 
							"<div class=\"chat-block\">" + 
							"<div class=\"row\">" + 
							"<div class=\"col\">"+mst.getMessage()+"</div>" + 
							"</div></div></div>" + 
							"<div class=\"col-12\">" + 
							"<p class=\"text-secondary small time\">" + 
							""+mst.getMessage_time()+"</p>" + 
							"</div></div>"); 
				} else {
					paintsString
					.append("<div class=\"row no-margin left-chat\">" + 
							"<div class=\"col-12\">" + 
							"<div class=\"chat-block\">" + 
							"<div class=\"row\">" + 
							"<div class=\"col\">"+mst.getMessage()+"</div>" + 
							"</div></div></div>" + 
							"<div class=\"col-12\">" + 
							"<p class=\"text-secondary small time\">" + 
							""+mst.getMessage_time()+"</p>" + 
							"</div></div>");	
				}
			}
			return paintsString.toString(); 
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/chat/getLatestMessage/{receiver_id}", method = RequestMethod.GET)
	public String getLAtestMessage(@PathVariable int receiver_id, HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		String entry = messageService.getRecentMessage(user.getId(), receiver_id);
		
		return entry.toString(); 
	}
	
}
