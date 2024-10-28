package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TChongzhiDAO;
import com.dao.TUserDAO;
import com.model.TChongzhi;
import com.model.TUser;
import com.opensymphony.xwork2.ActionSupport;

public class chongzhiAction extends ActionSupport
{
	private int chongzhiId;
	private int userId;
	private int money;
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	private TChongzhiDAO chongzhiDAO;
	
	
	public String chongzhiShen()
	{
		TChongzhi chongzhi=new TChongzhi();
		chongzhi.setMoney(money);
		chongzhi.setUserId(userId);
		chongzhi.setZhuangtai(0);
		chongzhiDAO.save(chongzhi);
		this.setMessage("申请完毕。等待管理员充值");
		this.setPath("cardUser/card/chongzhiShen.jsp");
		return "succeed";
	}
	
	public String chongzhiMana()
	{
		String sql="from TChongzhi where zhuangtai=0";
		List chongzhiList=chongzhiDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("chongzhiList", chongzhiList);
		return ActionSupport.SUCCESS;
	}
	
	public String chongzhiDel()
	{
		TChongzhi chongzhi=chongzhiDAO.findById(chongzhiId);
		chongzhiDAO.delete(chongzhi);
		this.setMessage("操作成功");
		this.setPath("chongzhiMana.action");
		return "succeed";
	}
	
	public String chongzhiAdd()
	{
		TChongzhi chongzhi=chongzhiDAO.findById(chongzhiId);
		chongzhi.setZhuangtai(1);
		chongzhiDAO.attachDirty(chongzhi);
		
		TUser user=userDAO.findById(userId);
		user.setUserJine(money+user.getUserJine());
		userDAO.attachDirty(user);
		this.setMessage("操作成功");
		this.setPath("chongzhiMana.action");
		return "succeed";
	}
	
	
	
	
	public TChongzhiDAO getChongzhiDAO()
	{
		return chongzhiDAO;
	}
	public void setChongzhiDAO(TChongzhiDAO chongzhiDAO)
	{
		this.chongzhiDAO = chongzhiDAO;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	
	public int getChongzhiId()
	{
		return chongzhiId;
	}

	public void setChongzhiId(int chongzhiId)
	{
		this.chongzhiId = chongzhiId;
	}

	public int getMoney()
	{
		return money;
	}
	public void setMoney(int money)
	{
		this.money = money;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public TUserDAO getUserDAO()
	{
		return userDAO;
	}
	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
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
