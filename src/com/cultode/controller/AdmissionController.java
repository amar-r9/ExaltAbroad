package com.cultode.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cultode.model.Accommodation;
import com.cultode.model.Admission;
import com.cultode.model.Application;
import com.cultode.model.CallBack;
import com.cultode.model.FlightTickets;
import com.cultode.model.Loan;
import com.cultode.model.Post;
import com.cultode.model.Shortlist;
import com.cultode.model.Tests;
import com.cultode.model.User;
import com.cultode.model.VisaGuidance;
import com.cultode.service.AdmissionService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.PostService;
import com.cultode.service.UserService;


@Controller
public class AdmissionController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private CultodeService cultodeService;
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdmissionService admissionService;
	
	@Autowired
	private PostService postService;
	
	@RequestMapping(value = "/mobile/user/admissions", method = RequestMethod.GET)
	public ModelAndView admission(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/admissions/admissions");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveUserAdmission", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveAdmission(@ModelAttribute Admission admission,
			HttpSession session) {
		if(admissionService.saveUserAdmission(admission)) {
			return "success";
		} else {
			return "failed";
		}
	}
	
	@RequestMapping(value = "/mobile/user/admissions/list", method = RequestMethod.GET)
	public ModelAndView admissions(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<Post> posts=postService.getAllPosts(10, 0);
		modelAndView.addObject("posts", posts);
		modelAndView.setViewName("/mobile/admissions/list");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/admissions/tests", method = RequestMethod.GET)
	public ModelAndView tests(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<Tests> tests = admissionService.getUserTestsList(user.getId());
		modelAndView.addObject("tests", tests);
		modelAndView.setViewName("/mobile/admissions/tests");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveUserTests", method = {RequestMethod.GET, RequestMethod.POST})
	public String userReport(@ModelAttribute Tests test,
			HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		//String itemS = list.getUniversity();
		//String[] itemsList = itemS.split(",");
		
		//Shortlist orderList = new Shortlist();
		//orderList.setUser_id(user.getId());
		
		//for(int i=0; i<itemsList.length; i++){
			//list.setUniversity(itemsList [i]);
			//list.setUser_id(user.getId());
			//admissionService.saveUserTest(test);
		//}
		if(admissionService.saveUserTest(test)) {
			return "success";
		} else {
			return "failed";
		}
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveTestScore/{score}/{id}", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveTicketScore(@PathVariable int id, @PathVariable String score,
			HttpSession session) {
		if(admissionService.saveTestScore(id, score)) {
			return "success";
		} else {
			return "failed";
		}
	}
	
	@RequestMapping(value = "/mobile/user/admissions/shortlist", method = RequestMethod.GET)
	public ModelAndView shortlist(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		String loc = admissionService.getUniversities("nothing");
		modelAndView.addObject("loc", loc);
		List<Shortlist> shortlist = admissionService.getUserShortList(user.getId()); 
		modelAndView.addObject("shortlist", shortlist);
		modelAndView.setViewName("/mobile/admissions/shortlist");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveShortlist", method = {RequestMethod.GET, RequestMethod.POST})
	public String userReport(@ModelAttribute Shortlist list,
			HttpSession session) {
		
		User user = (User) session.getAttribute("User");
		String itemS = list.getUniversity();
		String[] itemsList = itemS.split(",");
		
		Shortlist orderList = new Shortlist();
		orderList.setUser_id(user.getId());
		
		for(int i=0; i<itemsList.length; i++){
			list.setUniversity(itemsList [i]);
			list.setUser_id(user.getId());
			admissionService.saveShortlist(list);
		}
		return "success";
	}
	
	@RequestMapping(value = "/mobile/user/admissions/applications", method = RequestMethod.GET)
	public ModelAndView applications(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<Shortlist> shortlist = admissionService.getUserShortList(user.getId()); 
		modelAndView.addObject("shortlist", shortlist);
		modelAndView.setViewName("/mobile/admissions/applications");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/admissions/application/{id}", method = RequestMethod.GET)
	public ModelAndView applicationsUniveristy(@PathVariable int id, HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/admissions/application");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/saveUserApplication", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView submitPurchase(
			@RequestParam(value = "app_file") MultipartFile app_file,
			@ModelAttribute("application") Application application, HttpSession session) {

		ModelAndView modelAndView = new ModelAndView();

		String filename = null;
		if (!app_file.isEmpty()) {
			filename = application.getShortlist_id() + app_file.getOriginalFilename().substring(app_file.getOriginalFilename().lastIndexOf('.'));
		}
		application.setFilename(filename);
		boolean id = admissionService.saveUserApplication(application);
		if (id) {
			uploadFile(filename, app_file, "APPLICATIONS");
			modelAndView.addObject("success", true);
			modelAndView.setViewName("redirect:/mobile/user/admissions/applications");
		} else {
			modelAndView.addObject("success", false);
			modelAndView.setViewName("redirect:/mobile/user/admissions/applications");
		}

		return modelAndView;
	}
	
	private void uploadFile(String filename, MultipartFile image, String type) {
		File image_path = new File(servletContext.getRealPath("/") + "uploaded_files/DOC/" + type + "/" + filename);
		image_path.getParentFile().mkdirs();
		try {
			FileUtils.writeByteArrayToFile(image_path, image.getBytes());

		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	@RequestMapping(value = "/mobile/user/admissions/visa", method = RequestMethod.GET)
	public ModelAndView visa(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/admissions/visa");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/saveVisaGuidance", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveVisaGuidance(@ModelAttribute VisaGuidance visa,
			HttpSession session) {
		User user = (User) session.getAttribute("User");
		visa.setUser_id(user.getId());
		boolean save = admissionService.saveVisaGuidance(visa);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		//return null;
	}
	
	@RequestMapping(value = "/mobile/user/admissions/scholarships", method = RequestMethod.GET)
	public ModelAndView scholarships(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/admissions/scholarships");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/mobile/user/admissions/tickets", method = RequestMethod.GET)
	public ModelAndView tickets(HttpSession session){
		
		User user = (User) session.getAttribute("User");
		ModelAndView modelAndView=new ModelAndView();
		List<FlightTickets> tickets = admissionService.getUserTicketsRequests(user.getId()); 
		modelAndView.addObject("tickets", tickets);
		modelAndView.setViewName("/mobile/admissions/tickets");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveTicketsRequest", method = {RequestMethod.GET, RequestMethod.POST})
	public String saveTicketsRequest(@ModelAttribute FlightTickets tickets,
			HttpSession session) {
		
		if(admissionService.saveTicketsRequest(tickets)) {
			return "success";
		} else {
			return "failed";
		}
	}
	
	@RequestMapping(value = "/admissions/getUniversities", method = {RequestMethod.GET, RequestMethod.POST})
	public String getList(@RequestParam String university, HttpSession session) {
		String loc = admissionService.getUniversities(university);
		System.out.println("List:"+loc);
		return loc;
	}
	
	@RequestMapping(value = "/mobile/user/admissions/accommodation", method = RequestMethod.GET)
	public ModelAndView accommodation(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		User user = (User) session.getAttribute("User");
		String loc = admissionService.getUniversities("nothing");
		modelAndView.addObject("loc", loc);
		List<Accommodation> accoms = admissionService.getUserAccommodationRequests(user.getId()); 
		modelAndView.addObject("accoms", accoms);
		modelAndView.setViewName("/mobile/admissions/accommodation");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/mobile/saveAccommodationRequest", method = {RequestMethod.GET, RequestMethod.POST})
	public String userAccommodation(@ModelAttribute Accommodation accommodation,
			HttpSession session) {
		
		if(admissionService.saveAccommodationRequest(accommodation)) {
			return "success";
		} else {
			return "failed";
		}
	}
	
	@RequestMapping(value = "/mobile/user/admissions/loan", method = RequestMethod.GET)
	public ModelAndView loan(HttpSession session){
		
		ModelAndView modelAndView=new ModelAndView();
		modelAndView.setViewName("/mobile/admissions/loan");
		
		return modelAndView;
	}
	
	@ResponseBody
	@RequestMapping(value = "/apply-loan", method = RequestMethod.POST)
	public String applyLoanNow(@ModelAttribute Loan loan,
			HttpSession session) {
		
		if(cultodeService.isUserAppliedForLoan(loan.getUser_id())) {
			return "exist";
		} else {
		boolean save = cultodeService.applyLoan(loan);
			if (save) {
				return "success";
			} else {
				return "error";
			}
		}
	}
	
}
