package com.xujin.oj.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
@Entity
@Table(name="users")
public class User {
	
	private int id;
	/**
	 * 用户登录名称
	 */
	private String username;
	/**
	 * 用户登录密码
	 */
	private String password;
	
	/*
	 * 用户提交次数
	 * **/
	 private Integer submit;
	 
	 /*
	  * 成功次数
	 * **/
     private Integer solved;
     
     /*
	  * 用户所在学校
	 * **/
     private String school;
	/**
	 * 用户的中文名称
	 */
	private String nickname;
	/**
	 * 用户的邮件
	 */
	private String email;
	/**
	 * 用户的联系电话
	 */
	private String phone;
	/**
	 * 用户的状态：0表示停用，1表示启用
	 */
	private int status;
	
	private Integer rating;
	
	@Column(name="rating")
	public Integer getRating() {
		return rating;
	}

	public void setRating(Integer rating) {
		this.rating = rating;
	}
	/**
	 * 创建时间 不可以更新修改
	 */
	private Date createDate;
	
	public User(int id, String username, String password, Integer submit,
			Integer solved, String school, String nickname, String email,
			String phone, int status, Date createDate) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.submit = submit;
		this.solved = solved;
		this.school = school;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.createDate = createDate;
	}

	public User() {
		this.solved = 0;
		this.submit = 0;
		this.rating = 0;
	}
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@NotNull(message="用户名不能为空")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	@NotNull(message="用户密码不能为空")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Email(message="邮件格式不正确")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Column(name="create_date")
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	 
	@Column(name="school",length=100)
	  public String getSchool() {
	        return this.school;
	    }
	     public void setSchool(String school) {
	        this.school = school;
	 }
	
}
