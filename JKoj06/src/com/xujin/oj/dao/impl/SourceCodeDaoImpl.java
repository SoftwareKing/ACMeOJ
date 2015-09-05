package com.xujin.oj.dao.impl;

import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.oj.dao.SourceCodeDao;
import com.xujin.oj.ojmodel.SourceCode;

@Repository("sourceCodeDao")
public class SourceCodeDaoImpl extends BaseDaoImpl<SourceCode> implements
		SourceCodeDao {
}
