package com.xujin.oj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.xujin.basic.dao.impl.BaseDaoImpl;
import com.xujin.basic.model.Pager;
import com.xujin.oj.dao.AttendDAO;
import com.xujin.oj.ojmodel.Attend;

@Repository("attendDAO")
public class AttendDAOImpl extends BaseDaoImpl<Attend> implements AttendDAO {
	

	@Override
	public Integer countUserAttends(String username) {
		
		String hql = "select count(a.id) from Attend a where a.username=?";
		List list =  this.list(hql, username);
		  if (list != null && list.size() > 0) {
				return ((Long) list.get(0)).intValue();
			} else
				return 0;
			
		
	}

	/*@Override
	public Integer getUserRank(Attend attend, Integer type) {
			String hql =new String();
			Integer tmp_score =0;
			if(type.equals(0)){
				hql="select count(a) from Attend  a where a.contestId = ? and (a.solved>?"
					+" or (a.solved=? and a.penalty<?))";
				tmp_score=attend.getSolved();
			}else if(type.equals(1)){
				hql="select count(a) from Attend  a where a.contestId = ? and (a.score>?"
					+" or (a.score=? and a.penalty<?))";
				tmp_score=attend.getScore();
			}else{
				hql="select count(a) from Attend  a where a.contestId = ? and (a.solved>?"
					+" or (a.solved=? and a.penalty<?))";
				tmp_score=attend.getSolved();
			}
			
			
			List list=this.list(hql, new Integer[] {attend.getContestId(),tmp_score,attend.getPenalty()});
			 if (list != null && list.size() > 0) {
				 return((Long) list.get(0)).intValue()+1;
			} else
			{
				return 0;
			}
				
			
	}
*/
	@Override
	public Attend queryUserAttend(Integer contestId, String username) {
		String hql = "from Attend as a where a.contestId="+contestId+" and a.username='"+username+"'";
		List<Attend> list = this.list(hql);
		if(list == null || list.size() == 0){
			return null;
		}
		return list.get(0);
	}

	@Override
	public Pager<Attend> queryAttends(Integer contestId) {
		String hql = "from Attend as a where a.contestId=?";
		return this.find(hql,contestId);
	}

	@Override
	public Integer getUserRank(Attend attend,Integer type){
		
		    Session session =this.getSession();
           
			String sql =new String();
		
			Integer tmp_score =0;
			if(type.equals(0)){
				sql="select count(a) from Attend  a where a.contestId = :contestId and (a.solved> :score"
					+" or (a.solved= :score and a.penalty< :penalty))";
				tmp_score=attend.getSolved();
			}else if(type.equals(1)){
				sql="select count(a) from Attend  a where a.contestId = :contestId and (a.score> :score"
					+" or (a.score= :score and a.penalty< :penalty))";
				tmp_score=attend.getScore();
			}else{
				sql="select count(a) from Attend  a where a.contestId = :contestId and (a.solved> :score"
					+" or (a.solved= :score and a.penalty< :penalty))";
				tmp_score=attend.getSolved();
			}
			
			Query query=(Query)session.createQuery(sql)
											.setParameter("contestId", attend.getContestId())
											.setParameter("score", tmp_score)
											.setParameter("penalty", attend.getPenalty());
			int n = ((Long)query.list().get(0)).intValue();
		
			return n+1; 
	}
	

}
