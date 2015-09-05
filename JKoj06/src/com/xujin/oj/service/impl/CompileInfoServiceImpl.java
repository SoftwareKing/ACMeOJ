package com.xujin.oj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xujin.oj.dao.CompileInfoDao;
import com.xujin.oj.ojmodel.CompileInfo;
import com.xujin.oj.service.CompileInfoService;

@Service("compileInfoService")
public class CompileInfoServiceImpl implements CompileInfoService {
	
    @Resource(name="compileInfoDao")
	private CompileInfoDao compileInfoDao;
	
	public CompileInfo queryCompileInfo(Integer solutionId) {
		return compileInfoDao.queryCompileInfo(solutionId);
	}

	public void save(CompileInfo compileInfo) {
		this.compileInfoDao.add(compileInfo);
	}

}
