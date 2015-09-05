package com.xujin.oj.service;

import java.util.List;

import com.xujin.oj.model.Channel;
import com.xujin.oj.model.ChannelTree;
import com.xujin.oj.model.ChannelType;



public interface ChannelService {
	
	/**
	 * 添加栏目
	 * @param channel
	 * @param pid
	 */
	public void add(Channel channel,Integer pid);
	/**
	 * 更新栏目
	 * @param channel
	 */
	public void update(Channel channel);
	/**
	 * 删除栏目
	 * @param id
	 */
	public void delete(int id);
	
	/**
	 * 清空栏目中的文章
	 * @param id
	 */
	public void clearTopic(int id);
	
	public Channel load(int id);
	/**
	 * 根据父亲id加载栏目，该方面首先检查SystemContext中是否存在排序如果没有存在把orders加进去
	 * @param pid
	 * @return
	 */
	public List<Channel> listByParent(Integer pid);
	
	/**
	 * 把所有的栏目获取并生成一颗完整的树
	 * @return
	 */
	public List<ChannelTree> generateTree();
	/**
	 * 根据父类对象获取子类栏目，并且生成树列表
	 * @param pid
	 * @return
	 */
	public List<ChannelTree> generateTreeByParent(Integer pid);
	
	/**
	 * 获取所有的可以发布文章的栏目，栏目的状态必须为启用状态
	 * @return
	 */
	public List<Channel> listPublishChannel();
	/**
	 * 获取所有的导航栏目，栏目的状态必须为已经启用
	 * @return
	 */
	public List<Channel> listTopNavChannel();
	public List<Channel> listTopNavChannel2();
	
	//用于拖动排序处理
	public void updateSort(Integer[] ids);
	
	public List<Channel> listAllIndexChannel(ChannelType ct);
	
	public Channel loadFirstChannelByNav(int cid);
	
	public List<Channel> listUseChannelByParent(Integer cid);
	
	/**
	 * 通过类型来获取所有未停用的栏目
	 * @param ct
	 * @return
	 */
	public List<Channel> listChannelByType(ChannelType ct);
}
