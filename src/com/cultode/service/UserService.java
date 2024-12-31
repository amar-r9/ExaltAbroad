package com.cultode.service;

import java.util.List;
import java.util.Map;

import com.cultode.model.Referral;
import com.cultode.model.User;

public interface UserService {

	public User validateUser(String username, String password);

	public User getUserDetails(String username);
	
	public boolean isUserExist(String username);

	public Map<String, String> getUserPassword(String userNameOrMail);

	public boolean saveUser(User user);

	public boolean activateRegisteredUser(int id);

	public boolean changePassword(User user);

	public boolean updateProfilePicture(User user);

	public boolean updateUserDetails(User user);

	public boolean updateUserPoints(int user_id, int points);

	public List<User> getTopUsers(int limit);

	public User getUserDetailsById(int user_id);

	public String getUserNameById(int id);

	public List<Integer> getUserId(int id, int i);

	public List<User> getUsersList(int sessionUser, int limit);

	public boolean saveUserReference(Referral refer);

}
