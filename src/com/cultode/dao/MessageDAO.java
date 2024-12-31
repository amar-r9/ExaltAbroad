package com.cultode.dao;

import java.util.List;

import com.cultode.bean.MessageBean;
import com.cultode.model.Messages;
import com.cultode.model.Post;

public interface MessageDAO {

	public boolean saveMessage(Messages message);

	public List<Messages> getRecentMessages(int sender_id, int receiver_id, int limit, int offset);

	public boolean likeAMessage(int message_id);

	public boolean reportAMessage(int message_id);

	public List<Messages> getUserChats(int user_id, int limit, int offset);

	public List<MessageBean> getUserChatList(int client_id, int user_id, int limit, int offset);

	public String getRecentMessage(int id, int receiver_id);
	
}
