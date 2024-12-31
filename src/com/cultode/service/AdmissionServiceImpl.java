package com.cultode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.AdmissionDAO;
import com.cultode.dao.EventDAO;
import com.cultode.dao.PostDAO;
import com.cultode.model.Accommodation;
import com.cultode.model.Admission;
import com.cultode.model.Application;
import com.cultode.model.FlightTickets;
import com.cultode.model.JobApplications;
import com.cultode.model.JobPosts;
import com.cultode.model.Post;
import com.cultode.model.PostComments;
import com.cultode.model.Shortlist;
import com.cultode.model.Tests;
import com.cultode.model.VisaGuidance;

@Service
public class AdmissionServiceImpl implements AdmissionService {

	@Autowired
	AdmissionDAO admissionDao;

	@Override
	public boolean saveShortlist(Shortlist list) {
		return admissionDao.saveShortlist(list);
	}

	@Override
	public boolean saveUserTest(Tests test) {
		return admissionDao.saveUserTest(test);
	}

	@Override
	public List<Tests> getUserTestsList(int id) {
		return admissionDao.getUserTestsList(id);
	}

	@Override
	public String getUniversities(String university) {
		return admissionDao.getUniversities(university);
	}

	@Override
	public boolean saveAccommodationRequest(Accommodation accommodation) {
		return admissionDao.saveAccommodationRequest(accommodation);
	}

	@Override
	public boolean saveTicketsRequest(FlightTickets tickets) {
		return admissionDao.saveTicketsRequest(tickets);
	}

	@Override
	public List<Shortlist> getUserShortList(int user_id) {
		return admissionDao.getUserShortList(user_id);
	}

	@Override
	public List<Accommodation> getUserAccommodationRequests(int user_id) {
		return admissionDao.getUserAccommodationRequests(user_id);
	}

	@Override
	public List<FlightTickets> getUserTicketsRequests(int user_id) {
		return admissionDao.getUserTicketsRequests(user_id);
	}

	@Override
	public boolean saveTestScore(int id, String score) {
		return admissionDao.saveTestScore(id, score);
	}

	@Override
	public boolean saveUserAdmission(Admission admission) {
		return admissionDao.saveUserAdmission(admission);
	}

	@Override
	public boolean saveUserApplication(Application application) {
		return admissionDao.saveUserApplication(application);
	}

	@Override
	public boolean saveVisaGuidance(VisaGuidance visa) {
		return admissionDao.saveVisaGuidance(visa);
	}
	
}
