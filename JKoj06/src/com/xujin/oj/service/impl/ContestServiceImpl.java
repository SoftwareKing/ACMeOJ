package com.xujin.oj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ContestDao;
import com.xujin.oj.ojmodel.Contest;
import com.xujin.oj.service.ContestService;

/**
 * @Description:ContestServiceImpl
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-2-2(创建日期)
 */
@Service("contestservice")
public class ContestServiceImpl implements ContestService {

	@Resource(name="contestDao")
	private ContestDao contestDao;
	
	@Override
	public Pager<Contest> findContests() {
		return this.contestDao.findContests();
	}

	
	@Override
	public Pager<Contest> findContestsBystatus() {
		return this.contestDao.findContestsBystatus();
	}

	@Override
	public void save(Contest contest) {
		this.contestDao.add(contest);
		
	}

	@Override
	public void update(Contest contest) {

		this.contestDao.update(contest);
	}

	@Override
	public void delete(int id) {
		this.contestDao.delete(id);
		
	}

	@Override
	public Contest load(int id) {
		return this.contestDao.load(id);
	}

	@Override
	public Pager<Contest> findContestsBystatus(int status) {
		
		return this.contestDao.findContestsBystatus(status);
	}

	
}
