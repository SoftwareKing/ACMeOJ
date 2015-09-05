package com.xujin.oj.dao;

import java.util.List;
import java.util.Map;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.model.IndexPic;


public interface IndexPicDao extends BaseDao<IndexPic> {
	
	/**
	 * 根据数量来获取首页图片信息
	 * @param num
	 * @return
	 */
	public List<IndexPic> listIndexPicByNum(int num);
	
	public Pager<IndexPic> findIndexPic();
	
	
	/**
	 * 获取所有的首页图片名称,用于系统垃圾清理
	 * @return
	 */
	public List<String> listAllIndexPicName();
	
	public Map<String,Integer> getMinAdnMaxPos();
	
	/**
	 * 更新位置，如果原位置小于新位置，让所有>原始位置，<=新位置的元素全部-1之后更新对象的位置
	 * 如果原位置大于新位置，让所有小于原位置>=新位置的元素全部+1，之后更新当前元素
	 * @param id
	 * @param oldPos原始的位置
	 * @param newPos新的位置
	 */
	public void updatePos(int id,int oldPos,int newPos);
}
