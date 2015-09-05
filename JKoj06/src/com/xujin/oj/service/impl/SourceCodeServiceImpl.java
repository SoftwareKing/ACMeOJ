package com.xujin.oj.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.xujin.oj.dao.SourceCodeDao;
import com.xujin.oj.ojmodel.SourceCode;
import com.xujin.oj.service.IndexService;
import com.xujin.oj.service.SourceCodeService;

@Service("sourceCodeService")
public class SourceCodeServiceImpl implements SourceCodeService {
	@Resource(name="sourceCodeDao")
	private SourceCodeDao sourceCodeDao;
	@Resource(name="indexService")
	private IndexService indexService;
	
	public SourceCode load(int id){
		return this.sourceCodeDao.load(id);
	}
	
	@Override
	public void save(SourceCode sourceCode) {
		indexService.generateTopR();
		this.sourceCodeDao.add(sourceCode);
		
	}
}
