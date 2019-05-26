
package com.kanumalivad.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.*;

@Entity
@Table(name="Comments")
public class Comments implements Serializable {
    
	 @Id @GeneratedValue
	private int cid;
	private int pid;
	private int replyid;
	private String name;
	private String content;
	private Date date;
	
	public Comments(){
	}
	public Comments(int pid, int replyid, String name, String content, Date date) {
		super();
		this.pid = pid;
		this.replyid = replyid;
		this.name = name;
		this.content = content;
		this.date = date;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getReplayid() {
		return replyid;
	}
	public void setReplayid(int replayid) {
		this.replyid = replayid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	
	
	
}