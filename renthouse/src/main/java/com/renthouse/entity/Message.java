package com.renthouse.entity;

import java.util.Date;

public class Message {
	private int id;
	private int fromUserId;
	private int toUserId;
	private Date createTime;
	private String content;
	private int isRead;
	private int  isDeletedByFormUser;
	private int isDeletedByToUser;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFromUserId() {
		return fromUserId;
	}
	public void setFromUserId(int fromUserId) {
		this.fromUserId = fromUserId;
	}
	public int getToUserId() {
		return toUserId;
	}
	public void setToUserId(int toUserId) {
		this.toUserId = toUserId;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getIsRead() {
		return isRead;
	}
	public void setIsRead(int isRead) {
		this.isRead = isRead;
	}
	public int getIsDeletedByFormUser() {
		return isDeletedByFormUser;
	}
	public void setIsDeletedByFormUser(int isDeletedByFormUser) {
		this.isDeletedByFormUser = isDeletedByFormUser;
	}
	public int getIsDeletedByToUser() {
		return isDeletedByToUser;
	}
	public void setIsDeletedByToUser(int isDeletedByToUser) {
		this.isDeletedByToUser = isDeletedByToUser;
	}
	
	
	
	
	

}
