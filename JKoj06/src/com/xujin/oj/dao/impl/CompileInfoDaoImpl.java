package com.xujin.oj.dao.impl;

import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.oj.dao.CompileInfoDao;
import com.xujin.oj.ojmodel.CompileInfo;

@Repository("compileInfoDao")
public class CompileInfoDaoImpl extends BaseDaoImpl<CompileInfo> implements
		CompileInfoDao {

	@Override
	public CompileInfo queryCompileInfo(Integer solutionId) {
		String hql = "from CompileInfo as ci where ci.solutionId=?";
		return (CompileInfo) this.Queryobject(hql, solutionId);
	}

}
