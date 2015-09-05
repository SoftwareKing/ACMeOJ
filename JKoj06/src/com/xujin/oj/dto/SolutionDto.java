package com.xujin.oj.dto;

import java.util.Date;

import com.xujin.oj.ojmodel.Solution;

public class SolutionDto {
	 private Integer solution_id;//运行id（主键)
	 private Integer contest_id;
	 private Integer memory;
	 private Integer testcase;
	 private Integer time;
     private Integer problem_id;//题目id
     private String username;//用户ID
     private Integer id;
     private Date submit_date;//提交时间
     private Integer code_length;//代码长度
     private Integer language;//语言
     private Integer verdict;
     private String title;//题目标题
     private String source;
     
	
	public Integer getContest_id() {
		return contest_id;
	}
	public void setContest_id(Integer contestId) {
		contest_id = contestId;
	}
	public Integer getMemory() {
		return memory;
	}
	public void setMemory(Integer memory) {
		this.memory = memory;
	}
	public Integer getTestcase() {
		return testcase;
	}
	public void setTestcase(Integer testcase) {
		this.testcase = testcase;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Integer getSolution_id() {
		return solution_id;
	}
	public void setSolution_id(Integer solutionId) {
		solution_id = solutionId;
	}
	public Integer getProblem_id() {
		return problem_id;
	}
	public void setProblem_id(Integer problemId) {
		problem_id = problemId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getSubmit_date() {
		return submit_date;
	}
	public void setSubmit_date(Date submitDate) {
		submit_date = submitDate;
	}
	public Integer getCode_length() {
		return code_length;
	}
	public void setCode_length(Integer codeLength) {
		code_length = codeLength;
	}
	public Integer getLanguage() {
		return language;
	}
	public void setLanguage(Integer language) {
		this.language = language;
	}
	public Integer getVerdict() {
		return verdict;
	}
	public void setVerdict(Integer verdict) {
		this.verdict = verdict;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	
	public SolutionDto(Integer solutionId, Integer contestId, Integer memory,
			Integer testcase, Integer time, Integer problemId, String username,
			Integer id, Date submitDate, Integer codeLength, Integer language,
			Integer verdict, String title, String source) {
		super();
		solution_id = solutionId;
		contest_id = contestId;
		this.memory = memory;
		this.testcase = testcase;
		this.time = time;
		problem_id = problemId;
		this.username = username;
		this.id = id;
		submit_date = submitDate;
		code_length = codeLength;
		this.language = language;
		this.verdict = verdict;
		this.title = title;
		this.source = source;
	}
	public SolutionDto(Integer solutionId, Integer problemId, String username,
			Date submitDate, Integer codeLength, Integer language,
			Integer verdict, String title,String source) {
		super();
		solution_id = solutionId;
		problem_id = problemId;
		this.username = username;
		submit_date = submitDate;
		code_length = codeLength;
		this.language = language;
		this.verdict = verdict;
		this.title = title;
		this.source=source;
	}
	
     
	public Solution getSolution() {
		Solution s = new Solution();
		s.setSolution_id(this.solution_id);
		s.setProblem_id(this.problem_id);
		s.setCode_length(code_length);
		s.setLanguage(language);
		s.setSubmit_date(submit_date);
		s.setUsername(username);
		s.setVerdict(verdict);
		return s;
	}
	
	public SolutionDto(Solution s) {
		this.setCode_length(code_length);
		this.setLanguage(language);
		this.setProblem_id(problem_id);
		this.setUsername(username);
		this.setVerdict(verdict);
		this.setSubmit_date(submit_date);
		this.setSolution_id(solution_id);
	}
	
	
	
	public SolutionDto(Solution s,String title) {
		this.setCode_length(s.getCode_length());
		this.setLanguage(s.getLanguage());
		this.setProblem_id(s.getProblem_id());
		this.setUsername(s.getUsername());
		this.setVerdict(s.getVerdict());
		this.setSubmit_date(s.getSubmit_date());
		this.setSolution_id(s.getSolution_id());
		this.setTitle(title);
	}
	public SolutionDto() {
	}
	
	
}
