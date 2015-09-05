package com.xujin.oj.dao;

import java.util.List;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.ContestProblem;

public interface ContestProblemDao extends BaseDao<ContestProblem> {


	public Pager<ContestProblem> queryProblems(Integer contestId);
	public List<ContestProblem> querylistProblems(Integer contestId);
	public ContestProblem queryProblemByNum(String num,Integer contestId);
	public Integer countProblems(Integer contestId);
	public ContestProblem queryProblemByPid(Integer problemId,Integer contestId);
	public void delete(int pid,int cid);
}
