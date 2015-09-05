package com.xujin.oj.ojmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * @Description:记录源代码
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name="solution_source"
    ,catalog="jkoj"
)
public class SourceCode  implements java.io.Serializable {


	private static final long serialVersionUID = 1L;
	// Fields    

     private int solutionId;//运行id（主键
     private String source;//源代码


    // Constructors

    /** default constructor */
    public SourceCode() {
    }

    
    /** full constructor */
    public SourceCode(int solutionId, String source) {
        this.solutionId = solutionId;
        this.source = source;
    }
    @Id
    @Column(name="solution_id")
    public int getSolutionId() {
        return this.solutionId;
    }
    
    public void setSolutionId(int solutionId) {
        this.solutionId = solutionId;
    }
    
    @Column(name="source", nullable=false)
    public String getSource() {
        return this.source;
    }
    
    public void setSource(String source) {
        this.source = source;
    }
   
}