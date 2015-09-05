package com.xujin.oj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ProblemDAO;
import com.xujin.oj.model.CmsException;
import com.xujin.oj.ojmodel.Problem;
import com.xujin.oj.service.ProblemService;

/**
 * @Description:ProblemServiceImpl
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-27(创建日期)
 */

@Service("problemService")
public class ProblemServiceImpl implements ProblemService {

	@Resource(name="problemDao")
	private ProblemDAO problemDao;
	
	
	@Override
	public Pager<Problem> findProblems() {
         return this.problemDao.findProblems();
	}


	@Override
	public void save(Problem problem) {
		this.problemDao.add(problem);
		
	}


	@Override
	public Problem load(int id) {
		return this.problemDao.load(id);
	}


	@Override
	public Pager<Problem> findProblemsBystatus() {
		return this.problemDao.findProblemsBystatus();
	}


	@Override
	public void delete(int id) {

		this.problemDao.delete(id);
	}


	@Override
	public void update(Problem problem) {

		this.problemDao.update(problem);
	}


	@Override
	public void updateStatus(int id) {
		// TODO Auto-generated method stub
		Problem p = problemDao.load(id);
		if(p==null) throw new CmsException("修改状态的题目不存在");
		if(p.getstatus()==0) p.setstatus(1);
		else p.setstatus(0);
		this.problemDao.update(p);
	}


	@Override
	public Pager<Problem> findProblemsByID(int id) {
		
		return this.problemDao.findProblemsByID(id);
	}


	@Override
	public Pager<Problem> findProblemsBytitle(String title) {
		return this.problemDao.findProblemsBytitle(title);
	}


	
	
}
