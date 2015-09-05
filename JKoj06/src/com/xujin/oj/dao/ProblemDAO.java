package com.xujin.oj.dao;


import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.ojmodel.Problem;

public interface ProblemDAO extends BaseDao<Problem> {
	
	//管理员查询问题列表并分页
	public Pager<Problem> findProblems();
	
	//管理员查询问题列表并分页
	public Pager<Problem> findProblemsBystatus();
	
	//管理员查询问题列表并分页
	public Pager<Problem> findProblemsBytitle(String title);
	//管理员查询问题列表并分页
	public Pager<Problem> findProblemsByID(int id);
	
	
	/*//保存问题
	public void save(Problem problem);
	//查询问题
	public Problem queryProblem(Integer problemId);
	
	public Integer countProblems(String role, String ojName);
	public Pager<Problem> searchProblem(Integer pageSize, String searchString);
	
	public List<Problem> query(String sql,String word);*/
}
