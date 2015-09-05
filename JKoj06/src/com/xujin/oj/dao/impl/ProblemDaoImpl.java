package com.xujin.oj.dao.impl;


import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.ProblemDAO;
import com.xujin.oj.ojmodel.Problem;

@Repository("problemDao")
public class ProblemDaoImpl extends BaseDaoImpl<Problem> implements ProblemDAO  {

	/**管理员看到的所有题目列表**/
	@Override
	public Pager<Problem> findProblems() {
		String hql="from Problem";
        return this.find(hql);
	
	}

	//前台一般用户看到的不停用的题目
	@Override
	public Pager<Problem> findProblemsBystatus() {
		String hql="from Problem p where p.status !=0 and p.type=0";
        return this.find(hql);
	}

	@Override
	public Pager<Problem> findProblemsByID(int id) {
		String hql="from Problem p where p.status !=0 and p.problemId=? and p.type=0";
        return this.find(hql,id);
	}

	@Override
	public Pager<Problem> findProblemsBytitle(String title) {
		String hql="from Problem p where p.status !=0 p.title=? and p.type=0";
        return this.find(hql,title);
	}

	

	
}
