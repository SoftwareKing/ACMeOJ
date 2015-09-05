package com.xujin.oj.service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Attend;

/**
 * @Description:AttendService参加比赛的service
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-2-18(创建日期)
 */
public interface AttendService {
	/*
	 * 按比赛ID查出参加此次比赛的人并分页
	 * */
	public Pager<Attend> queryAttends(Integer contestId);
    public void save(Attend attend);
	public void delete(int aid);
	public Attend queryUserAttend(Integer contestId,String username);
	public Integer countUserAttends(String username);
	public Integer getUserRank(Attend attend,Integer type);
}
