package com.cultode.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.DateConverter;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Notice;
import com.cultode.model.Post;
import com.cultode.model.Referral;
import com.cultode.model.User;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.MailService;
import com.cultode.service.PostService;
import com.cultode.service.UserService;
import com.cultode.util.CultodeUtil;

import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Controller
public class MobileController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CultodeService cultodeService;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PostService postService;
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@ResponseBody
	@RequestMapping(value = "/restoreSession/{user}", method = {RequestMethod.GET, RequestMethod.POST})
	public String restoreSession(@RequestParam String next, @PathVariable String user,
			HttpSession session) {

		User client = userService.getUserDetails(user);
		session.setAttribute("User", client);
		return "success";
		
		
	}
	
	@RequestMapping(value = "/mobile/user/delete-account", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView deleteUser(HttpSession session)
			throws IOException {

		User userData = (User) session.getAttribute("User");
		userData.setActive(0);
		if (userService.updateUserDetails(userData)) {
			session.removeAttribute("User");
			return new ModelAndView("redirect:/mobile");
		} else {
			return new ModelAndView("redirect:/mobile");
		}

	}

	@RequestMapping(value = "/mobile", method = RequestMethod.GET)
	public ModelAndView index(ModelMap map, HttpSession session) {
		
		ModelAndView modelAndView=new ModelAndView();
		User user = (User) session.getAttribute("User");

		if (user != null) {
			
			List<Notice> notices = cultodeService.getRecentNotices(2);
			modelAndView.addObject("notices", notices);
			List<BlogArticle> blogs = articleService.getRecentBlogArtciles(3);
			modelAndView.addObject("blogs", blogs);
			//List<Integer> ids = userService.getUserIdByClient(user.getClient_id(), user.getId(), 10);
			//modelAndView.addObject("ids", ids);
			Integer profileCompleteness = getProfileCompleteness(user);			
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("/mobile/index");
			//List<Post> posts = postService.getRecentPosts(2);
			//modelAndView.addObject("posts", posts);
			
		} else {
			modelAndView.setViewName("/mobile/landing");
		}
		return modelAndView;

	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/getPeople", method = RequestMethod.GET)
	public String getPeople(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		List<User> people = userService.getUsersList(user.getId(), 10);
		StringBuffer paintsString = new StringBuffer();
		if (people.isEmpty()) return
				"<a class=\"list-group-item bg-white\">" + 
				"<div class=\"row\">" + 
				"<h4>No group found.</h4>" + 
				"</div>" + 
				"</a>"; 
		else {
			for (User list : people) {
				paintsString
				.append("<div class=\"swiper-slide\">" + 
						"<a href=\"https://www.lifesetbro.com/mobile/user/public-profile/"+list.getId()+"\" class=\"card text-center\">" + 
						"<div class=\"card-body p-1\">" + 
						"<div " + 
						"class=\"position-absolute end-0 top-0 bg-success z-index-1 online-status\">" + 
						"</div>" + 
						"<figure class=\"avatar avatar-80 shadow-sm rounded-18\">" + 
						"<img src=\"https://www.lifesetbro.com/profile-user/image/"+list.getId()+"\"" + 
						"onerror=\"this.onerror=null; this.src='https://www.lifesetbro.com/img/userprofilepicture.png'\" alt=\"\">" + 
						"</figure>" + 
						"</div>" + 
						"</a>" + 
						"</div>"); 
			}
			return paintsString.toString(); 
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/getLatestNotice", method = RequestMethod.GET)
	public String getLatestNotice(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		List<Notice> entry = cultodeService .getRecentNotices(2);
		StringBuffer paintsString = new StringBuffer();
		if (entry.isEmpty()) return
				"<a class=\"list-group-item bg-white\">" + 
				"<div class=\"row\">" + 
				"<h4>No notifications so far.</h4>" + 
				"</div>" + 
				"</a>"; 
		else {
			for (Notice notice : entry) {
				paintsString
				.append("<a class=\"list-group-item bg-white\">" + 
						"<div class=\"row\">" + 
						"<div class=\"col-auto\">" + 
						"<div class=\"card\">" + 
						"<div class=\"card-body p-1\">" + 
						"<div class=\"avatar avatar-50 coverimg rounded-15\">" + 
						"<img src=\"https://www.lifesetbro.com/img/adminprofilepicture.jpg\"" +						 
						" alt=\"\">" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"<div class=\"col align-self-center ps-0\">" + 
						"<p class=\"mb-1\">" + 
						"<b></b> "+notice.getTitle()+"" + 
						"</p>" + 
						"<p class=\"size-12 text-secondary\">"+notice.getPost_time()+"</p>" + 
						"</div>" + 
						"</div>" + 
						"</a>"); 
				
			}
			return paintsString.toString(); 
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/getLatestPosts", method = RequestMethod.GET)
	public String getLatestPosts(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		List<JobPosts> entry = postService.getRecentJobPosts(2);
		StringBuffer paintsString = new StringBuffer();
		if (entry.isEmpty()) return
				"<a href=\"<%=request.getContextPath()%>/mobile\" class=\"card mb-3\">" + 
				"<div class=\"card-body\">" + 
				"<div class=\"row\">" + 
				"<div class=\"col-auto\">" + 
				"<h4>No posts yet.</h4>" + 
				"</div>" + 
				"</div>" + 
				"</div>" + 
				"</a>"; 
		else {
			for (JobPosts mst : entry) {
				paintsString
				.append("<li class=\"list-group-item\">" + 
						"<a href=\"./mobile/user/jobs/view/"+mst.getId()+"\">" + 
						"<div class=\"row\">" + 
						"<div class=\"col-auto\">" + 
						"<div class=\"avatar avatar-60 shadow-sm card rounded-15 p-1\">" + 
						"<img src=\"https://www.lifesetbro.com/assets/img/blog.jpg\" " + 
						"	alt=\"\" class=\"rounded-15\">" + 
						"</div>" + 
						"</div>" + 
						"<div class=\"col align-self-center ps-0\">" + 
						"<p class=\"text-secondary size-10 mb-0\">"+mst.getRole()+"</p>" + 
						"<p>"+mst.getOrganization()+"</p>" + 
						"</div>" + 
						"<div class=\"align-self-center text-end\">" + 
						"<p class=\"text-secondary text-muted size-10 mb-0\">"+mst.getPosted_date()+"</p>" + 
						"</div>" + 
						"</div>" + 
						"</a>" + 
						"</li>"); 
				
			}
			return paintsString.toString(); 
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/user/getTopUsers", method = RequestMethod.GET)
	public String getTopUsers(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		List<User> entry = userService.getTopUsers(2);
		StringBuffer paintsString = new StringBuffer();
		if (entry.isEmpty()) return
				"<a href=\"#\" class=\"card mb-3\">" + 
				"<div class=\"card-body\">" + 
				"<div class=\"row\">" + 
				"<div class=\"col-auto\">" + 
				"<h4>No results yet.</h4>" + 
				"</div>" + 
				"</div>" + 
				"</div>" + 
				"</a>"; 
		else {

			int sno = 1;
			for (User mst : entry) {
				paintsString
				.append("<div class=\"col-12 col-md-6\">" + 
						"<div class=\"card overflow-hidden mb-3\">" + 
						"<figure class=\"m-0 p-0 position-absolute top-0 end-0 w-50 h-100 coverimg\" style=\"background: #387cb7 !important;\">" + 
						"" + 
						"</figure>" + 
						"<div class=\"card-body p-0\">" + 
						"<div class=\"row mx-0\">" + 
						"<div class=\"col-8 py-3 aftercircle\">" + 
						"<div class=\"row\">" + 
						"<div class=\"col-auto\">" + 
						"<a href=\"./mobile/user/public-profile/"+mst.getId()+"\" class=\"card text-center\">" + 
						"<div class=\"card-body p-1\">" + 
						"<figure class=\"avatar avatar-70 shadow-sm rounded-18\">" + 
						"<img src=\"https://www.lifesetbro.com/profile-user/image/"+mst.getId()+"\" alt=\"Not Found\" " + 
						"onerror=\"this.onerror=null; this.src='https://www.lifesetbro.com/img/userprofilepicture.png'\" />" + 
						"</figure>" + 
						"</div>" + 
						"</a>" + 
						"</div>" + 
						"<div class=\"col align-self-center px-0\">" + 
						"<p class=\"text-secondary size-10 mb-0\"></p>" + 
						"<p class=\"mb-2\">"+mst.getName()+"</p>" + 
						"<p>"+mst.getPoints()+"</p>" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"</div>" + 
						"</div>"); 
				sno++;
			}
			return paintsString.toString(); 
		}
	}
	
	@RequestMapping(value = "/mobile/landing", method = RequestMethod.GET)
	public ModelAndView mobileIndex(ModelMap map, HttpSession session) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/mobile/landing");
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/login", method = RequestMethod.GET)
	public ModelAndView login(HttpSession session) {

		User userData = (User) session.getAttribute("User");
		if (userData != null)
			return new ModelAndView("/mobile");
		else
			return new ModelAndView("/mobile/login", "user", new User());
	}
	
	@RequestMapping(value = "/mobile/signup", method = RequestMethod.GET)
	public String signin(ModelMap map) {
		return "/mobile/signup";
	}
	
	@RequestMapping(value = "/mobile/user/offers", method = RequestMethod.GET)
	public String offers(ModelMap map) {
		return "/mobile/offers";
	}
	
	@RequestMapping(value = "/mobile/user/services", method = RequestMethod.GET)
	public String services(ModelMap map) {
		return "/mobile/services";
	}
	
	@RequestMapping(value = "/mobile/success", method = RequestMethod.GET)
	public String success(ModelMap map) {
		return "/mobile/success";
	}
	
	@RequestMapping(value = "/mobile/location", method = RequestMethod.GET)
	public String location(ModelMap map) {
		return "/mobile/location";
	}
	
	
	/* User controller starts */
	
	@ResponseBody
	@RequestMapping(value = "/mobile/CheckUserMobile", method = RequestMethod.POST)
	public String checkUserMobile(@RequestParam String mobile,
			HttpSession session) {
		System.out.println("Mobile : "+mobile);
		if(userService.isUserExist(mobile)){
			System.out.println("Exist");
			return "success";
		}else{
			return "fail";
		}
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/mobile/registerUser", method = RequestMethod.POST)
	 * public String register(@ModelAttribute("user") User user, @RequestParam
	 * String refer, BindingResult result, HttpSession session) {
	 * 
	 * user.setUsername(user.getMobile());
	 * 
	 * if(userService.isUserExist(user.getMobile())) {
	 * 
	 * return "exist";
	 * 
	 * } else {
	 * 
	 * boolean isUserSaved = userService.saveUser(user);
	 * 
	 * if (isUserSaved) { return "success"; } else { return "error"; } }
	 * 
	 * }
	 */
	
/* register with otp */
	
	@RequestMapping(value = "/mobile/registerUser", method = RequestMethod.POST)
	public ModelAndView registerWithOTP(@ModelAttribute("user") User user, 
			BindingResult result, HttpSession session) throws IOException {
		//registerValidator.validate(user, result);
		ModelAndView modelAndView = new ModelAndView();
		Random rand = new Random();	
		int otp = rand.nextInt(900000) + 100000;
		String password = String.valueOf(otp);
		System.out.println("Password" +password);
		user.setUsername(user.getMobile());
		user.setPassword(password);
			
		if(userService.isUserExist(user.getMobile())) {
				modelAndView.addObject("exist", true);
				modelAndView.setViewName("/mobile/login");
			} else {
				
				boolean isStudentSaved = true;//userService.saveUser(user);
				System.out.println("student saved");
				if (isStudentSaved) {
					//if(refer!=null && !refer.isEmpty()) {
						//String userID=refer.substring(4);
						//int uId = Integer.parseInt(userID);
						//updateReferalDetails(uId, user.getUsername());
					//}

					String subject = "Email Verification";
					String body = CultodeUtil.buildOTPMail(user.getName(), user.getEmail(), password);
					mailService.sendMail(subject, body, user.getEmail(), false, "Exalt Abroad");
					sendSMS(user.getName(), user.getMobile(), password);
					modelAndView.addObject("mobile", user.getMobile());
					modelAndView.addObject("otp", otp);
					modelAndView.setViewName("/mobile/otp");
					
				} else {
					modelAndView.setViewName("/mobile/signup");
				}
			} 	
			return modelAndView;
	}
	
	
	
	@ResponseBody
	@RequestMapping(value = "/mobile/update-password", method = RequestMethod.POST)
	public ModelAndView validateUserOTP(HttpSession session, @RequestParam("password") String password,
			@RequestParam("mobile") String mobile) {
		
		ModelAndView modelAndView = new ModelAndView();
		User user = userService.getUserDetails(mobile);
		user.setPassword(password);
		user.setVerified(1);
		boolean save = userService.updateUserDetails(user);
		if(save) {
			modelAndView.addObject("success", true);
			modelAndView.setViewName("/mobile/login");
		} else {
			modelAndView.addObject("success", false);
			modelAndView.setViewName("/mobile/login");
		}

		return modelAndView;
	}
	
	/* register with otp */
	
	@RequestMapping(value = "/validateMobileLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		User userData = (User) session.getAttribute("User");
		if (userData != null) {
			if(userData.getVerified()==0) {
				userData.setVerified(1);
				userService.updateUserDetails(userData);
			}
			boolean save = cultodeService.increaseLoginCount(userData.getUsername());
			return new ModelAndView("/mobile");
		} else
			return new ModelAndView("/mobile/login", "user", new User());

	}

	@SuppressWarnings("unused")
	@RequestMapping(value = "/validateMobileLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("user") User user,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);

		if (user.getUsername() != null && !user.getUsername().isEmpty()
				&& user.getPassword() != null && !user.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			String username = user.getUsername();
			String password = user.getPassword();
			User userData = userService.validateUser(username, password);

			if (userData != null) {
				session.setAttribute("User", userData);
				modelAndView.addObject("sessionUser", userData.getUsername());

				if(userData.getVerified()==0) {
					userData.setVerified(1);
					userService.updateUserDetails(userData);
				}
				boolean save = cultodeService.increaseLoginCount(userData.getUsername());
				if (next != null && !next.isEmpty()) {
					modelAndView.setViewName("redirect:" + next);
				} else {
					modelAndView.setViewName("redirect:/mobile");
				}
				return modelAndView;
				
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/mobile/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/mobile/login");
		}

	}
	
	@RequestMapping(value = "/mobile/forgot", method = RequestMethod.GET)
	public String forgot(ModelMap map) {
		return "/mobile/forgot";
	}
	
	@SuppressWarnings("unused")
	@ResponseBody
	@RequestMapping(value = "/mobile/send-password", method = RequestMethod.POST)
	public ModelAndView sendUserPassword(HttpSession session,
			@RequestParam("phone") String phone) {
		
		ModelAndView modelAndView = new ModelAndView();
		User user = null; 
		//user = userService.getUserDetailsByMobile(phone);
		//user.setPassword(password);
		if(user!=null) {
			sendSMS(user.getName(), user.getMobile(), user.getPassword());
				modelAndView.addObject("phone", user.getMobile());
				modelAndView.addObject("otp", user.getPassword());
				//modelAndView.addObject("success", true);
				modelAndView.setViewName("/mobile/login");
		} else {
			modelAndView.addObject("success", false);
			modelAndView.setViewName("/mobile/login");
			
		}
	
		return modelAndView;
	}
	
	
	
	

	@RequestMapping(value = "/mobile/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpSession session) {
		User user = (User) session.getAttribute("User");
		cultodeService.deleteToken(user.getUsername());
		session.removeAttribute("User");
		session.invalidate();
		return new ModelAndView("/mobile/login");
		//return new ModelAndView("redirect:/mobile");
	}
	
	@RequestMapping(value="/mobile/user/profile",method=RequestMethod.GET)
	public ModelAndView showTicket(HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		User userData = (User) session.getAttribute("User");
		User user = userService.getUserDetailsById(userData.getId());
		modelAndView.addObject("user", user);
		List<JobApplications> apps = postService.getUserAppliedJobs(user.getId(), 2);
		modelAndView.addObject("apps", apps);
		List<Integer> ids = userService.getUserId(user.getId(), 10);
		modelAndView.addObject("ids", ids);
		modelAndView.setViewName("/mobile/user/profile");
		return modelAndView;
	}
	
	@RequestMapping(value="/mobile/user/public-profile/{id}",method=RequestMethod.GET)
	public ModelAndView publicProfile(@PathVariable int id, HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		User user = userService.getUserDetailsById(id);
		modelAndView.addObject("user", user);
		List<Post> posts = postService.getUserPosts(id, 2);
		modelAndView.addObject("posts", posts);
		List<Integer> ids = userService.getUserId(user.getId(), 10);
		modelAndView.addObject("ids", ids);
		
		modelAndView.setViewName("/mobile/public-profile");
		return modelAndView;
	}
	
	@RequestMapping(value="/mobile/user/edit",method=RequestMethod.GET)
	public ModelAndView editUser(HttpSession session){
		ModelAndView modelAndView=new ModelAndView();
		User userData = (User) session.getAttribute("User");
		
		Integer profileCompleteness = getProfileCompleteness(userData);
		if (userData != null) {
			User user = userService.getUserDetailsById(userData.getId());
			modelAndView.addObject("user", user);
			modelAndView.addObject("profilecp", profileCompleteness);
			modelAndView.setViewName("/mobile/user/edit");
			return modelAndView;
		} else
			return new ModelAndView("login", "user", new User());
	}
	
	@RequestMapping(value = "/mobile/user/update-profile-picture", method = RequestMethod.POST)
	public ModelAndView updateProfile(
			@RequestParam(value = "photo", required = false) MultipartFile photo,
			HttpSession session) throws IOException {
		User userData = (User) session.getAttribute("User");
		byte[] image = IOUtils.toByteArray(photo.getInputStream());
		userData.setImage(image);
		if (userService.updateUserDetails(userData)) {
			return new ModelAndView("redirect:/mobile/user/edit?success=true");
		} else {
			return new ModelAndView("redirect:/mobile/user/edit?success=false");
		}

	}
	
	@SuppressWarnings("unchecked")
	private Integer getProfileCompleteness(User other) {
		Integer profilePoints = 0;
		try {
			Map<String, String> userfields = BeanUtils.describe(other);
			Integer eachFieldPoints = 100 / userfields.size();
			for (Entry<String, String> entry : userfields.entrySet()) {
				if (entry.getValue() != null && !entry.getValue().isEmpty()) {
					profilePoints = profilePoints + eachFieldPoints;
				}
			}
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		}

		return profilePoints;
	}
	
	@RequestMapping(value = "/mobile/user/update-userdetails", method = RequestMethod.POST)
	public ModelAndView updateUserDetails(
			@RequestParam Map<String, String> userdetails, HttpSession session)
			throws IOException {

		User userData = (User) session.getAttribute("User");
		userData = setUserData(userData, userdetails);
		if (userService.updateUserDetails(userData)) {
			return new ModelAndView("redirect:/mobile/user/edit?success=true");
		} else {
			return new ModelAndView("redirect:/mobile/user/edit?success=false");
		}

	}
	
	private User setUserData(User other, Map<String, String> fields) {
		for (Entry<String, String> entry : fields.entrySet()) {
			try {
				DateConverter converter = new DateConverter();
				converter.setPattern("dd/MM/yyyy");
				ConvertUtils.register(converter, Date.class);
				BeanUtils.setProperty(other, entry.getKey(), entry.getValue());
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return other;
	}
	
	/* User controller ends */
	
	/* Events controller starts */
	
	@RequestMapping(value="/mobile/user/events/list",method=RequestMethod.GET)
	public ModelAndView showEvents(HttpSession session){
		
		User userData = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<Event> events=cultodeService.getUpcomingEventsList();
		modelAndView.addObject("events", events);
		modelAndView.setViewName("/mobile/events/list");
		
		return modelAndView;
	}
	 
	@RequestMapping(value="/mobile/user/events/view/{id}",method=RequestMethod.GET)
	public ModelAndView showFullArticle(@PathVariable int id, HttpSession session){
		
		User userData = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		Event event=cultodeService.getEvent(id);
		modelAndView.addObject("event", event);
		
		modelAndView.setViewName("/mobile/events/view");
		return modelAndView;
	}
	
	/* Events controller ends */
	
	/* Notifications controller starts */
	
	@RequestMapping(value="/mobile/user/notifications/list",method=RequestMethod.GET)
	public ModelAndView allNotifications(HttpSession session){
		
		User userData = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<Notice> notices=cultodeService.getAllNotifications(10, 0);
		modelAndView.addObject("notices", notices);
		modelAndView.setViewName("/mobile/notifications/list");
		
		return modelAndView;
	}
	 
	@RequestMapping(value="/mobile/user/notifications/view/{id}",method=RequestMethod.GET)
	public ModelAndView viewNotification(@PathVariable int id, HttpSession session){
		
		User userData = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		Notice notice=cultodeService.getNoticeDetails(id);
		modelAndView.addObject("notice", notice);
		
		modelAndView.setViewName("/mobile/notifications/view");
		return modelAndView;
	}
	
	/* Notifications controller ends */
	
	@RequestMapping(value = "/mobile/user/support", method = RequestMethod.GET)
	public String support(ModelMap map) {
		return "/mobile/support";
	}
	
	/* Tickets controller ends */
	
	/* talents controller starts */
	
	@RequestMapping(value = "/mobile/user/hof", method = RequestMethod.GET)
	public ModelAndView hof(ModelMap map, HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();
		List<User> hof = userService.getTopUsers(5);
		modelAndView.addObject("hof", hof);
		modelAndView.setViewName("/mobile/hof");
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/all-users", method = RequestMethod.GET)
	public ModelAndView allUsers(ModelMap map, HttpSession session) {
		User userData = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<User> hof = userService.getUsersList(userData.getId(), 0);
		modelAndView.addObject("hof", hof);
		modelAndView.setViewName("/mobile/all-users");
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/refer", method = RequestMethod.GET)
	public ModelAndView refer(ModelMap map, HttpSession session) {
		
		ModelAndView modelAndView=new ModelAndView();
		User user = (User) session.getAttribute("User");
		modelAndView.addObject("user", user);	
		
		String nameString = user.getName().substring(0, 2);
		String usernameString = user.getUsername().substring(0, 2);
		Integer idString = user.getId();
		String idS = idString.toString();
		String code = usernameString + nameString + idS;
		String reference_id = code;
		modelAndView.addObject("reference_id", reference_id);
			
		
		modelAndView.setViewName("/mobile/refer");
		
		return modelAndView;

	}
	
	@RequestMapping(value = "/mobile/refer/{username}", method = RequestMethod.GET)
	public ModelAndView refer(@PathVariable String username, HttpSession session) {
		
		ModelAndView modelAndView=new ModelAndView();
		User user = userService.getUserDetails(username);
		modelAndView.addObject("user", user);	
		
		String nameString = user.getName().substring(0, 2);
		String usernameString = user.getUsername().substring(0, 2);
		Integer idString = user.getId();
		String idS = idString.toString();
		String code = usernameString + nameString + idS;
		String reference_id = code;
		modelAndView.addObject("reference_id", reference_id);
		modelAndView.setViewName("/mobile/referral");
		
		return modelAndView;

	}
	
	
	
	
	
	@SuppressWarnings("unused")
	private void uploadFile(String filename, MultipartFile image,
			String type) {
		File image_path = new File(servletContext.getRealPath("/")
				+ "uploaded_files/DOC/" + type + "/" + filename);
		image_path.getParentFile().mkdirs();
		try {
			FileUtils.writeByteArrayToFile(image_path, image.getBytes());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@SuppressWarnings("unused")
	private void updateReferalDetails(int uid, String username) {
		
		Referral refer = new Referral();
		refer.setReferred_user(uid);
		refer.setRegistered_user(username);
		refer.setStatus("Registered");
		userService.updateUserPoints(uid, 10);

	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/forgotPassword", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyLoanNow(@RequestParam String mobile,
			HttpSession session) {
		User user = userService.getUserDetails(mobile);
		if(user!=null) {
			sendSMS(user.getName(), user.getMobile(), user.getPassword());		
			return "success";
		} else {
			return "failed";
		}
	}
	
	
	public boolean sendSMS(String name, String mobile, String password) {

		System.out.println("In sms 1");
		try {
			String message = "Dear "+name+"," +
					"Your secret OTP to log in to the LifeSetBro app is "+password+"" +
					"Thanks" + 
					"LifeSetBro (Pradeenav TPL)";
			String requestUrl = "https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?" + "APIKEY=" + "zkpwwwufKbl"
					+ "&MobileNo=" + mobile + "&SenderID=" + "LIFSET" + "&Message="
					+ URLEncoder.encode(message, "UTF-8") + "&ServiceName=" + "TEMPLATE_BASED&DLTTemplateID=1207169892140264286";
			System.out.println("In sms 2");
			URL url = new URL(requestUrl);
			HttpsURLConnection httpsCon = (HttpsURLConnection) url.openConnection();
			httpsCon.setRequestMethod("GET");
			httpsCon.setConnectTimeout(10000);
			int intresult = httpsCon.getResponseCode();
			String strresult = httpsCon.getResponseMessage();
			BufferedReader in = new BufferedReader(new InputStreamReader(httpsCon.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);

				System.out.println("inputLine" + strresult);
			}
			System.out.println("Sent" + response);
			in.close();
			httpsCon.disconnect();
			return true;

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			System.out.println("error");
			return false;
		} catch (MalformedURLException e) {
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean sendMail(String subject, String Text, String recipient,
			boolean multipleRecipients, String mailTitle) {

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);
			
			
			helper.setFrom("info@cultode.com", mailTitle);

			if (multipleRecipients) {
				helper.setTo(recipient.split(",", -1));
			} else {
				helper.setTo(recipient);
			}
			helper.setSubject(subject);
			helper.setText(Text, true);

			mailSender.send(message);

			return true;
		} catch (Exception exception) {
			exception.printStackTrace();
			return false;
		}
	}
	
}
