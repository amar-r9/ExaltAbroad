package com.cultode.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.Instant;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.cultode.model.Talent;
import com.cultode.model.User;
import com.cultode.service.AdminService;
import com.cultode.service.ArticleService;
import com.cultode.service.CultodeService;
import com.cultode.service.TalentService;
import com.cultode.service.UserService;


@Controller
public class TalentController {
	
	@Autowired
	private ServletContext servletContext;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private TalentService talentService;
	
	@RequestMapping(value = "/mobile/user/talent/upload", method = RequestMethod.GET)
	public String talentForm(ModelMap map) {
		return "/mobile/talent/upload";
	}
	
	@ResponseBody
	@RequestMapping(value = "/save-talent", method = RequestMethod.POST)
	public ModelAndView uploadTalent(@ModelAttribute("talent") Talent talent,
			@RequestParam(value = "talent_file", required = true) MultipartFile talent_file,
			HttpSession session) throws IOException {
			
		ModelAndView modelAndView=new ModelAndView();
		User user = (User) session.getAttribute("User");
		talent.setUser_id(user.getId());
		Timestamp time = Timestamp.from(Instant.now());
		talent.setSubmit_time(time);
		
		Integer maxId = talentService.getTalentMaxId();
		int code = maxId.intValue() + 1; // 6300000
		
		String filename = code + "."
				+ talent_file.getOriginalFilename().split("\\.")[1];
		talent.setFilename(filename);
		
		boolean save = talentService.saveUserTalent(talent);
			if (save) {
				userService.updateUserPoints(user.getId(), 20);
				uploadFile(filename, talent_file, "TALENT");
				modelAndView.setViewName("redirect:/mobile/user/talent/entry/"+code+"");
			} else {
				modelAndView.setViewName("redirect:/mobile/user/talent/entry/"+code+"");
			}
		return modelAndView;
	}
	
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
	

	
	@RequestMapping(value = "/mobile/user/talent/entries", method = RequestMethod.GET)
	public ModelAndView allEntries(HttpSession session) {
		ModelAndView modelAndView=new ModelAndView();

		User user = (User) session.getAttribute("User");
		List<Talent> talents = talentService.getAllTalentEntriesByUser(user.getId());
			
		modelAndView.addObject("talents", talents);
		
		modelAndView.setViewName("/mobile/talent/entries");
		return modelAndView;
		
	}
	
	@RequestMapping(value = "/mobile/user/talent/entry/{id}", method = RequestMethod.GET)
	public ModelAndView textZoneEntries(HttpSession session, @PathVariable int id) {
		ModelAndView modelAndView=new ModelAndView();

		Talent talent = talentService.getTalentEntry(id);
		
		modelAndView.addObject("talent", talent);
		
		modelAndView.setViewName("/mobile/talent/entry");
		return modelAndView;
		
	}
	
}
