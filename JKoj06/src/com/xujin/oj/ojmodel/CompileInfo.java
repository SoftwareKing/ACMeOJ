package com.xujin.oj.ojmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * 编译信息实体
 * **/
@Entity
@Table(name="compile_info"
    ,catalog="jkoj"
)
public class CompileInfo  implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	// Fields    

     private Integer solutionId;//问题ID
     private String error;//编译产生的错误


    // Constructors

    /** default constructor */
    public CompileInfo() {
    }

	/** minimal constructor */
    public CompileInfo(Integer solutionId) {
        this.solutionId = solutionId;
    }
    
    /** full constructor */
    public CompileInfo(Integer solutionId, String error) {
        this.solutionId = solutionId;
        this.error = error;
    }

   
    @Id
	@GeneratedValue
    @Column(name="solution_id")
    public Integer getSolutionId() {
        return this.solutionId;
    }
    
    public void setSolutionId(Integer solutionId) {
        this.solutionId = solutionId;
    }
    
    
    @Column(name="error")
    public String getError() {
        return this.error;
    }
    
    public void setError(String error) {
        this.error = error;
    }
   








}