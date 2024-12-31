package com.cultode.dao;

import java.util.List;

import com.cultode.model.Admin;
import com.cultode.model.User;

public interface AdminDAO {
	
	public Admin validateUser(String username, String password);

	public Integer addAdmin(Admin admin);

	public boolean isAdminExist(String username);

	public List<Admin> getAllAdmins();

	public Admin getAdminDetailsById(int id);

	public String getAdminNameById(int id);

	public List<User> getUserList();

	public List<User> getUserListByReferral(String code);

}
