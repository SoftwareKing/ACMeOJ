package com.xujin.oj.ojmodel;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


/**
 * @Description:程序运行结果记录
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name="solution"
    ,catalog="jkoj"
)

public class Solution  implements java.io.Serializable {


    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// Fields    

     private Integer solution_id;//运行id（主键)
     private Integer problem_id;//题目id
     private String username;//用户ID
     private Date submit_date;//提交时间
     private Integer memory;//所用空间（）
     private Integer time;//用时（秒）
     private Integer code_length;//代码长度
     private Integer language;//语言
     private Integer contest_id;;//比赛ID
     private Integer verdict;
     private Integer testcase;
     
   
     
    /* private Short result;//结果（4：AC）
    
     private String ip;//用户IP
   
     private Short valid;//是否有效
     private Short num;//题目在竞赛中的顺序号
    
     private Timestamp judgetime;//判题时间
     private Double passRate;//通过百分比（OI模式下可用
    */

    /** default constructor */
 	public Solution() {
 		this.memory = 0;
 		this.time = 0;
 		this.contest_id = 0;
 		this.testcase = 0;
 		this.verdict = 1;
 	}

   


	public Solution(Integer solutionId, Integer problemId, String username,
			Date submitDate, Integer memory, Integer time, Integer codeLength,
			Integer language, Integer contestId, Integer verdict,
			Integer testcase, String source) {
		super();
		solution_id = solutionId;
		problem_id = problemId;
		this.username = username;
		submit_date = submitDate;
		this.memory = memory;
		this.time = time;
		code_length = codeLength;
		this.language = language;
		contest_id = contestId;
		this.verdict = verdict;
		this.testcase = testcase;
		this.source = source;
	}


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="solution_id")
	public Integer getSolution_id() {
		return solution_id;
	}

	public void setSolution_id(Integer solutionId) {
		solution_id = solutionId;
	}


   @Column(name="problem_id")
	public Integer getProblem_id() {
		return problem_id;
	}



	public void setProblem_id(Integer problemId) {
		problem_id = problemId;
	}


	@Column(name="username")
	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}


	@Column(name="submit_date")
	public Date getSubmit_date() {
		return submit_date;
	}



	public void setSubmit_date(Date submitDate) {
		submit_date = submitDate;
	}


	@Column(name="memory")
	public Integer getMemory() {
		return memory;
	}



	public void setMemory(Integer memory) {
		this.memory = memory;
	}


	@Column(name="time")
	public Integer getTime() {
		return time;
	}



	public void setTime(Integer time) {
		this.time = time;
	}


	@Column(name="code_length")
	public Integer getCode_length() {
		return code_length;
	}



	public void setCode_length(Integer codeLength) {
		code_length = codeLength;
	}


	@Column(name="language")
	public Integer getLanguage() {
		return language;
	}



	public void setLanguage(Integer language) {
		this.language = language;
	}


	@Column(name="contest_id")
	public Integer getContest_id() {
		return contest_id;
	}

	public void setContest_id(Integer contestId) {
		contest_id = contestId;
	}


	@Column(name="verdict")
	public Integer getVerdict() {
		return verdict;
	}


	public void setVerdict(Integer verdict) {
		this.verdict = verdict;
	}


	@Column(name="testcase")
	public Integer getTestcase() {
		return testcase;
	}



	public void setTestcase(Integer testcase) {
		this.testcase = testcase;
	}

	private String source;

	@Transient
	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}
	


}