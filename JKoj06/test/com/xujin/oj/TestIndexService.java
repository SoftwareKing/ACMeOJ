package com.xujin.oj;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.xujin.basic.model.SystemContext;
import com.xujin.oj.service.IndexService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/applicationContext.xml")
public class TestIndexService {
	
	@Resource(name="indexService")
	private IndexService indexService;
	private String rp = "F:\\javaeecode\\myeclipse8.5code\\jkcms06-1\\WebRoot";
	@Test
	public void testGenerateTop() {
		SystemContext.setRealPath(rp);
		indexService.generateTop();
	}
	/*
	@Test
	public void testGenerateBody() {
		SystemContext.setRealPath(rp);
		indexService.generateBody();
	}*/
}
