package com.xujin.oj.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ContestProblemDao;
import com.xujin.oj.ojmodel.ContestProblem;
import com.xujin.oj.service.ContestProblemService;

@Service("contestProblemService")
public class ContestProblemServiceImpl implements ContestProblemService {

	@Resource(name="contestProblemDao")
	private ContestProblemDao contestProblemDao;
	
	@Override
	public Integer countProblems(Integer contestId) {
        
		return this.contestProblemDao.countProblems(contestId);
	}

	@Override
	public void delete(int pid,int cid) {

		this.contestProblemDao.delete(pid,cid);
	}
	@Override
	public void delete(int cid) {
		
		this.contestProblemDao.delete(cid);
	}

	@Override
	public ContestProblem queryProblemByNum(String num, Integer contestId) {
      
		return this.contestProblemDao.queryProblemByNum(num, contestId);
	}

	@Override
	public ContestProblem queryProblemByPid(Integer problemId, Integer contestId) {
		// TODO Auto-generated method stub
		return this.contestProblemDao.queryProblemByPid(problemId, contestId);
	}

	@Override
	public Pager<ContestProblem> queryProblems(Integer contestId) {
		// TODO Auto-generated method stub
		return this.contestProblemDao.queryProblems(contestId);
	}

	@Override
	public void save(ContestProblem problem) {
		this.contestProblemDao.add(problem);

	}

	@Override
	public void update(ContestProblem problem) {
		this.contestProblemDao.update(problem);
		
		
	}

	@Override
	public List<ContestProblem> querylistProblems(Integer contestId) {
		return this.contestProblemDao.querylistProblems(contestId);
	}

}
