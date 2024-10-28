package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TTouzhi;

/**
 * Data access object (DAO) for domain model class TTouzhi.
 * 
 * @see com.model.TTouzhi
 * @author MyEclipse Persistence Tools
 */

public class TTouzhiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TTouzhiDAO.class);

	// property constants
	public static final String TOUZHI_SHIJIAN = "touzhiShijian";

	public static final String TOUZHI_JINE = "touzhiJine";

	public static final String TOUZHI_HUANHUAN = "touzhiHuanhuan";

	public static final String USER_ID = "userId";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TTouzhi transientInstance)
	{
		log.debug("saving TTouzhi instance");
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

	public void delete(TTouzhi persistentInstance)
	{
		log.debug("deleting TTouzhi instance");
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

	public TTouzhi findById(java.lang.String id)
	{
		log.debug("getting TTouzhi instance with id: " + id);
		try
		{
			TTouzhi instance = (TTouzhi) getHibernateTemplate().get(
					"com.model.TTouzhi", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TTouzhi instance)
	{
		log.debug("finding TTouzhi instance by example");
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
		log.debug("finding TTouzhi instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TTouzhi as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByTouzhiShijian(Object touzhiShijian)
	{
		return findByProperty(TOUZHI_SHIJIAN, touzhiShijian);
	}

	public List findByTouzhiJine(Object touzhiJine)
	{
		return findByProperty(TOUZHI_JINE, touzhiJine);
	}

	public List findByTouzhiHuanhuan(Object touzhiHuanhuan)
	{
		return findByProperty(TOUZHI_HUANHUAN, touzhiHuanhuan);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findAll()
	{
		log.debug("finding all TTouzhi instances");
		try
		{
			String queryString = "from TTouzhi";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TTouzhi merge(TTouzhi detachedInstance)
	{
		log.debug("merging TTouzhi instance");
		try
		{
			TTouzhi result = (TTouzhi) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TTouzhi instance)
	{
		log.debug("attaching dirty TTouzhi instance");
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

	public void attachClean(TTouzhi instance)
	{
		log.debug("attaching clean TTouzhi instance");
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

	public static TTouzhiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TTouzhiDAO) ctx.getBean("TTouzhiDAO");
	}
}