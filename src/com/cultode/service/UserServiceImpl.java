package com.cultode.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.UserDAO;
import com.cultode.model.Referral;
import com.cultode.model.User;

@Service
public class UserServiceImpl implements UserService {

	
	@Autowired
	UserDAO userDao;
	
	@Override
	public User validateUser(String username, String password) {
		return userDao.validateUser(username, password);
	}

	@Override
	public User getUserDetails(String username) {
		return userDao.getUserDetails(username);
	}

	@Override
	public boolean isUserExist(String username) {
		return userDao.isUserExist(username);
	}

	@Override
	public Map<String, String> getUserPassword(String userNameOrMail) {
		return userDao.getUserPassword(userNameOrMail);
	}

	@Override
	public boolean saveUser(User user) {
		return userDao.saveUser(user);
	}

	@Override
	public boolean activateRegisteredUser(int id) {
		return userDao.activateRegisteredUser(id);
	}

	@Override
	public boolean changePassword(User user) {
		return userDao.changePassword(user);
	}

	@Override
	public boolean updateProfilePicture(User user) {
		return userDao.updateProfilePicture(user);
	}

	@Override
	public boolean updateUserDetails(User user) {
		return userDao.updateUserDetails(user);
	}

	@Override
	public boolean updateUserPoints(int user_id, int points) {
		return userDao.updateUserPoints(user_id, points);
	}
	
	@Override
	public List<User> getTopUsers(int limit) {
		return userDao.getTopUsers(limit);
	}

	@Override
	public User getUserDetailsById(int id) {
		return userDao.getUserDetailsById(id);
	}

	@Override
	public String getUserNameById(int id) {
		return userDao.getUserNameById(id);
	}

	@Override
	public List<Integer> getUserId(int id, int limit) {
		return userDao.getUserId(id, limit);
	}
	
	@Override
	public List<User> getUsersList(int sessionUser, int limit) {
		return userDao.getUsersList(sessionUser, limit);
	}

	@Override
	public boolean saveUserReference(Referral refer) {
		return userDao.saveUserReference(refer);
	}
	
}
