package com.cultode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.AdminDAO;
import com.cultode.model.Admin;
import com.cultode.model.User;

@Service
public class AdminServiceImpl implements AdminService {

	
	@Autowired
	AdminDAO adminDao;
	
	@Override
	public Admin validateUser(String username, String password) {
		return adminDao.validateUser(username, password);
	}

	@Override
	public Integer addAdmin(Admin admin) {
		return adminDao.addAdmin(admin);
	}

	@Override
	public boolean isAdminExist(String username) {
		return adminDao.isAdminExist(username);
	}

	@Override
	public List<Admin> getAllAdmins() {
		return adminDao.getAllAdmins();
	}

	@Override
	public Admin getAdminDetailsById(int id) {
		return adminDao.getAdminDetailsById(id);
	}

	@Override
	public String getAdminNameById(int id) {
		return adminDao.getAdminNameById(id);
	}

	@Override
	public List<User> getUserList() {
		return adminDao.getUserList();
	}

	@Override
	public List<User> getUserListByReferral(String code) {
		return adminDao.getUserListByReferral(code);
	}
	
}
