package com.xujin.oj.test.utils;

import org.junit.Test;

import com.xujin.oj.utils.MySQLUtil;

public class TestMysql {
	
	@Test
  public void testresume()
  {
	  MySQLUtil mysql=MySQLUtil.getInstance();
	 // mysql.setCfg("jkcms", "C:\\test\\", "jkcms", "root", "root");
	  mysql.setCfg("database1", "C:\\test\\", "jkcms", "root", "root");
	  //mysql.backup();
	  mysql.resume();
	 
  }
	@Test
	public void testback()
	{
		MySQLUtil mysql=MySQLUtil.getInstance();
		mysql.setCfg("database1", "C:\\test\\", "jkcms", "root", "root");
		//mysql.backup();
		mysql.backup();
		
	}
}
