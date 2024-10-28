package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TTouzhiDAO;
import com.opensymphony.xwork2.ActionSupport;

public class touzhiAction extends ActionSupport
{
    private int userId;
	private int touzhiId;
	private TTouzhiDAO touzhiDAO;
	
	public String touzhiMy()
	{
		String sql="from TTouzhi where userId="+userId;
		List touzhiList=touzhiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("touzhiList", touzhiList);
		return ActionSupport.SUCCESS;
	}
	
	public TTouzhiDAO getTouzhiDAO()
	{
		return touzhiDAO;
	}
	public void setTouzhiDAO(TTouzhiDAO touzhiDAO)
	{
		this.touzhiDAO = touzhiDAO;
	}
	public int getTouzhiId()
	{
		return touzhiId;
	}
	public void setTouzhiId(int touzhiId)
	{
		this.touzhiId = touzhiId;
	}

	public int getUserId()
	{
		return userId;
	}

	public void setUserId(int userId)
	{
		this.userId = userId;
	}
	
}
