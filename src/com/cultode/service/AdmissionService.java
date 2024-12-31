package com.cultode.service;

import java.util.List;

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

public interface AdmissionService {

	public boolean saveShortlist(Shortlist list);

	public boolean saveUserTest(Tests test);

	public List<Tests> getUserTestsList(int id);

	public String getUniversities(String university);

	public boolean saveAccommodationRequest(Accommodation accommodation);

	public boolean saveTicketsRequest(FlightTickets tickets);

	public List<Shortlist> getUserShortList(int user_id);

	public List<Accommodation> getUserAccommodationRequests(int user_id);

	public List<FlightTickets> getUserTicketsRequests(int user_id);

	public boolean saveTestScore(int id, String score);

	public boolean saveUserAdmission(Admission admission);

	public boolean saveUserApplication(Application application);

	public boolean saveVisaGuidance(VisaGuidance visa);

}
