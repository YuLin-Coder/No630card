package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TXiaofei;

/**
 * Data access object (DAO) for domain model class TXiaofei.
 * 
 * @see com.model.TXiaofei
 * @author MyEclipse Persistence Tools
 */

public class TXiaofeiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TXiaofeiDAO.class);

	// property constants
	public static final String XIAOFEI_SHIJIAN = "xiaofeiShijian";

	public static final String XIAOFEI_DIDIAN = "xiaofeiDidian";

	public static final String XIAOFEI_JINE = "xiaofeiJine";

	public static final String XIAOFEI_BEIZHU = "xiaofeiBeizhu";

	public static final String USER_ID = "userId";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TXiaofei transientInstance)
	{
		log.debug("saving TXiaofei instance");
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

	public void delete(TXiaofei persistentInstance)
	{
		log.debug("deleting TXiaofei instance");
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

	public TXiaofei findById(java.lang.Integer id)
	{
		log.debug("getting TXiaofei instance with id: " + id);
		try
		{
			TXiaofei instance = (TXiaofei) getHibernateTemplate().get(
					"com.model.TXiaofei", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TXiaofei instance)
	{
		log.debug("finding TXiaofei instance by example");
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
		log.debug("finding TXiaofei instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TXiaofei as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re)
		{
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByXiaofeiShijian(Object xiaofeiShijian)
	{
		return findByProperty(XIAOFEI_SHIJIAN, xiaofeiShijian);
	}

	public List findByXiaofeiDidian(Object xiaofeiDidian)
	{
		return findByProperty(XIAOFEI_DIDIAN, xiaofeiDidian);
	}

	public List findByXiaofeiJine(Object xiaofeiJine)
	{
		return findByProperty(XIAOFEI_JINE, xiaofeiJine);
	}

	public List findByXiaofeiBeizhu(Object xiaofeiBeizhu)
	{
		return findByProperty(XIAOFEI_BEIZHU, xiaofeiBeizhu);
	}

	public List findByUserId(Object userId)
	{
		return findByProperty(USER_ID, userId);
	}

	public List findAll()
	{
		log.debug("finding all TXiaofei instances");
		try
		{
			String queryString = "from TXiaofei";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TXiaofei merge(TXiaofei detachedInstance)
	{
		log.debug("merging TXiaofei instance");
		try
		{
			TXiaofei result = (TXiaofei) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TXiaofei instance)
	{
		log.debug("attaching dirty TXiaofei instance");
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

	public void attachClean(TXiaofei instance)
	{
		log.debug("attaching clean TXiaofei instance");
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

	public static TXiaofeiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TXiaofeiDAO) ctx.getBean("TXiaofeiDAO");
	}
}