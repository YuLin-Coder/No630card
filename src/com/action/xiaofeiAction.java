package com.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TTouzhiDAO;
import com.dao.TUserDAO;
import com.dao.TXiaofeiDAO;
import com.model.TTouzhi;
import com.model.TUser;
import com.model.TXiaofei;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Util;

public class xiaofeiAction extends ActionSupport
{

	private Integer xiaofeiId;
	private String xiaofeiShijian;
	private String xiaofeiDidian;
	private Integer xiaofeiJine;
	private String xiaofeiBeizhu;
	private int userId;
	
	private String message;
	private String path;
	
	private TXiaofeiDAO xiaofeiDAO;
	private TUserDAO userDAO;
	private TTouzhiDAO touzhiDAO;
	
	public String xiaofeiAdd()
	{
		TUser user=userDAO.findById(userId);
		user.setUserJine(user.getUserJine()-xiaofeiJine);
		userDAO.attachDirty(user);
		
		TXiaofei xiaofei=new TXiaofei();
		xiaofei.setUserId(userId);
		xiaofei.setXiaofeiBeizhu(xiaofeiBeizhu);
		xiaofei.setXiaofeiDidian(xiaofeiDidian);
		xiaofei.setXiaofeiJine(xiaofeiJine);
		xiaofei.setXiaofeiShijian(xiaofeiShijian);
		xiaofeiDAO.save(xiaofei);
		if(xiaofeiJine>user.getUserJine())
		{
			this.setMessage("你的卡内余额不足。本次消费是透支，卡内余额:"+user.getUserJine());
			TTouzhi touzhi=new TTouzhi();
			touzhi.setUserId(userId);
			if(user.getUserJine()>0)
			{
				touzhi.setTouzhiJine(xiaofeiJine-user.getUserJine());
			}
			else
			{
				touzhi.setTouzhiJine(xiaofeiJine);
			}
			
			touzhi.setTouzhiShijian(xiaofeiShijian);
			
			try
			{
				Date date1=Util.newDate(xiaofeiShijian);
				Date date2=new Date(date1.getTime()+10*24*60*60*1000);
				
				touzhi.setTouzhiHuankuanshijian(new SimpleDateFormat("yyyy-MM-dd").format(date2));

			} catch (ParseException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			touzhiDAO.save(touzhi);
		}
		else
		{
			this.setMessage("操作成功,卡内余额:"+user.getUserJine());
		}
		
		this.setPath("cardUser/card/xiaofeiAdd.jsp");
		return "succeed";
	}
	
	public String xiaofeijilu()
	{
		String sql="from TXiaofei where userId="+userId;
		List xiaofeiList=xiaofeiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("xiaofeiList", xiaofeiList);
		return ActionSupport.SUCCESS;
	}
	
	public String xiaofeiDel()
	{
		TXiaofei xiaofei=xiaofeiDAO.findById(xiaofeiId);
		int userId=xiaofei.getUserId();
		xiaofeiDAO.delete(xiaofei);
		this.setMessage("操作成功");
		this.setPath("xiaofeijilu.action?userId="+userId);
		return "succeed";
	}
	
	public String xiaofeiEditPre()
	{
		TXiaofei xiaofei=xiaofeiDAO.findById(xiaofeiId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("xiaofei", xiaofei);
		return ActionSupport.SUCCESS;
	}
	
	public String xiaofeiEdit()
	{
		TXiaofei xiaofei=xiaofeiDAO.findById(xiaofeiId);
		int userId=xiaofei.getUserId();
		xiaofei.setXiaofeiBeizhu(xiaofeiBeizhu);
		xiaofei.setXiaofeiDidian(xiaofeiDidian);
		xiaofei.setXiaofeiJine(xiaofeiJine);
		xiaofei.setXiaofeiShijian(xiaofeiShijian);
		xiaofeiDAO.attachDirty(xiaofei);
		this.setMessage("修改成功");
		this.setPath("xiaofeijilu.action?userId="+userId);
		return "succeed";
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

	public int getUserId()
	{
		return userId;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}

	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}

	public TTouzhiDAO getTouzhiDAO()
	{
		return touzhiDAO;
	}

	public void setTouzhiDAO(TTouzhiDAO touzhiDAO)
	{
		this.touzhiDAO = touzhiDAO;
	}

	public void setUserId(int userId)
	{
		this.userId = userId;
	}

	public String getXiaofeiBeizhu()
	{
		return xiaofeiBeizhu;
	}

	public void setXiaofeiBeizhu(String xiaofeiBeizhu)
	{
		this.xiaofeiBeizhu = xiaofeiBeizhu;
	}

	public TXiaofeiDAO getXiaofeiDAO()
	{
		return xiaofeiDAO;
	}

	public void setXiaofeiDAO(TXiaofeiDAO xiaofeiDAO)
	{
		this.xiaofeiDAO = xiaofeiDAO;
	}

	public String getXiaofeiDidian()
	{
		return xiaofeiDidian;
	}

	public void setXiaofeiDidian(String xiaofeiDidian)
	{
		this.xiaofeiDidian = xiaofeiDidian;
	}

	public Integer getXiaofeiId()
	{
		return xiaofeiId;
	}

	public void setXiaofeiId(Integer xiaofeiId)
	{
		this.xiaofeiId = xiaofeiId;
	}

	public Integer getXiaofeiJine()
	{
		return xiaofeiJine;
	}

	public void setXiaofeiJine(Integer xiaofeiJine)
	{
		this.xiaofeiJine = xiaofeiJine;
	}

	public String getXiaofeiShijian()
	{
		return xiaofeiShijian;
	}

	public void setXiaofeiShijian(String xiaofeiShijian)
	{
		this.xiaofeiShijian = xiaofeiShijian;
	}
	
}
