package com.xujin.oj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.AttendDAO;
import com.xujin.oj.ojmodel.Attend;
import com.xujin.oj.service.AttendService;

@Service("attendService")
public class AttendServiceImpl implements AttendService {
	
	@Resource(name="attendDAO")
	private AttendDAO attendDAO;

	@Override
	public Integer countUserAttends(String username) {
		return this.attendDAO.countUserAttends(username);
	}

	@Override
	public void delete(int aid) {

		this.attendDAO.delete(aid);
	}

	@Override
	public Integer getUserRank(Attend attend, Integer type) {
		
		return this.attendDAO.getUserRank(attend, type);
	}

	@Override
	public Attend queryUserAttend(Integer contestId, String username) {
		return this.attendDAO.queryUserAttend(contestId, username);
	}

	@Override
	public void save(Attend attend) {
		this.attendDAO.add(attend);
	}

	@Override
	public Pager<Attend> queryAttends(Integer contestId) {
		return this.attendDAO.queryAttends(contestId);
	}

}
