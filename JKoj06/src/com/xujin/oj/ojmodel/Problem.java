package com.xujin.oj.ojmodel;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * @Description:
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name="problem"
    ,catalog="jkoj"
)
public class Problem  implements java.io.Serializable {

    
   	 private static final long serialVersionUID = 1L;
	
   	 private Integer problemId;//题目ID，主键
     private String title;//题目标题
     private String description;//题目描述
     private String input;//输入说明
     private String output;//输出说明
     private String sampleInput;//输入参照
     private String sampleOutput;//输出参照
     private int spj;//是否为特殊题目
     private String hint;//暗示
     private String source;//题目来源
     private Date inDate;//题目入库时间
     private Integer timeLimit;//限时(秒
     private Integer memoryLimit;//空间限制(MByte)
     
     //题目类型，有常规题目,比赛题目，在线教育题目
     private int type;
     
     @Column(name="type")
     public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

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
	 private Integer difficulty;
	 private String tag;
	 private Integer contest_id;
	 private String oj_name;
	 private Integer oj_pid;
	 private Integer isvirtual;

    // Constructors

    /** default constructor */
    public Problem() {
    	this.submit = 0;
		this.accepted = 0;
		this.submit_user = 0;
		this.solved = 0;
		this.ratio = 0;
		this.memoryLimit = 0;
		this.timeLimit = 0;
		this.difficulty = 0;
		this.spj = 0;
		this.inDate= new Date();
		this.oj_name="ACMeOJ";
		this.oj_pid = 0;
		this.isvirtual = 0 ;
		this.status = 0;
		this.type=0;
    	
    }

    @Id
	@GeneratedValue
    @Column(name="problem_id")
    public Integer getProblemId() {
        return this.problemId;
    }
    
    public void setProblemId(Integer problemId) {
        this.problemId = problemId;
    }
    
    @Column(name="title", nullable=false, length=200)
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }
    
    @Column(name="description")
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    @Column(name="input")
    public String getInput() {
        return this.input;
    }
    
    public void setInput(String input) {
        this.input = input;
    }
    
    @Column(name="output" )
    public String getOutput() {
        return this.output;
    }
    
    public void setOutput(String output) {
        this.output = output;
    }
    
    @Column(name="sample_input")
    public String getSampleInput() {
        return this.sampleInput;
    }
    
    public void setSampleInput(String sampleInput) {
        this.sampleInput = sampleInput;
    }
    
    @Column(name="sample_output")
    public String getSampleOutput() {
        return this.sampleOutput;
    }
    
    public void setSampleOutput(String sampleOutput) {
        this.sampleOutput = sampleOutput;
    }
    
    @Column(name="spj")
    public int getSpj() {
        return this.spj;
    }
    
    public void setSpj(int spj) {
        this.spj = spj;
    }
    
    @Column(name="hint")
    public String getHint() {
        return this.hint;
    }
    
    public void setHint(String hint) {
        this.hint = hint;
    }
    
    @Column(name="source")
    public String getSource() {
        return this.source;
    }
    
    public void setSource(String source) {
        this.source = source;
    }
    
    @Column(name="in_date", length=19)
    public Date getInDate() {
        return this.inDate;
    }
    
    public void setInDate(Date inDate) {
        this.inDate = inDate;
    }
    
    @Column(name="time_limit", nullable=false)
    public Integer getTimeLimit() {
        return this.timeLimit;
    }
    
    public void setTimeLimit(Integer timeLimit) {
        this.timeLimit = timeLimit;
    }
    
    @Column(name="memory_limit", nullable=false)
    public Integer getMemoryLimit() {
        return this.memoryLimit;
    }
    
    public void setMemoryLimit(Integer memoryLimit) {
        this.memoryLimit = memoryLimit;
    }
    
    @Column(name="status", nullable=false)
    public int getstatus() {
        return this.status;
    }
    
    public void setstatus(int status) {
        this.status = status;
    }
    
    @Column(name="accepted")
    public Integer getAccepted() {
        return this.accepted;
    }
    
    public void setAccepted(Integer accepted) {
        this.accepted = accepted;
    }
    
    @Column(name="submit")
    public Integer getSubmit() {
        return this.submit;
    }
    
    public void setSubmit(Integer submit) {
        this.submit = submit;
    }
    
    @Column(name="solved")
    public Integer getSolved() {
        return this.solved;
    }
    
    public void setSolved(Integer solved) {
        this.solved = solved;
    }
   
    /**************************************************/
    @Column(name="submit_user")
    public Integer getSubmit_user() {
			return submit_user;
    }
		public void setSubmit_user(Integer submitUser) {
			submit_user = submitUser;
  }
    
    @Column(name="author", length=30)
    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }
    
  
    @Column(name="difficulty")
    public Integer getDifficulty() {
        return this.difficulty;
    }
    
    public void setDifficulty(Integer difficulty) {
        this.difficulty = difficulty;
    }
    
    @Column(name="ratio", precision=12, scale=0)
    public Float getRatio() {
        return this.ratio;
    }
    
    public void setRatio(Float ratio) {
        this.ratio = ratio;
    }
    
    @Column(name="tag")
    public String getTag() {
        return this.tag;
    }
    
    public void setTag(String tag) {
        this.tag = tag;
    }
    
    @Column(name="contest_id")
    public Integer getContest_id() {
			return contest_id;
    }
   public void setContest_id(Integer contestId) {
			contest_id = contestId;
     }
    
    @Column(name="oj_name")
    public String getOj_name() {
			return oj_name;
	}
	public void setOj_name(String ojName) {
			oj_name = ojName;
	}
    
    @Column(name="oj_pid")
      public Integer getOj_pid() {
			return oj_pid;
		}
	public void setOj_pid(Integer ojPid) {
			oj_pid = ojPid;
	}
    
    @Column(name="isvirtual")
    public Integer getIsvirtual() {
        return this.isvirtual;
    }
    
    public void setIsvirtual(Integer isvirtual) {
        this.isvirtual = isvirtual;
    }

	public Problem(Integer problemId, String title, String description,
			String input, String output, String sampleInput,
			String sampleOutput, int spj, String hint, String source,
			Date inDate, Integer timeLimit, Integer memoryLimit, int status,
			Integer contestId,int type) {
		super();
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
		this.type=type;
	}
   



}