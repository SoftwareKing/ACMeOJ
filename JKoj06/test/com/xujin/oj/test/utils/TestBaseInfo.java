package com.xujin.oj.test.utils;

import org.junit.Test;

import com.xujin.oj.model.BaseInfo;
import com.xujin.oj.web.BaseInfoUtil;

public class TestBaseInfo {

	@Test
	public void testRead()
	{
		BaseInfo bi=BaseInfoUtil.getInstacne().read();
	   System.out.println(bi);
	}
	@Test
	public void testWrite()
	{
		BaseInfo bi=BaseInfoUtil.getInstacne().read();
		bi.setEmail("Software_King@qq.com");
		bi.setPhone("110");
		//BaseInfoUtil.getInstacne().write(bi);
	}
	

}
