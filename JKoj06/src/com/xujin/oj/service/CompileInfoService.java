package com.xujin.oj.service;

import com.xujin.oj.ojmodel.CompileInfo;

public interface CompileInfoService {
	public CompileInfo queryCompileInfo(Integer solutionId);
	public void save(CompileInfo compileInfo);
}
