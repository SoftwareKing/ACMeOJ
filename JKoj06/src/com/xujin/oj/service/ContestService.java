package com.xujin.oj.service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Contest;
/**
 * @Description:ContestService-比赛Service
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-2-3(创建日期)
 */
public interface ContestService {
	public Pager<Contest> findContests();
	public Pager<Contest> findContestsBystatus();
	public void save(Contest contest);
	public void update(Contest contest);
	public void delete(int id);
	/**
	 * 获取题目信息
	 * @param id
	 * @return
	 */
	public Contest load(int id);
	//根据比赛的状态查询
	public Pager<Contest> findContestsBystatus(int status);
	
}
