package com.xujin.oj.dao.impl;



import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.SolutionDao;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.ojmodel.Solution;

@Repository("solutionDao")
public class SolutionDaoImpl extends BaseDaoImpl<Solution> implements
		SolutionDao {

	@Override
	public Pager<Solution> findSolution() {
		String hql="from Solution";
        return this.find(hql);
	
	}

	@Override
	public Pager<Solution> findSolutionByproblemID(int id) {
         String hql="from Solution s where s.problem_id=?";
		return this.find(hql, id);
	}
	/*
	 * 根据问题ID查找Solution及对应的User
	 */
	@Override
	public Pager<SolutionDto> findSolutionByproblemID2(int id) {
         String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql, id,SolutionDto.class, false);
         return solutions;
	}
	 

	@Override
	public Pager<Solution> findSolutionByContestID(int id) {
		 String hql="from Solution s where s.contest_id=?";
		return this.find(hql, id);
	}
	/*
	 * 根据比赛ID查找Solution及对应的User
	 */
	@Override
	public Pager<SolutionDto> findSolutionByContestID2(int id) {
		 String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.contest_id=?";
		 Pager<SolutionDto> solutions=this.findBySql(sql,id,SolutionDto.class,false);
		 return solutions;
	}
	
	/*
	 * 查找Solution和对应的User
	 */
	@Override
	public Pager<SolutionDto> findSolutionAndUser() {
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username)";
        Pager<SolutionDto> solutions=this.findBySql(sql,SolutionDto.class,false);
		return solutions;
	}
	
	/*
	 * 查找用户以ACE题目信息
	 */
	@Override
	public Pager<SolutionDto> findSolutionByUserName(String username){
		String sql="select distinct p.problem_id,p.title,s.code_length,s.solution_id,s.language,s.submit_date,s.verdict from solution s left join problem p on(s.problem_id=p.problem_id) where s.verdict=5 and s.username=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,username,SolutionDto.class, false);
		return solutions;
	}
	
	/*
	 * 查询用户日志
	 */
	@Override
	public Pager<SolutionDto> findLogByUserName(String username) {
		String sql="select distinct p.problem_id,p.title,s.code_length,s.solution_id,s.language,s.submit_date,s.verdict from solution s left join problem p on(s.problem_id=p.problem_id) where s.username=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,username,SolutionDto.class, false);
		return solutions;
	}
	
	
	
/*--------------------------------------allStatus查询------------------------------------------------------*/
	@Override
	public Pager<SolutionDto> findSolutionByLanguage(int language) {
		//Object args[]={language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,language,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPid(int pid) {
		//Object args[]={pid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,pid,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidLanguage(int pid, int language) {
		Object args[]={pid,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidVerdict(int pid, int verdict) {
		Object args[]={pid,verdict};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.verdict=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidVerdictLanguage(int pid,
			int verdict, int language) {
		Object args[]={pid,verdict,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.verdict=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameLanguage(int uid,
			int language) {
		Object args[]={uid,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePid(int uid, int pid) {
		Object args[]={uid,pid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidLanguage(
			int uid, int pid, int language) {
		Object args[]={uid,pid,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidVerdict(int uid,
			int pid, int verdict) {
		Object args[]={uid,pid,verdict};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.verdict=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictLanguage(
			int uid, int pid, int verdict, int language) {
		Object args[]={uid,pid,verdict,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.verdict=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameVerdict(int uid,
			int verdict) {
		Object args[]={uid,verdict};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.verdict=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameVerdictLanguage(
			int uid, int verdict, int language) {
		Object args[]={uid,verdict,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.verdict=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByVerdict(int verdict) {
		//Object args[]={verdict};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.verdict=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,verdict,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByVerdictLanguage(int verdict,
			int language) {
		Object args[]={verdict,language};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.verdict=? and s.language=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsername(int uid) {
		//Object args[]={username};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,uid,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByNull() {
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username)";
		Pager<SolutionDto> solutions=this.findBySql(sql,SolutionDto.class,false);
		return solutions;
	}
	
/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	
	
	@Override
	public Pager<SolutionDto> findSolutionByLanguageCid(int language,int cid) {
		Object args[]={language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidCid(int pid,int cid) {
		Object args[]={pid,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidLanguageCid(int pid, int language,int cid) {
		Object args[]={pid,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidVerdictCid(int pid, int verdict,int cid) {
		Object args[]={pid,verdict,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.verdict=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByPidVerdictLanguageCid(int pid,
			int verdict, int language,int cid) {
		Object args[]={pid,verdict,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.problem_id=? and s.verdict=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameLanguageCid(int uid,
			int language,int cid) {
		Object args[]={uid,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidCid(int uid, int pid,int cid) {
		Object args[]={uid,pid,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidLanguageCid(
			int uid, int pid, int language,int cid) {
		Object args[]={uid,pid,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictCid(int uid,
			int pid, int verdict,int cid) {
		Object args[]={uid,pid,verdict,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.verdict=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictLanguageCid(
			int uid, int pid, int verdict, int language,int cid) {
		Object args[]={uid,pid,verdict,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.problem_id=? and s.verdict=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameVerdictCid(int uid,
			int verdict,int cid) {
		Object args[]={uid,verdict,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.verdict=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameVerdictLanguageCid(
			int uid, int verdict, int language,int cid) {
		Object args[]={uid,verdict,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.verdict=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByVerdictCid(int verdict,int cid) {
		Object args[]={verdict,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.verdict=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByVerdictLanguageCid(int verdict,
			int language,int cid) {
		Object args[]={verdict,language,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where s.verdict=? and s.language=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByUsernameCid(int uid,int cid) {
		Object args[]={uid,cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where u.id=? and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,args,SolutionDto.class,false);
		return solutions;
	}

	@Override
	public Pager<SolutionDto> findSolutionByNullCid(int cid) {
		//Object args[]={cid};
		String sql="select u.id,s.username,s.solution_id,s.problem_id,s.submit_date,s.testcase,s.time,s.verdict,s.memory,s.code_length,s.contest_id,s.language from solution s left join users u on(s.username=u.username) where and s.contest_id=?";
		Pager<SolutionDto> solutions=this.findBySql(sql,cid,SolutionDto.class,false);
		return solutions;
	}
/*------------------------------------------------------------------------------------------------*/	
	

}
