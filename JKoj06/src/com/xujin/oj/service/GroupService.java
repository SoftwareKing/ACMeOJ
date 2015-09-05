package com.xujin.oj.service;

import java.util.List;

import com.xujin.basic.model.Pager;
import com.xujin.oj.model.ChannelTree;
import com.xujin.oj.model.Group;
import com.xujin.oj.model.GroupChannel;

/**
 * @Description:GroupService接口
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2013-12-14(创建日期)
 */
public interface GroupService {
	public void add(Group group);//增加组
	public void delete(int id);//删除用户组
	public Group load(int id);//导入用户组
	public void update(Group group);//更新用户组
	
	public List<Group> listGroup();//查询出来的用户组列表
	public Pager<Group> findGroup();//查询分页用户组
	public void deleteGroupUsers(int gid);//根据用户删除组
	
	/**
	 * 添加GroupChannel对象
	 * @param group
	 * @param channel
	 */
	public void addGroupChannel(int gid,int cid);
	/**
	 * 加载GroupChannel对象
	 * @param gid
	 * @param cid
	 * @return
	 */
	public GroupChannel loadGroupChannel(int gid,int cid);
	/**
	 * 清空组所管理的栏目
	 * @param gid
	 */
	public void clearGroupChannel(int gid);
	/**
	 * 删除用户栏目
	 * @param gid
	 * @param cid
	 */
	public void deleteGroupChannel(int gid,int cid);
	/**
	 * 获取某个组的所有管理栏目的id
	 * @param gid
	 * @return
	 */
	public List<Integer> listGroupChannelIds(int gid);
	/**
	 * 获取某个组的栏目树
	 * @param gid
	 * @return
	 */
	public List<ChannelTree> generateGroupChannelTree(int gid);
	/**
	 * 获取某个用户的栏目树
	 * @param uid
	 * @return
	 */
	public List<ChannelTree> generateUserChannelTree(int uid);
}
