package com.dao;

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.model.TChongzhi;

/**
 * Data access object (DAO) for domain model class TChongzhi.
 * 
 * @see com.model.TChongzhi
 * @author MyEclipse Persistence Tools
 */

public class TChongzhiDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TChongzhiDAO.class);

	// property constants
	public static final String USER_ID = "userId";

	public static final String MONEY = "money";

	protected void initDao()
	{
		// do nothing
	}

	public void save(TChongzhi transientInstance)
	{
		log.debug("saving TChongzhi instance");
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

	public void delete(TChongzhi persistentInstance)
	{
		log.debug("deleting TChongzhi instance");
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

	public TChongzhi findById(java.lang.Integer id)
	{
		log.debug("getting TChongzhi instance with id: " + id);
		try
		{
			TChongzhi instance = (TChongzhi) getHibernateTemplate().get(
					"com.model.TChongzhi", id);
			return instance;
		} catch (RuntimeException re)
		{
			log.error("get failed", re);
			throw re;
		}
	}

	public List findByExample(TChongzhi instance)
	{
		log.debug("finding TChongzhi instance by example");
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
		log.debug("finding TChongzhi instance with property: " + propertyName
				+ ", value: " + value);
		try
		{
			String queryString = "from TChongzhi as model where model."
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

	public List findByMoney(Object money)
	{
		return findByProperty(MONEY, money);
	}

	public List findAll()
	{
		log.debug("finding all TChongzhi instances");
		try
		{
			String queryString = "from TChongzhi";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TChongzhi merge(TChongzhi detachedInstance)
	{
		log.debug("merging TChongzhi instance");
		try
		{
			TChongzhi result = (TChongzhi) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re)
		{
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(TChongzhi instance)
	{
		log.debug("attaching dirty TChongzhi instance");
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

	public void attachClean(TChongzhi instance)
	{
		log.debug("attaching clean TChongzhi instance");
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

	public static TChongzhiDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TChongzhiDAO) ctx.getBean("TChongzhiDAO");
	}
}