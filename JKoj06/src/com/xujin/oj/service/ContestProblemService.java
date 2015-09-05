package com.xujin.oj.service;

import java.util.List;

import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.ContestProblem;

public interface ContestProblemService {


	public Pager<ContestProblem> queryProblems(Integer contestId);
	public void save(ContestProblem problem);
	public void update(ContestProblem problem);
	public void delete(int pid,int cid);
	public void delete(int cid);
	public ContestProblem queryProblemByNum(String num,Integer contestId);
	public Integer countProblems(Integer contestId);
	public ContestProblem queryProblemByPid(Integer problemId,Integer contestId);
	public List<ContestProblem> querylistProblems(Integer contestId);
}
