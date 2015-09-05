package com.xujin.oj.service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.ojmodel.Solution;

public interface SolutionService {
	public Pager<Solution> findSolutions();
	public Pager<SolutionDto> findSolutionAndUser();
	public Pager<Solution> findSolutionByproblemID(int id);
	public Pager<SolutionDto> findSolutionByproblemID2(int id);
	public void save(Solution solution);
	public Pager<Solution> findSolutionByContestID(int id);
	public Pager<SolutionDto> findSolutionByContestID2(int id);
	public Pager<SolutionDto> findSolutionByUserName(String username);
	public Pager<SolutionDto> findLogByUserName(String username);
	public Pager<SolutionDto> findSolutionAndUserByTerm(int username,Integer pid,Integer verdict, Integer language);
	public Pager<SolutionDto> findSolutionAndUserByTermCid(int username,Integer pid,Integer verdict, Integer language,Integer cid);
	public Solution queryStatus(int solutionid);
}
