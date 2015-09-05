package com.xujin.oj.ojmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;



/**
 * @Description:比赛问题实体
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name="contest_problem"
    ,catalog="jkoj"
)
public class ContestProblem  implements java.io.Serializable {


    
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer problem_id;
	private Integer contest_id;
    private String  title;
    private String  num;
    private Integer submit;
    private Integer accepted;
    private Integer submit_user;
    private Integer solved;
    private Integer point;
    private String defunct;
    
    public ContestProblem() {
		this.submit = 0;
		this.accepted = 0;
		submit_user = 0;
		this.solved = 0;
		this.point=1;
		this.defunct = "N";
	}
    
    @Id
	@GeneratedValue
    @Column(name="id")
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="problem_id")
	public Integer getProblem_id() {
		return problem_id;
	}
	public void setProblem_id(Integer problemId) {
		problem_id = problemId;
	}
	
	@Column(name="contest_id")
	public Integer getContest_id() {
		return contest_id;
	}
	public void setContest_id(Integer contestId) {
		contest_id = contestId;
	}
	
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(name="num")
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	@Column(name="submit")
	public Integer getSubmit() {
		return submit;
	}
	public void setSubmit(Integer submit) {
		this.submit = submit;
	}
	
	@Column(name="accepted")
	public Integer getAccepted() {
		return accepted;
	}
	public void setAccepted(Integer accepted) {
		this.accepted = accepted;
	}
	
	@Column(name="submit_user")
	public Integer getSubmit_user() {
		return submit_user;
	}
	public void setSubmit_user(Integer submitUser) {
		submit_user = submitUser;
	}
	
	@Column(name="solved")
	public Integer getSolved() {
		return solved;
	}
	public void setSolved(Integer solved) {
		this.solved = solved;
	}
	
	@Column(name="point")
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	
	@Column(name="defunct")
	public String getDefunct() {
		return defunct;
	}
	public void setDefunct(String defunct) {
		this.defunct = defunct;
	}
    
 
}