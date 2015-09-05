package com.xujin.oj.service;


import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Problem;
/**
 * @Description:ProblemService，定义题目业务接口
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-27(创建日期)
 */
public interface ProblemService {
	
	/**
	 * 列表题目，并分页
	 */
	public Pager<Problem> findProblems();
	public void save(Problem problem);
	/**
	 * 获取题目信息
	 * @param id
	 * @return
	 */
	public Problem load(int id);
	
	public Pager<Problem> findProblemsBystatus();
	public void update(Problem problem);
	public void delete(int id);
	/**
	 * 更新用户的状态
	 * @param id
	 */
	public void updateStatus(int id);
	
	
	public Pager<Problem> findProblemsBytitle(String title);
	public Pager<Problem> findProblemsByID(int id);
   
}
