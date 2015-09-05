package com.xujin.oj.ojmodel;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * @Description:比赛实体类
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name="contest"
    ,catalog="jkoj"
)
public class Contest  implements java.io.Serializable {

	 private static final long serialVersionUID = 1L;
	 
	 private int contestId;//比赛ID
     private String title;//比赛标题
     private Date startTime;//开始时间
     /**
  	 * 比赛的状态，0表示停用隐藏，1表示Running，2表示Not start
  	 * 3表示Ended
  	 */
  	 private int status;
   
	 private String description;//描述
     private Date endTime;//结束时间
     private Date startReg;//开始注册时间
     private Date endReg;//结束注册时间
	 private String createUser;//用户
     private Date createTime;//时间
     private String password;//比赛时进入的密码

     private String startTime1;//时间
     private String endTime1;//结束时间
     private String startReg1;//开始注册时间
     private String endReg1;//结束注册时间
     
     
     @Transient
	public String getEndTime1() {
		return endTime1;
	}

    
	public void setEndTime1(String endTime1) {
		this.endTime1 = endTime1;
	}

	@Transient
	public String getStartReg1() {
		return startReg1;
	}

	
	public void setStartReg1(String startReg1) {
		this.startReg1 = startReg1;
	}

	//@Column(name="end_reg")
	public String getEndReg1() {
		return endReg1;
	}

	
	public void setEndReg1(String endReg1) {
		this.endReg1 = endReg1;
	}

	@Transient
	public String getStartTime1() {
		return startTime1;
	}


	public void setStartTime1(String startTime1) {
		this.startTime1 = startTime1;
	}
	/*
      * 公开/内部（0/1）
      * **/
     private int private1;//是否公开
     private int type;//比赛类型
     
    
    // Constructors

    /** default constructor */
     public Contest() {
 		
 	}
    
	public Contest(String title, int status, String description,
			String password, String endTime1, String startReg1, String endReg1,
			String startTime1, int private1, int type) {
		super();
		this.title = title;
		this.status = status;
		this.description = description;
		this.password = password;
		this.endTime1 = endTime1;
		this.startReg1 = startReg1;
		this.endReg1 = endReg1;
		this.startTime1 = startTime1;
		this.private1 = private1;
		this.type = type;
	}

	@Id
	@GeneratedValue
    @Column(name="contest_id")
    public int getContestId() {
        return this.contestId;
    }
    
    public void setContestId(int contestId) {
        this.contestId = contestId;
    }
    
    @Column(name="title")
    public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}
    
    @Column(name="start_time")
    public Date getStartTime() {
        return this.startTime;
    }
    

	public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }
    
    @Column(name="end_time")
    public Date getEndTime() {
        return this.endTime;
    }
    
    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }
    
    
    @Column(name="description")
    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    @Column(name="private")
    public int getPrivate1() {
        return this.private1;
    }
    
    public void setPrivate1(int private1) {
		this.private1 = private1;
	}
    
    @Column(name="create_user")
    public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	@Column(name="create_time")
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	@Column(name="start_reg")
	public Date getStartReg() {
		return startReg;
	}

	public void setStartReg(Date startReg) {
		this.startReg = startReg;
	}

	@Column(name="end_reg")
	//@Transient
	public Date getEndReg() {
		return endReg;
	}

	public void setEndReg(Date endReg) {
		this.endReg = endReg;
	}

	@Column(name="type")
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	@Column(name="status")
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Column(name="password")
    public String getPassword() {
			return password;
    }
   public void setPassword(String password) {
			this.password = password;
		}
   /*************比赛列表特殊处理****完全可以重新设计一个Bean但是为了方便所以直接用*************/
    private Long leftTime;
	private String regleftTime;
	private String during;//比赛时长
	private Integer registrants;
	private String regStatus;
	private String isRegister;

	@Transient//表示不作为数据库字段使用
	public Long getLeftTime() {
		return leftTime;
	}


	public void setLeftTime(Long leftTime) {
		this.leftTime = leftTime;
	}

	@Transient
	public String getRegleftTime() {
		return regleftTime;
	}


	public void setRegleftTime(String regleftTime) {
		this.regleftTime = regleftTime;
	}

	@Transient
	public String getDuring() {
		return during;
	}


	public void setDuring(String during) {
		this.during = during;
	}

	@Transient
	public Integer getRegistrants() {
		return registrants;
	}


	public void setRegistrants(Integer registrants) {
		this.registrants = registrants;
	}

	@Transient
	public String getRegStatus() {
		return regStatus;
	}


	public void setRegStatus(String regStatus) {
		this.regStatus = regStatus;
	}

	@Transient
	public String getIsRegister() {
		return isRegister;
	}


	public void setIsRegister(String isRegister) {
		this.isRegister = isRegister;
	}
	 /*************比赛列表特殊处理*****************/
	
     private long timeLeft=0;
	
     @Transient
	public long getTimeLeft() {
		return timeLeft;
	}
	public void setTimeLeft(long timeLeft) {
		this.timeLeft = timeLeft;
	}
	
	
}