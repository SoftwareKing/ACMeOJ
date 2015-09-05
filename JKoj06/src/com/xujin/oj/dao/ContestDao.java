package com.xujin.oj.dao;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Contest;

public interface ContestDao extends BaseDao<Contest> {
	//管理员查询比赛列表并分页
	public Pager<Contest> findContests();
	
	//查寻比赛的非0状态
	public Pager<Contest> findContestsBystatus();
	
	//根据比赛的状态查询
	public Pager<Contest> findContestsBystatus(int status);
	
}
