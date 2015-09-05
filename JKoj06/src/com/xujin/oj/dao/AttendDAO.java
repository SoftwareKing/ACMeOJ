package com.xujin.oj.dao;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Attend;

/**
 * @Description:AttendDAO参加比赛的Dao
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-2-18(创建日期)
 */
public interface AttendDAO extends BaseDao<Attend> {

	
	/*
	 * 按比赛ID查出参加此次比赛的人并分页
	 * */
	public Pager<Attend> queryAttends(Integer contestId);
	public Attend queryUserAttend(Integer contestId,String username);
	public Integer countUserAttends(String username);
	public Integer getUserRank(Attend attend,Integer type);
}
