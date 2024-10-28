package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TUserDAO;
import com.model.TUser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport
{
    private int userId;
	private String userName;
	private String userPw;
	private String userXuehao;
	private String userAddress;
	private String userSex;
	private String userTel;
	private String userEmail;
	private String userQq;
	
	private String newUserPw;
	
	private String userCard;
	private int userJine;
   
	
	
	
	private String message;
	private String path;
	
	private TUserDAO userDAO;
	
	public String userLogin()
	{
		String sql="from TUser where userName=? and userPw=?";
		Object[] con={userName,userPw};
		List userList=userDAO.getHibernateTemplate().find(sql,con);
		if(userList.size()==0)
		{
			Map request=(Map)ServletActionContext.getContext().get("request");
			request.put("error", "用户名或密码错误");
    		return ActionSupport.ERROR;
		}
		else
		{
			 Map session= ServletActionContext.getContext().getSession();
			 TUser user=(TUser)userList.get(0);
			 session.put("user", user);
			 return ActionSupport.SUCCESS;
		}
	}
	
	
	public String userLogout()
	{
		Map session= ServletActionContext.getContext().getSession();
		session.remove("user");
		return ActionSupport.SUCCESS;
	}
	
	
	public String userReg()
	{
		TUser user=new TUser();
		user.setUserName(userName);
		user.setUserPw(userPw);
		user.setUserAddress(userAddress);
		user.setUserTel(userTel);
		user.setUserXuehao(userXuehao);
		user.setUserEmail(userEmail);
		user.setUserSex(userSex);
		user.setUserQq(userQq);
		user.setUserType(0);// 注册完毕。等待审批中
		userDAO.save(user);
		
		return "successAdd";
	}
	
	
	public String userDel()
	{
		userDAO.delete(userDAO.findById(userId));
		this.setMessage("删除成功");
		this.setPath("userManage.action");
		return "succeed";
	}
	
	
	public String userManage()//注册用户管理
	{
		String sql="from TUser where userType=0";
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	public String cardUserManage()
	{
		String sql="from TUser where userType=1";
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String cardUserDel()
	{
		userDAO.delete(userDAO.findById(userId));
		this.setMessage("删除成功");
		this.setPath("cardUserManage.action");
		return "succeed";
	}
	
	
	
	public String userCardFen()
	{
		TUser user=userDAO.findById(userId);
		user.setUserCard(userCard);
		user.setUserJine(userJine);
		user.setUserType(1);
		userDAO.attachDirty(user);
		this.setPath("cardUserManage.action");
		this.setMessage("分配完毕");
		return "succeed";
	}
	
	public String cardJine()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	public String cardJine1()
	{
		TUser user=userDAO.findById(userId);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("user", user);
		return ActionSupport.SUCCESS;
	}
	
	
	public String userCardSearch()
	{
		String sql="from TUser where userCard like '%"+userCard+"%'";
		List userList=userDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("userList", userList);
		return ActionSupport.SUCCESS;
	}
	
	
	
	
	public String getUserAddress()
	{
		return userAddress;
	}

	public void setUserAddress(String userAddress)
	{
		this.userAddress = userAddress;
	}

	public String getUserXuehao()
	{
		return userXuehao;
	}


	public String getUserCard()
	{
		return userCard;
	}


	public void setUserCard(String userCard)
	{
		this.userCard = userCard;
	}


	public int getUserJine()
	{
		return userJine;
	}


	public void setUserJine(int userJine)
	{
		this.userJine = userJine;
	}


	public void setUserXuehao(String userXuehao)
	{
		this.userXuehao = userXuehao;
	}


	public String getUserEmail()
	{
		return userEmail;
	}

	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}

	public String getUserQq()
	{
		return userQq;
	}

	public void setUserQq(String userQq)
	{
		this.userQq = userQq;
	}


	public String getUserSex()
	{
		return userSex;
	}

	public void setUserSex(String userSex)
	{
		this.userSex = userSex;
	}

	public String getUserTel()
	{
		return userTel;
	}

	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}

	public int getUserId()
	{
		return userId;
	}


	public void setUserId(int userId)
	{
		this.userId = userId;
	}


	public String getUserName()
	{
		return userName;
	}

	public void setUserName(String userName)
	{
		this.userName = userName;
	}

	public TUserDAO getUserDAO()
	{
		return userDAO;
	}


	public String getMessage()
	{
		return message;
	}


	public String getNewUserPw()
	{
		return newUserPw;
	}

	public void setNewUserPw(String newUserPw)
	{
		this.newUserPw = newUserPw;
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


	public void setUserDAO(TUserDAO userDAO)
	{
		this.userDAO = userDAO;
	}


	public String getUserPw()
	{
		return userPw;
	}

	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}

	
}
