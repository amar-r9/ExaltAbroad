package com.cultode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.TalentDAO;
import com.cultode.model.Talent;

@Service
public class TalentServiceImpl implements TalentService {

	@Autowired
	TalentDAO talentDao;

	@Override
	public boolean saveUserTalent(Talent talent) {
		return talentDao.saveUserTalent(talent);
	}

	@Override
	public Integer getTalentMaxId() {
		return talentDao.getTalentMaxId();
	}

	@Override
	public List<Talent> getAllTalentEntriesByUser(int id) {
		return talentDao.getAllTalentEntriesByUser(id);
	}

	@Override
	public Talent getTalentEntry(int id) {
		return talentDao.getTalentEntry(id);
	}
	
}
