package com.xujin.oj.service;

import com.xujin.oj.ojmodel.SourceCode;

public interface SourceCodeService {
	
	public SourceCode load(int id);
	
	public void save(SourceCode sourceCode);
}
