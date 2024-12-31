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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cultode.model.Admin;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.CultodeService;
import com.cultode.service.UserService;


@Controller
public class AdminController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CultodeService cultodeService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView tikaanaAdmin(HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		Admin adminData = (Admin) session.getAttribute("Admin");
		List<User> list = adminService.getUserList(); 
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/admin/index");
		return modelAndView;

	}
	
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public String adminIndex(ModelMap map) {
		return "/admin/index";
	}
	
	@RequestMapping(value = "/adminlogin", method = RequestMethod.GET)
	public ModelAndView adminLogin(HttpSession session) {

		Admin userData = (Admin) session.getAttribute("Admin");
		if (userData != null)
			return new ModelAndView("/admin");
		else
			return new ModelAndView("/admin/login", "admin", new Admin());
	}
	
	@RequestMapping(value = "/validateAdminLogin", method = RequestMethod.GET)
	public ModelAndView validateLogin(HttpSession session) {

		Admin userData = (Admin) session.getAttribute("Admin");
		if (userData != null) {
			//boolean save = cultodeService.increaseLoginCount(userData.getUsername());
			return new ModelAndView("/admin");
		} else
			return new ModelAndView("/admin/login", "admin", new Admin());

	}

	@RequestMapping(value = "/validateAdminLogin", method = RequestMethod.POST)
	public ModelAndView validate(@ModelAttribute("admin") Admin admin,
			BindingResult result, RedirectAttributes redirectAttributes,
			HttpSession session,
			@RequestParam(value = "next", required = false) String next) {
		// userValidator.validate(user, result);

		if (admin.getUsername() != null && !admin.getUsername().isEmpty()
				&& admin.getPassword() != null && !admin.getPassword().isEmpty()) {
			ModelAndView modelAndView = new ModelAndView();
			String username = admin.getUsername();
			String password = admin.getPassword();
			System.out.println("in submit" + username +"password "+password);
			Admin userData = adminService.validateUser(username, password);

			if (userData != null) {

					session.setAttribute("Admin", userData);
					//boolean save = cultodeService.increaseLoginCount(userData.getUsername());
					if (next != null && !next.isEmpty()) {
							modelAndView.setViewName("redirect:" + next);
					} else {
							modelAndView.setViewName("redirect:/admin");
					}
						return modelAndView;
				
			} else {
				modelAndView.getModel().put("AuthError",
						"Invalid UserName / Password");
				modelAndView.setViewName("/admin/login");
				return modelAndView;
			}
		} else {
			return new ModelAndView("/admin/login");
		}

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
	
	@RequestMapping(value = "/admin/users/list", method = RequestMethod.GET)
	public ModelAndView userList(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		List<User> list = adminService.getUserList(); 
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/admin/users/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/referrals", method = RequestMethod.GET)
	public String tenantDetails(ModelMap map) {
		return "/admin/referrals";
	}
	
	@ResponseBody
	@RequestMapping(value = "/getReferrals", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView getTenantDetailsByMobile(@RequestParam String code, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();
		List<User> list = adminService.getUserListByReferral(code); 
		modelAndView.addObject("list", list);
		modelAndView.setViewName("/admin/referrals");
		return modelAndView;
	}
	
}
