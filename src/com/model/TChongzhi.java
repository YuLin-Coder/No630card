package com.model;

/**
 * TChongzhi generated by MyEclipse Persistence Tools
 */

public class TChongzhi implements java.io.Serializable
{

	// Fields

	private Integer chongzhiId;

	private Integer userId;

	private Integer money;
	
	private Integer zhuangtai;

	// Constructors

	/** default constructor */
	public TChongzhi()
	{
	}

	/** minimal constructor */
	public TChongzhi(Integer chongzhiId)
	{
		this.chongzhiId = chongzhiId;
	}

	/** full constructor */
	public TChongzhi(Integer chongzhiId, Integer userId, Integer money)
	{
		this.chongzhiId = chongzhiId;
		this.userId = userId;
		this.money = money;
	}

	// Property accessors

	public Integer getChongzhiId()
	{
		return this.chongzhiId;
	}

	public void setChongzhiId(Integer chongzhiId)
	{
		this.chongzhiId = chongzhiId;
	}

	public Integer getZhuangtai()
	{
		return zhuangtai;
	}

	public void setZhuangtai(Integer zhuangtai)
	{
		this.zhuangtai = zhuangtai;
	}

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public Integer getMoney()
	{
		return this.money;
	}

	public void setMoney(Integer money)
	{
		this.money = money;
	}

}