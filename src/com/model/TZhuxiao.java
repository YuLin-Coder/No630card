package com.model;

/**
 * TZhuxiao generated by MyEclipse Persistence Tools
 */

public class TZhuxiao implements java.io.Serializable
{

	// Fields

	private Integer zhuxiaoId;

	private Integer userId;

	private String zhuxiaoShijian;

	// Constructors

	/** default constructor */
	public TZhuxiao()
	{
	}

	/** full constructor */
	public TZhuxiao(Integer userId, String zhuxiaoShijian)
	{
		this.userId = userId;
		this.zhuxiaoShijian = zhuxiaoShijian;
	}

	// Property accessors

	public Integer getZhuxiaoId()
	{
		return this.zhuxiaoId;
	}

	public void setZhuxiaoId(Integer zhuxiaoId)
	{
		this.zhuxiaoId = zhuxiaoId;
	}

	public Integer getUserId()
	{
		return this.userId;
	}

	public void setUserId(Integer userId)
	{
		this.userId = userId;
	}

	public String getZhuxiaoShijian()
	{
		return this.zhuxiaoShijian;
	}

	public void setZhuxiaoShijian(String zhuxiaoShijian)
	{
		this.zhuxiaoShijian = zhuxiaoShijian;
	}

}