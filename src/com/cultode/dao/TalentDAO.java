package com.cultode.dao;

import java.util.List;

import com.cultode.model.Talent;

public interface TalentDAO {

	public boolean saveUserTalent(Talent talent);

	public Integer getTalentMaxId();
	
	public List<Talent> getAllTalentEntriesByUser(int id);
	
	public Talent getTalentEntry(int id);

	public boolean saveEntryVisit(int id);
	
}
