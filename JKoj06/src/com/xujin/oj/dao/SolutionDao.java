package com.xujin.oj.dao;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.ojmodel.Solution;

public interface SolutionDao extends BaseDao<Solution> {
	//管理员查询问题列表并分页
	public Pager<Solution> findSolution();
	public Pager<SolutionDto> findSolutionAndUser();
	public Pager<SolutionDto> findSolutionByUserName(String username);
	public Pager<Solution> findSolutionByproblemID(int id);
	public Pager<SolutionDto> findSolutionByproblemID2(int id);
	public Pager<Solution> findSolutionByContestID(int id);
	public Pager<SolutionDto> findSolutionByContestID2(int id);
	public Pager<SolutionDto> findLogByUserName(String username);
/*-----------------------------allStatus--------------------------------------------------*/	
	/*
	 * 根据null查找
	 */
	public Pager<SolutionDto> findSolutionByNull();
	/*
	 * 按用户名查找
	 */
	public Pager<SolutionDto> findSolutionByUsername(int uid);
	/*
	 * 按问题ID查找
	 */
	public Pager<SolutionDto> findSolutionByPid(int pid);
	/*
	 * 按状态查找
	 */
	public Pager<SolutionDto> findSolutionByVerdict(int verdict);
	/*
	 * 按语言查找
	 */
	public Pager<SolutionDto> findSolutionByLanguage(int language);
	/*
	 * 按username和pid查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePid(int uid,int pid);
	/*
	 * 按username和状态查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameVerdict(int uid,int verdict);
	/*
	 * 按username和语言查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameLanguage(int uid,int language);
	/*
	 * 根据pid和verdict查找
	 */
	public Pager<SolutionDto> findSolutionByPidVerdict(int pid,int verdict);
	/*
	 * 根据pid和language查找
	 */
	public Pager<SolutionDto> findSolutionByPidLanguage(int pid,int language);
	/*
	 * 根据verdict和language查找
	 */
	public Pager<SolutionDto> findSolutionByVerdictLanguage(int verdict,int language);
	/*
	 * 根据username，pid,verdict查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidVerdict(int uid,int pid,int verdict);
	/*
	 * 根据username,pid,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidLanguage(int uid,int pid,int language);
	/*
	 * 根据username,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameVerdictLanguage(int uid,int verdict,int language);
	/*
	 * 根据pid,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByPidVerdictLanguage(int pid,int verdict,int language);
	/*
	 * 根据username,pid,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictLanguage(int uid,int pid,int verdict,int language);

	
	/*-------------------------------------比赛中查找--------------------------------------------------*/

	/*
	 * 根据null查找
	 */
	public Pager<SolutionDto> findSolutionByNullCid(int cid);
	/*
	 * 按用户名查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameCid(int uid,int cid);
	/*
	 * 按问题ID查找
	 */
	public Pager<SolutionDto> findSolutionByPidCid(int pid,int cid);
	/*
	 * 按状态查找
	 */
	public Pager<SolutionDto> findSolutionByVerdictCid(int verdict,int cid);
	/*
	 * 按语言查找
	 */
	public Pager<SolutionDto> findSolutionByLanguageCid(int language,int cid);
	/*
	 * 按username和pid查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidCid(int uid,int pid,int cid);
	/*
	 * 按username和状态查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameVerdictCid(int uid,int verdict,int cid);
	/*
	 * 按username和语言查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameLanguageCid(int uid,int language,int cid);
	/*
	 * 根据pid和verdict查找
	 */
	public Pager<SolutionDto> findSolutionByPidVerdictCid(int pid,int verdict,int cid);
	/*
	 * 根据pid和language查找
	 */
	public Pager<SolutionDto> findSolutionByPidLanguageCid(int pid,int language,int cid);
	/*
	 * 根据verdict和language查找
	 */
	public Pager<SolutionDto> findSolutionByVerdictLanguageCid(int verdict,int language,int cid);
	/*
	 * 根据username，pid,verdict查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictCid(int uid,int pid,int verdict,int cid);
	/*
	 * 根据username,pid,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidLanguageCid(int uid,int pid,int language,int cid);
	/*
	 * 根据username,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernameVerdictLanguageCid(int uid,int verdict,int language,int cid);
	/*
	 * 根据pid,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByPidVerdictLanguageCid(int pid,int verdict,int language,int cid);
	/*
	 * 根据username,pid,verdict,language查找
	 */
	public Pager<SolutionDto> findSolutionByUsernamePidVerdictLanguageCid(int uid,int pid,int verdict,int language,int cid);

}
