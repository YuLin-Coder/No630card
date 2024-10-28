package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.dao.TZhuxiaoDAO;
import com.model.TUser;
import com.model.TZhuxiao;
import com.opensymphony.xwork2.ActionSupport;

public class zhuxiaoAction extends ActionSupport
{
	private int userId;
	private int zhuxiaoId;
	private TZhuxiaoDAO zhuxiaoDAO;
	private TUserDAO userDAO;
	private String message;
	private String path;
	
	public String zhuxiao()
	{
		TZhuxiao zhuxiao=new TZhuxiao();
		zhuxiao.setUserId(userId);
		zhuxiao.setZhuxiaoShijian(new Date().toLocaleString());
		zhuxiaoDAO.save(zhuxiao);
		return ActionSupport.SUCCESS;
	}
	
	
	public String zhuxiaoAll()
	{
		List zhuxiaoList=zhuxiaoDAO.findAll();
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("zhuxiaoList", zhuxiaoList);
		return ActionSupport.SUCCESS;
	}
	
	public String zhuxiaoByAdmin()
	{
		TZhuxiao zhuxiao=zhuxiaoDAO.findById(zhuxiaoId);
		zhuxiaoDAO.delete(zhuxiao);
		
		TUser user=userDAO.findById(zhuxiao.getUserId());
		userDAO.delete(user);
		this.setMessage("×¢Ïú³É¹¦");
		this.setPath("zhuxiaoAll.action");
		return "succeed";
	}
	
	
	public TUserDAO getUserDAO()
	{
		return userDAO;
	}
	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}
	public TZhuxiaoDAO getZhuxiaoDAO()
	{
		return zhuxiaoDAO;
	}
	public void setZhuxiaoDAO(TZhuxiaoDAO zhuxiaoDAO)
	{
		this.zhuxiaoDAO = zhuxiaoDAO;
	}
	public int getUserId()
	{
		return userId;
	}
	
	public int getZhuxiaoId()
	{
		return zhuxiaoId;
	}


	public void setZhuxiaoId(int zhuxiaoId)
	{
		this.zhuxiaoId = zhuxiaoId;
	}


	public void setUserId(int userId)
	{
		this.userId = userId;
	}


	public String getMessage()
	{
		return message;
	}


	public void setMessage(String message)
	{
		this.message = message;
	}


	public String getPath()
	{
		return path;
	}


	public void setPath(String path)
	{
		this.path = path;
	}
	

}
