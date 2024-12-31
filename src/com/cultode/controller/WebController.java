package com.cultode.controller;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import javax.mail.Session;
import javax.net.ssl.HttpsURLConnection;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.cultode.model.BlogArticle;
import com.cultode.model.CallBack;
import com.cultode.model.Contact;
import com.cultode.model.Token;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.MailService;
import com.cultode.service.UserService;
import com.cultode.util.CultodeUtil;
import com.google.gson.Gson;
import com.cultode.bean.Data;
import com.cultode.bean.FCMMessageBean;
import com.cultode.bean.Notification;


@Controller
public class WebController {
	
	private static final String FIREBASE_SERVER_KEY = "AAAAON8Y7xs:APA91bFPLUwPv9a_PdrYlZhnMT9yyAd44YhTBVQjf5uRMW02eoQVSi7pJ3KXhaGqbQxYrb3_Y7jOCkCi5W0RFBqB32VTlXNgk9AhyBzCAFvPyrEhj810bs7AAb7n009O0M-NjpTtPPZO";
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CultodeService cultodeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MailService mailService;
	
	@Autowired
	private ArticleService articleService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(ModelMap map) {
		ModelAndView modelAndView=new ModelAndView();
		List<BlogArticle> blogs = articleService.getRecentBlogArtciles(3);
		modelAndView.addObject("blogs", blogs);
		modelAndView.setViewName("/index");
		return modelAndView;
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index(ModelMap map) {
		ModelAndView modelAndView=new ModelAndView();
		List<BlogArticle> blogs = articleService.getRecentBlogArtciles(3);
		modelAndView.addObject("blogs", blogs);
		modelAndView.setViewName("/index");
		return modelAndView;
	}
	
	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(ModelMap map) {
		return "/about";
	}
	
	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(ModelMap map) {
		return "/contact";
	}
	
	@ResponseBody
	@RequestMapping(value = "/save-enquiry", method = RequestMethod.POST)
	public String saveEmail(@ModelAttribute Contact enquiry,
			HttpSession session) {
			
		boolean save = cultodeService.saveEnquiry(enquiry);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/privacy-policy", method = RequestMethod.GET)
	public String privacyPolicy(ModelMap map) {
		return "/privacy-policy";
	}
	
	@RequestMapping(value = "/support", method = RequestMethod.GET)
	public String support(ModelMap map) {
		return "/support";
	}
	
	@RequestMapping(value = "/talent/entries", method = RequestMethod.GET)
	public ModelAndView allEntries(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();

		//List<Talent> talents = talentService.getAllTalentEntries();
			
		//modelAndView.addObject("talents", talents);
		
		modelAndView.setViewName("/talent/entries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/talent/entry/{id}", method = RequestMethod.GET)
	public ModelAndView textZoneEntries(HttpSession session, @PathVariable int id) {
		ModelAndView modelAndView=new ModelAndView();

		//Talent talent = talentService.getTalentEntry(id);

		//modelAndView.addObject("talent", talent);
		
		modelAndView.setViewName("/talent/entry");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/send-sms", method = RequestMethod.GET)
	public String sendSMS(ModelMap map) {
		return "/send-sms";
	}
	
	public boolean sendSMS(String name, String mobile, String password) {

		System.out.println("In sms 1");
		try {
			String message = "Dear "+name+", your username is "+mobile+" and password is "+password+" Please login to the app using the above credentials! Thanks Team Tikaana";
			String requestUrl = "https://smsapi.24x7sms.com/api_2.0/SendSMS.aspx?" +
			"APIKEY=" + "zkpwwwufKbl" +
			"&MobileNo=" + mobile +
			"&SenderID=" + "tikana" +
			"&Message=" + URLEncoder.encode(message, "UTF-8") +
			"&ServiceName=" + "TEMPLATE_BASED";
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

				System.out.println("inputLine"+strresult);
			}
			System.out.println("Sent"+response);
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
	
	@RequestMapping(value = "/profile-user/image/{id}", method = RequestMethod.GET, produces = MediaType.IMAGE_PNG_VALUE)
	@ResponseBody
	public byte[] getUserProfileImage(@PathVariable int id) {

		return userService.getUserDetailsById(id).getImage();

	}
	
	@RequestMapping(value = "/user-name/{id}", method = RequestMethod.GET)
	@ResponseBody
	public String getUserName(@PathVariable int id) {

		return userService.getUserNameById(id);

	}
	
	@ResponseBody
	@RequestMapping(value = "/saveToken/{sessionId}/{deviceId}", method = RequestMethod.GET)
	public String saveToken(@PathVariable String sessionId, @PathVariable String deviceId,
			HttpSession session) {
		
		Token token = new Token(); 
		token.setSessionId(sessionId);
		token.setDeviceId(deviceId);
		
		boolean save = cultodeService.saveToken(token);
			if (save) {
				return "success";
			} else {
				return "error";
			}
	}
	
	@ResponseBody
	@RequestMapping(value="/send-notification", method = RequestMethod.GET)
	public String sendNotification() {
		RestTemplate restTemplate = new RestTemplate();
		Gson gson = new Gson();
		FCMMessageBean fcmMessageBean = new FCMMessageBean();
		fcmMessageBean.setCollapse_key("type_a");
		Notification notification = new Notification();
		notification.setTitle("Test title");
		notification.setBody("Test body");
		fcmMessageBean.setNotification(notification);
		//fcmMessageBean.setLink("https://ozailiving.com/lct/tickets/list");
		fcmMessageBean.setTo("f9jeuvR2TM2ZYv9RhsBvNQ:APA91bHYEE6zbFXf8yZXBgmoQD_-a981f64PDAD4R21R8aMw_E3MWSSeIsf5KSnGYIDhdQ1bor2thGsgREFQhg5g_C55mjf846jyedplpLPcgjktLA9KR0MU-TwekA3Bn9LqUTqvOQ9T");
		String endpoint = "https://fcm.googleapis.com/fcm/send";
		String requestBody = gson.toJson(fcmMessageBean);
		//fcmService.sendNotification(fcmMessageBean);
		HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set("Authorization", "key=" + FIREBASE_SERVER_KEY);
        httpHeaders.set("Content-Type", "application/json");
		
		 restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
		 return restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
	
	}
	
	
	@ResponseBody
	@RequestMapping(value="/send-link-notification/{link}", method = RequestMethod.GET)
	public String sendLinkNotification(@PathVariable String link) {
		RestTemplate restTemplate = new RestTemplate();
		Gson gson = new Gson();
		FCMMessageBean fcmMessageBean = new FCMMessageBean();
		fcmMessageBean.setCollapse_key("type_a");
		Notification notification = new Notification();
		Data data = new Data();
		notification.setTitle("Test title");
		notification.setBody("Test body");
		
		data.setTitle("Test title");
		data.setBody("Test body");
		data.setLink(link);
		fcmMessageBean.setNotification(notification);
		fcmMessageBean.setData(data);
		//fcmMessageBean.setLink("https://ozailiving.com/lct/tickets/list");
		fcmMessageBean.setTo(link);
		String endpoint = "https://fcm.googleapis.com/fcm/send";
		String requestBody = gson.toJson(fcmMessageBean);
		//fcmService.sendNotification(fcmMessageBean);
		HttpHeaders httpHeaders = new HttpHeaders();
        httpHeaders.set("Authorization", "key=" + FIREBASE_SERVER_KEY);
        httpHeaders.set("Content-Type", "application/json");
		
		 restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
		 return fcmMessageBean.toString();//restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
	
	}
	
	@ResponseBody
	@RequestMapping(value="/send-notification-to-all", method = RequestMethod.GET)
	public String sendNotificationToAll() {
		
		List<Token> token = cultodeService.getUserTokens();
		
		
		for (Token tk : token) {
			System.out.println("List"+tk.getSessionId());
			RestTemplate restTemplate = new RestTemplate();
			Gson gson = new Gson();
			FCMMessageBean fcmMessageBean = new FCMMessageBean();
			fcmMessageBean.setCollapse_key("type_a");
			Notification notification = new Notification();
			notification.setTitle("Test title for "+tk.getSessionId());
			notification.setBody("Hi, "+tk.getSessionId()+". This is test notification.");
			fcmMessageBean.setNotification(notification);
			fcmMessageBean.setTo(tk.getDeviceId());
			String endpoint = "https://fcm.googleapis.com/fcm/send";
			String requestBody = gson.toJson(fcmMessageBean);
			HttpHeaders httpHeaders = new HttpHeaders();
	        httpHeaders.set("Authorization", "key=" + FIREBASE_SERVER_KEY);
	        httpHeaders.set("Content-Type", "application/json");
			
			restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
			//return restTemplate.postForObject(endpoint, new HttpEntity<String>(requestBody, httpHeaders), String.class);
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/saveUserCallBackRequest", method = RequestMethod.POST)
	public String saveUserCallBackRequest(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		CallBack call = new CallBack();
		call.setEnquiry_date(CultodeUtil.getCurrentDate());
		call.setMobile(user.getMobile());
		call.setName(user.getName());
		boolean save = cultodeService.saveCallBackRequest(call);
			if (save) {
				return "success";
			} else {
				return "error";
			}
	}
	
	@ResponseBody
	@RequestMapping(value = "/saveCallBackRequest", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveCallBackRequest(@ModelAttribute CallBack enquiry,
			HttpSession session) {
			
		boolean save = cultodeService.saveCallBackRequest(enquiry);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/send-mail", method = RequestMethod.GET)
	public String sendMail(HttpSession session) {
		String subject = "Email Verification";
		String mail = "amareshwarreddypally@gmail.com";
		String body = CultodeUtil.buildOTPMail("Amar", mail, "password");
		boolean save = mailService.sendMail(subject, body, mail, false, "Exalt Abroad");
		
		return "success";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/joinUser", method = RequestMethod.POST)
	public String joinUser(HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		Contact call = new Contact();
		call.setEnquiry_date(CultodeUtil.getCurrentDate());
		call.setMobile(user.getMobile());
		call.setName(user.getName());
		call.setSubject("Join Meeting");
		boolean save = cultodeService.saveJoinRequest(call);
			if (save) {
				return "success";
			} else {
				return "error";
			}
	}
	
}
