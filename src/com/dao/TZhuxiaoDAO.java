package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TZhuxiao;

/**
 * Data access object (DAO) for domain model class TZhuxiao.
 * 
 * @see com.model.TZhuxiao
 * @author MyEclipse Persistence Tools
 */

public class TZhuxiaoDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TZhuxiaoDAO.class);

	// property constants
	public static final String USER_ID = "userId";

	public static final String ZHUXIAO_SHIJIAN = "zhuxiaoShijian";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TZhuxiao transientInstance)
	{
		log.debug("saving TZhuxiao instance");
		try
		{
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re)
		{
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(TZhuxiao persistentInstance)
	{
		log.debug("deleting TZhuxiao instance");
		try
		{
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re)
		{
			log.error("delete failed", re);
			throw re;
		}
	}

	public TZhuxiao findById(java.lang.Integer id)
	{
		log.debug("getting TZhuxiao instance with id: " + id);
		try
		{
			TZhuxiao instance = (TZhuxiao) getHibernateTemplate().get(
					"com.model.TZhuxiao", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TZhuxiao instance)
	{
		log.debug("finding TZhuxiao instance by example");
		try
		{
			List results = getHibernateTemplate().findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re)
		{
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value)
	{
		log.debug("finding TZhuxiao instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TZhuxiao as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findByZhuxiaoShijian(Object zhuxiaoShijian)
	{
		return findByProperty(ZHUXIAO_SHIJIAN, zhuxiaoShijian);
	}

	public List findAll()
	{
		log.debug("finding all TZhuxiao instances");
		try
		{
			String queryString = "from TZhuxiao";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TZhuxiao merge(TZhuxiao detachedInstance)
	{
		log.debug("merging TZhuxiao instance");
		try
		{
			TZhuxiao result = (TZhuxiao) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TZhuxiao instance)
	{
		log.debug("attaching dirty TZhuxiao instance");
		try
		{
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(TZhuxiao instance)
	{
		log.debug("attaching clean TZhuxiao instance");
		try
		{
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re)
		{
			log.error("attach failed", re);
			throw re;
		}
	}

	public static TZhuxiaoDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TZhuxiaoDAO) ctx.getBean("TZhuxiaoDAO");
	}
}