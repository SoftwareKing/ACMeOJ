package com.xujin.oj.dto;

import java.util.Date;


public class ProblemDto {
	 private Integer problemId;//题目ID，主键
     private String title;//题目标题
     private String description;//题目描述
     private String input;//输入说明
     private String output;//输出说明
     private String sampleInput;//输入参照
     private String sampleOutput;//输出参照
     private String spj;//是否为特殊题目
     private String hint;//暗示
     private String source;//题目来源
     private Date inDate;//题目入库时间
     private Integer timeLimit;//限时(秒
     private Integer memoryLimit;//空间限制(MByte)
    
     /**
  	 * 题目的状态，0表示启用，1表示停止
  	 */
  	 private int status;
     private Integer accepted;//总ac次数
     private Integer submit;//总提交次数
     private Integer solved;//解答（未用）
     
     private Integer submit_user;//提交人
	 private float ratio;
	 private String author;
	 private float difficulty;
	 public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Integer getAccepted() {
		return accepted;
	}
	public void setAccepted(Integer accepted) {
		this.accepted = accepted;
	}
	public Integer getSubmit() {
		return submit;
	}
	public void setSubmit(Integer submit) {
		this.submit = submit;
	}
	public Integer getSolved() {
		return solved;
	}
	public void setSolved(Integer solved) {
		this.solved = solved;
	}
	public Integer getSubmit_user() {
		return submit_user;
	}
	public void setSubmit_user(Integer submitUser) {
		submit_user = submitUser;
	}
	public float getRatio() {
		return ratio;
	}
	public void setRatio(float ratio) {
		this.ratio = ratio;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public float getDifficulty() {
		return difficulty;
	}
	public void setDifficulty(float difficulty) {
		this.difficulty = difficulty;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getOj_name() {
		return oj_name;
	}
	public void setOj_name(String ojName) {
		oj_name = ojName;
	}
	public Integer getOj_pid() {
		return oj_pid;
	}
	public void setOj_pid(Integer ojPid) {
		oj_pid = ojPid;
	}
	public Integer getIsvirtual() {
		return isvirtual;
	}
	public void setIsvirtual(Integer isvirtual) {
		this.isvirtual = isvirtual;
	}
	private String tag;
	 private Integer contest_id;
	 private String oj_name;
	 private Integer oj_pid;
	 private Integer isvirtual;
	 public Integer getContest_id() {
		return contest_id;
	}
	public void setContest_id(Integer contestId) {
		contest_id = contestId;
	}
	public Integer getProblemId() {
		return problemId;
	}
	public void setProblemId(Integer problemId) {
		this.problemId = problemId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getInput() {
		return input;
	}
	public void setInput(String input) {
		this.input = input;
	}
	public String getOutput() {
		return output;
	}
	public void setOutput(String output) {
		this.output = output;
	}
	public String getSampleInput() {
		return sampleInput;
	}
	public void setSampleInput(String sampleInput) {
		this.sampleInput = sampleInput;
	}
	public String getSampleOutput() {
		return sampleOutput;
	}
	public void setSampleOutput(String sampleOutput) {
		this.sampleOutput = sampleOutput;
	}
	public String getSpj() {
		return spj;
	}
	public void setSpj(String spj) {
		this.spj = spj;
	}
	public String getHint() {
		return hint;
	}
	public void setHint(String hint) {
		this.hint = hint;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Date getInDate() {
		return inDate;
	}
	public void setInDate(Date inDate) {
		this.inDate = inDate;
	}
	public Integer getTimeLimit() {
		return timeLimit;
	}
	public void setTimeLimit(Integer timeLimit) {
		this.timeLimit = timeLimit;
	}
	public Integer getMemoryLimit() {
		return memoryLimit;
	}
	public void setMemoryLimit(Integer memoryLimit) {
		this.memoryLimit = memoryLimit;
	}
	
	public ProblemDto()
	{
		
	}
	
	public ProblemDto(Integer problemId, String title, String description,
			String input, String output, String sampleInput,
			String sampleOutput, String spj, String hint, String source,
			Date inDate, Integer timeLimit, Integer memoryLimit, int status,
			Integer contestId) {
		
		this.problemId = problemId;
		this.title = title;
		this.description = description;
		this.input = input;
		this.output = output;
		this.sampleInput = sampleInput;
		this.sampleOutput = sampleOutput;
		this.spj = spj;
		this.hint = hint;
		this.source = source;
		this.inDate = inDate;
		this.timeLimit = timeLimit;
		this.memoryLimit = memoryLimit;
		this.status = status;
		contest_id = contestId;
	}
     
    
	
}
