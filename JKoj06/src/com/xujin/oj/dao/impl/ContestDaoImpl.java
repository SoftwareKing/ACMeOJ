package com.xujin.oj.dao.impl;

import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ContestDao;
import com.xujin.oj.ojmodel.Contest;

@Repository("contestDao")
public class ContestDaoImpl extends BaseDaoImpl<Contest> implements ContestDao {

	@Override
	public Pager<Contest> findContests() {
		String hql="from Contest";
		return this.find(hql);
	}

	
	@Override
	public Pager<Contest> findContestsBystatus() {
		String hql="from Contest c where c.status !=0";
		return this.find(hql);
	}

	
	@Override
	public Pager<Contest> findContestsBystatus(int status) {
		String hql="from Contest c where c.status =?";
		return this.find(hql,status);
	}

	

}
