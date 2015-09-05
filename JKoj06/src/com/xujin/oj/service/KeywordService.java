package com.xujin.oj.service;

import java.util.List;

import com.xujin.basic.model.Pager;
import com.xujin.oj.model.Keyword;



public interface KeywordService {
	public void addOrUpdate(String name);
	/**
	 * 获取引用次数大于等于某个数的关键字
	 * @param num
	 * @return
	 */
	public List<Keyword> getKeywordByTimes(int num);
	/**
	 * 获取引用次数最多个num个关键字
	 * @param num
	 * @return
	 */
	public List<Keyword> getMaxTimesKeyword(int num);
	/**
	 * 查找没有使用的关键字
	 * @return
	 */
	public Pager<Keyword> findNoUseKeyword();
	/**
	 * 清空没有使用的关键字
	 */
	public void clearNoUseKeyword();
	/**
	 * 查找正在被引用的关键字
	 * @return
	 */
	public List<Keyword> findUseKeyword();
	/**
	 * 根据某个条件从keyword表中查询关键字
	 * @param con
	 * @return
	 */
	public List<Keyword> listKeywordByCon(String con);
	
	public List<String> listKeywordStringByCon(String con);
}
