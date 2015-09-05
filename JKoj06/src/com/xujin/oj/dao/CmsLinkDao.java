package com.xujin.oj.dao;

import java.util.List;
import java.util.Map;

import com.xujin.basic.dao.BaseDao;
import com.xujin.basic.model.Pager;
import com.xujin.oj.model.CmsLink;

/**
 * add方法可以在service中写，我们让排序号自动向后加
 * @author Administrator
 *
 */
public interface CmsLinkDao extends BaseDao<CmsLink>{
	/**
	 * 根据类型获取超链接，如果type为空就获取所有的超链接，排序方式根据pos
	 * @param type
	 * @return
	 */
	public Pager<CmsLink> findByType(String type);
	/**
	 * 获取某个类型中的所有链接，不进行分页
	 * @param type
	 * @return
	 */
	public List<CmsLink> listByType(String type);
	/**
	 * 获取超链接的所有类型
	 * @return
	 */
	public List<String> listAllType();
	/**
	 * 获取最大和最小的排序号
	 * @return
	 */
	public Map<String,Integer> getMinAndMaxPos();
	/**
	 * 更新排序
	 * @param id
	 * @param oldPos
	 * @param newPos
	 */
	public void updatePos(int id,int oldPos,int newPos);
}
