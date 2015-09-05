package com.xujin.oj.service.impl;



import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.SolutionDao;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.ojmodel.Solution;
import com.xujin.oj.service.SolutionService;

/**
 * @Description:SolutionService的实现
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-2-2(创建日期)
 */
@Service("solutionService")
public class SolutionServiceImpl implements SolutionService {

	@Resource(name="solutionDao")
	private SolutionDao solutionDao;
	
	/*
	 * 查找所有Solution
	 */
	@Override
	public Pager<Solution> findSolutions() {
		return this.solutionDao.findSolution();
	}
	
	/*
	 * 查找所有Solution以及对应的User
	 */
	@Override
	public Pager<SolutionDto> findSolutionAndUser() {
		return this.solutionDao.findSolutionAndUser();
	}
	/*
	 * 根据问题id查找Solution
	 */
	@Override
	public Pager<Solution> findSolutionByproblemID(int id) {
		return this.solutionDao.findSolutionByproblemID(id);
	}
	/*
	 * 根据问题id查找Solution及对应User
	 */
	@Override
	public Pager<SolutionDto> findSolutionByproblemID2(int id) {
		return this.solutionDao.findSolutionByproblemID2(id);
	}
	
	@Override
	public void save(Solution solution) {
		this.solutionDao.add(solution);	
	}
	/*
	 * 根据比赛id查找Solution
	 */
	@Override
	public Pager<Solution> findSolutionByContestID(int id) {
		return this.solutionDao.findSolutionByContestID(id);
	}
	/*
	 * 根据比赛id查找Solution及对应User
	 */
	@Override
	public Pager<SolutionDto> findSolutionByContestID2(int id) {
		return this.solutionDao.findSolutionByContestID2(id);
	}
	/*
	 * 用户查找已ACE题目
	 */
	@Override
	public Pager<SolutionDto> findSolutionByUserName(String username){
		return this.solutionDao.findSolutionByUserName(username);
	}
	
	/*
	 * 用户日志Pager
	 */
	@Override
	public Pager<SolutionDto> findLogByUserName(String username){
		return this.solutionDao.findLogByUserName(username);
	}
	
	/*
	 * 根据条件搜索,allStatus,problemStatus
	 */
	@Override
	public Pager<SolutionDto> findSolutionAndUserByTerm(int username,
			Integer pid, Integer verdict, Integer language) {
		
		if(username!=0&&verdict==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsername(username);
		}
		else if(pid!=0&&verdict==0&&username==0&&language==0){
			return this.solutionDao.findSolutionByPid(pid);
		}
		else if(verdict!=0&&username==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByVerdict(verdict);
		}
		else if(language!=0&&verdict==0&&pid==0&&username==0){
			return this.solutionDao.findSolutionByLanguage(language);
		}
		
		else if(username!=0&&pid!=0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByUsernamePid(username, pid);
		}
		else if(username!=0&&verdict!=0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameVerdict(username, verdict);
		}
		else if(username!=0&&language!=0&&verdict==0&&pid==0){
			return this.solutionDao.findSolutionByUsernameLanguage(username, language);
		}
		else if(pid!=0&&verdict!=0&&username==0&&language==0){
			return this.solutionDao.findSolutionByPidVerdict(pid, verdict);
		}
		else if(pid!=0&&language!=0&&username==0&&verdict==0){
			return this.solutionDao.findSolutionByPidLanguage(pid, language);
		}
		else if(verdict!=0&&language!=0&&username==0&&pid==0){
			return this.solutionDao.findSolutionByVerdictLanguage(verdict, language);
		}
		
		else if(username!=0&&pid!=0&&verdict!=0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidVerdict(username, pid, verdict);
		}
		else if(username!=0&&pid!=0&&language!=0&&verdict==0){
			return this.solutionDao.findSolutionByUsernamePidLanguage(username, pid, language);
		}
		else if(username!=0&&verdict!=0&&language!=0&&pid==0){
			return this.solutionDao.findSolutionByUsernameVerdictLanguage(username, verdict, language);
		}
		else if(pid!=0&&verdict!=0&&language!=0&&username==0){
			return this.solutionDao.findSolutionByPidVerdictLanguage(pid, verdict, language);
		}
		
		
		else if(username!=0&&pid!=0&&verdict!=0&&language!=0){
			return this.solutionDao.findSolutionByUsernamePidVerdictLanguage(username, pid, verdict, language);
		}
		else 
			return this.solutionDao.findSolutionByNull();	
		
		/*
		if(username!="null"&&verdict==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsername(username);
		}
		else if(pid!=0&&verdict==0&&username=="null"&&language==0){
			return this.solutionDao.findSolutionByPid(pid);
		}
		else if(verdict!=0&&username=="null"&&pid==0&&language==0){
			return this.solutionDao.findSolutionByVerdict(verdict);
		}
		else if(language!=0&&verdict==0&&pid==0&&username=="null"){
			return this.solutionDao.findSolutionByLanguage(language);
		}
		
		else if(username!="null"&&pid!=0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByUsernamePid(username, pid);
		}
		else if(username!="null"&&verdict!=0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameVerdict(username, verdict);
		}
		else if(username!="null"&&language!=0&&verdict==0&&pid==0){
			return this.solutionDao.findSolutionByUsernameLanguage(username, language);
		}
		else if(pid!=0&&verdict!=0&&username=="null"&&language==0){
			return this.solutionDao.findSolutionByPidVerdict(pid, verdict);
		}
		else if(pid!=0&&language!=0&&username=="null"&&verdict==0){
			return this.solutionDao.findSolutionByPidLanguage(pid, language);
		}
		else if(verdict!=0&&language!=0&&username=="null"&&pid==0){
			return this.solutionDao.findSolutionByVerdictLanguage(verdict, language);
		}
		
		else if(username!="null"&&pid!=0&&verdict!=0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidVerdict(username, pid, verdict);
		}
		else if(username!="null"&&pid!=0&&language!=0&&verdict==0){
			return this.solutionDao.findSolutionByUsernamePidLanguage(username, pid, language);
		}
		else if(username!="null"&&verdict!=0&&language!=0&&pid==0){
			return this.solutionDao.findSolutionByUsernameVerdictLanguage(username, verdict, language);
		}
		else if(pid!=0&&verdict!=0&&language!=0&&username=="null"){
			return this.solutionDao.findSolutionByPidVerdictLanguage(pid, verdict, language);
		}
		
		
		else if(username!="null"&&pid!=0&&verdict!=0&&language!=0){
			return this.solutionDao.findSolutionByUsernamePidVerdictLanguage(username, pid, verdict, language);
		}
		else 
			return this.solutionDao.findSolutionByNull();	
		*/
	}

	@Override
	public Pager<SolutionDto> findSolutionAndUserByTermCid(int username,
			Integer pid, Integer verdict, Integer language, Integer cid) {
		
		if(username!=0&&verdict==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameCid(username,cid);
		}
		else if(pid!=0&&verdict==0&&username==0&&language==0){
			return this.solutionDao.findSolutionByPidCid(pid,cid);
		}
		else if(verdict!=0&&username==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByVerdictCid(verdict,cid);
		}
		else if(language!=0&&verdict==0&&pid==0&&username==0){
			return this.solutionDao.findSolutionByLanguageCid(language,cid);
		}
		
		else if(username!=0&&pid!=0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidCid(username, pid,cid);
		}
		else if(username!=0&&verdict!=0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameVerdictCid(username, verdict,cid);
		}
		else if(username!=0&&language!=0&&verdict==0&&pid==0){
			return this.solutionDao.findSolutionByUsernameLanguageCid(username, language,cid);
		}
		else if(pid!=0&&verdict!=0&&username==0&&language==0){
			return this.solutionDao.findSolutionByPidVerdictCid(pid, verdict,cid);
		}
		else if(pid!=0&&language!=0&&username==0&&verdict==0){
			return this.solutionDao.findSolutionByPidLanguageCid(pid, language,cid);
		}
		else if(verdict!=0&&language!=0&&username==0&&pid==0){
			return this.solutionDao.findSolutionByVerdictLanguageCid(verdict, language,cid);
		}
		
		else if(username!=0&&pid!=0&&verdict!=0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidVerdictCid(username, pid, verdict,cid);
		}
		else if(username!=0&&pid!=0&&language!=0&&verdict==0){
			return this.solutionDao.findSolutionByUsernamePidLanguageCid(username, pid, language,cid);
		}
		else if(username!=0&&verdict!=0&&language!=0&&pid==0){
			return this.solutionDao.findSolutionByUsernameVerdictLanguageCid(username, verdict, language,cid);
		}
		else if(pid!=0&&verdict!=0&&language!=0&&username==0){
			return this.solutionDao.findSolutionByPidVerdictLanguageCid(pid, verdict, language,cid);
		}
		else if(username!=0&&pid!=0&&verdict!=0&&language!=0){
			return this.solutionDao.findSolutionByUsernamePidVerdictLanguageCid(username, pid, verdict, language,cid);
		}
		else if(username==0&&pid==0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByNullCid(cid);
		}
		else 
			return null;	
	
	/*
		if(username!="null"&&verdict==0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameCid(username,cid);
		}
		else if(pid!=0&&verdict==0&&username=="null"&&language==0){
			return this.solutionDao.findSolutionByPidCid(pid,cid);
		}
		else if(verdict!=0&&username=="null"&&pid==0&&language==0){
			return this.solutionDao.findSolutionByVerdictCid(verdict,cid);
		}
		else if(language!=0&&verdict==0&&pid==0&&username=="null"){
			return this.solutionDao.findSolutionByLanguageCid(language,cid);
		}
		
		else if(username!="null"&&pid!=0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidCid(username, pid,cid);
		}
		else if(username!="null"&&verdict!=0&&pid==0&&language==0){
			return this.solutionDao.findSolutionByUsernameVerdictCid(username, verdict,cid);
		}
		else if(username!="null"&&language!=0&&verdict==0&&pid==0){
			return this.solutionDao.findSolutionByUsernameLanguageCid(username, language,cid);
		}
		else if(pid!=0&&verdict!=0&&username=="null"&&language==0){
			return this.solutionDao.findSolutionByPidVerdictCid(pid, verdict,cid);
		}
		else if(pid!=0&&language!=0&&username=="null"&&verdict==0){
			return this.solutionDao.findSolutionByPidLanguageCid(pid, language,cid);
		}
		else if(verdict!=0&&language!=0&&username=="null"&&pid==0){
			return this.solutionDao.findSolutionByVerdictLanguageCid(verdict, language,cid);
		}
		
		else if(username!="null"&&pid!=0&&verdict!=0&&language==0){
			return this.solutionDao.findSolutionByUsernamePidVerdictCid(username, pid, verdict,cid);
		}
		else if(username!="null"&&pid!=0&&language!=0&&verdict==0){
			return this.solutionDao.findSolutionByUsernamePidLanguageCid(username, pid, language,cid);
		}
		else if(username!="null"&&verdict!=0&&language!=0&&pid==0){
			return this.solutionDao.findSolutionByUsernameVerdictLanguageCid(username, verdict, language,cid);
		}
		else if(pid!=0&&verdict!=0&&language!=0&&username=="null"){
			return this.solutionDao.findSolutionByPidVerdictLanguageCid(pid, verdict, language,cid);
		}
		else if(username!="null"&&pid!=0&&verdict!=0&&language!=0){
			return this.solutionDao.findSolutionByUsernamePidVerdictLanguageCid(username, pid, verdict, language,cid);
		}
		else if(username=="null"&&pid==0&&verdict==0&&language==0){
			return this.solutionDao.findSolutionByNullCid(cid);
		}
		else 
			return null;
			*/
	}

	@Override
	public Solution queryStatus(int solutionid) {

		return this.solutionDao.load(solutionid);
	}
	
		
}
