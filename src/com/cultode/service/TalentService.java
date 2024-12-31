package com.cultode.service;

import java.util.List;

import com.cultode.model.Talent;

public interface TalentService {

	public boolean saveUserTalent(Talent talent);

	public Integer getTalentMaxId();

	public List<Talent> getAllTalentEntriesByUser(int id);

	public Talent getTalentEntry(int id);

}
