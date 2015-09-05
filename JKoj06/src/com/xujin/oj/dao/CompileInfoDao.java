package com.xujin.oj.dao;

import com.xujin.basic.dao.BaseDao;
import com.xujin.oj.ojmodel.CompileInfo;

public interface CompileInfoDao extends BaseDao<CompileInfo> {
	public CompileInfo queryCompileInfo(Integer solutionId);
	
}
