package com.xujin.oj.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ContestProblemDao;
import com.xujin.oj.ojmodel.ContestProblem;

@Repository("contestProblemDao")
public class ContestProblemDaoImpl extends BaseDaoImpl<ContestProblem>
		implements ContestProblemDao {

	@Override
	public Integer countProblems(Integer contestId) {
		// TODO Auto-generated method stub
	  String hql="select count(cp.problem_id) from ContestProblem cp where p.contest_id=?";
	  List list =  this.list(hql, contestId);
	  if (list != null && list.size() > 0) {
			return ((Long) list.get(0)).intValue();
		} else
			return 0;
		
	}
	@Override
	public ContestProblem queryProblemByNum(String num, Integer contestId) {
		String hql = "from ContestProblem as p where p.num='"+num+"' and p.contest_id="+contestId;
		List<ContestProblem> list= this.list(hql);
		if(list == null || list.size() == 0){
			return null;
		}
		return list.get(0);
			
	}

	@Override
	public ContestProblem queryProblemByPid(Integer problemId, Integer contestId) {
		String hql = "from ContestProblem as p where p.problem_id=? and p.contest_id=?";
		List<ContestProblem> list=this.list(hql, new Integer[] {problemId,contestId});
		if(list == null || list.size() == 0){
			return null;
		}
		return list.get(0);
	}

	@Override
	public Pager<ContestProblem> queryProblems(Integer contestId) {

		String hql = "from ContestProblem as p where p.contest_id=?";
		
		return this.find(hql, contestId);
	}
	@Override
	public void delete(int pid, int cid) {
		
		getSession().delete(queryProblemByPid(pid,cid));
	}
	@Override
	public List<ContestProblem> querylistProblems(Integer contestId) {
		String hql = "from ContestProblem as p where p.contest_id=?";
		return this.list(hql, contestId);
	}


}
