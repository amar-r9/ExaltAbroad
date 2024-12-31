package com.cultode.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.EventDAO;

@Service
public class EventServiceImpl implements EventService {

	@Autowired
	EventDAO eventDao;
	
}
