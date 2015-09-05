package com.xujin.oj.ojmodel;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @Description:参加比赛的实体
 * @author xujin(作者)
 * @Version:V1.00(版本号)
 * @Create Date:2014-1-24(创建日期)
 */
@Entity
@Table(name = "attend", catalog = "jkoj")
public class Attend implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String username;
	private Integer contestId;
	private String defunct;
	private Integer solved;
	private Integer score;
	private Integer penalty;
	private Integer ATime;
	private Integer AWrongsubmits;
	private Integer BTime;
	private Integer BWrongsubmits;
	private Integer CTime;
	private Integer CWrongsubmits;
	private Integer DTime;
	private Integer DWrongsubmits;
	private Integer ETime;
	private Integer EWrongsubmits;
	private Integer FTime;
	private Integer FWrongsubmits;
	private Integer GTime;
	private Integer GWrongsubmits;
	private Integer HTime;
	private Integer HWrongsubmits;
	private Integer ITime;
	private Integer IWrongsubmits;
	private Integer JTime;
	private Integer JWrongsubmits;
	private Integer KTime;
	private Integer KWrongsubmits;
	private Integer LTime;
	private Integer LWrongsubmits;
	private Integer MTime;
	private Integer MWrongsubmits;
	private Integer NTime;
	private Integer NWrongsubmits;
	private Integer OTime;
	private Integer OWrongsubmits;
	private Integer PTime;
	private Integer PWrongsubmits;
	private Integer QTime;
	private Integer QWrongsubmits;
	private Integer RTime;
	private Integer RWrongsubmits;
	private Integer STime;
	private Integer SWrongsubmits;
	private Integer TTime;
	private Integer TWrongsubmits;
	private Integer UTime;
	private Integer UWrongsubmits;
	private Integer VTime;
	private Integer VWrongsubmits;
	private Integer WTime;
	private Integer WWrongsubmits;
	private Integer XTime;
	private Integer XWrongsubmits;
	private Integer YTime;
	private Integer YWrongsubmits;
	private Integer ZTime;
	private Integer ZWrongsubmits;

	// Constructors
	public Attend() {
		this.defunct="N";
		this.solved= 0;
		this.score=0;
		this.penalty= 0;
		this.ATime= 0;
		this.AWrongsubmits= 0;
		this.BTime= 0;
		this.BWrongsubmits= 0;
		this.CTime= 0;
		this.CWrongsubmits= 0;
		this.DTime= 0;
		this.DWrongsubmits= 0;
		this.ETime= 0;
		this.EWrongsubmits= 0;
		this.FTime= 0;
		this.FWrongsubmits= 0;
		this.GTime= 0;
		this.GWrongsubmits= 0;
		this.HTime= 0;
		this.HWrongsubmits= 0;
		this.ITime= 0;
		this.IWrongsubmits= 0;
		this.JTime= 0;
		this.JWrongsubmits= 0;
		this.KTime= 0;
		this.KWrongsubmits= 0;
		this.LTime= 0;
		this.LWrongsubmits= 0;
		this.MTime= 0;
		this.MWrongsubmits= 0;
		this.NTime= 0;
		this.NWrongsubmits= 0;
		this.OTime= 0;
		this.OWrongsubmits= 0;
		this.PTime= 0;
		this.PWrongsubmits= 0;
		this.QTime= 0;
		this.QWrongsubmits= 0;
		this.RTime= 0;
		this.RWrongsubmits= 0;
		this.STime= 0;
		this.SWrongsubmits= 0;
		this.TTime= 0;
		this.TWrongsubmits= 0;
		this.UTime= 0;
		this.UWrongsubmits= 0;
		this.VTime= 0;
		this.VWrongsubmits= 0;
		this.WTime= 0;
		this.WWrongsubmits= 0;
		this.XTime= 0;
		this.XWrongsubmits= 0;
		this.YTime= 0;
		this.YWrongsubmits= 0;
		this.ZTime= 0;
		this.ZWrongsubmits= 0;
	}
	

	/** minimal constructor */
	public Attend(Integer id) {
		this.id = id;
	}

	/** full constructor */
	public Attend(Integer id, String username, Integer contestId,
			String defunct, Integer solved, Integer score, Integer penalty,
			Integer ATime, Integer AWrongsubmits, Integer BTime,
			Integer BWrongsubmits, Integer CTime, Integer CWrongsubmits,
			Integer DTime, Integer DWrongsubmits, Integer ETime,
			Integer EWrongsubmits, Integer FTime, Integer FWrongsubmits,
			Integer GTime, Integer GWrongsubmits, Integer HTime,
			Integer HWrongsubmits, Integer ITime, Integer IWrongsubmits,
			Integer JTime, Integer JWrongsubmits, Integer KTime,
			Integer KWrongsubmits, Integer LTime, Integer LWrongsubmits,
			Integer MTime, Integer MWrongsubmits, Integer NTime,
			Integer NWrongsubmits, Integer OTime, Integer OWrongsubmits,
			Integer PTime, Integer PWrongsubmits, Integer QTime,
			Integer QWrongsubmits, Integer RTime, Integer RWrongsubmits,
			Integer STime, Integer SWrongsubmits, Integer TTime,
			Integer TWrongsubmits, Integer UTime, Integer UWrongsubmits,
			Integer VTime, Integer VWrongsubmits, Integer WTime,
			Integer WWrongsubmits, Integer XTime, Integer XWrongsubmits,
			Integer YTime, Integer YWrongsubmits, Integer ZTime,
			Integer ZWrongsubmits) {
		this.id = id;
		this.username = username;
		this.contestId = contestId;
		this.defunct = defunct;
		this.solved = solved;
		this.score = score;
		this.penalty = penalty;
		this.ATime = ATime;
		this.AWrongsubmits = AWrongsubmits;
		this.BTime = BTime;
		this.BWrongsubmits = BWrongsubmits;
		this.CTime = CTime;
		this.CWrongsubmits = CWrongsubmits;
		this.DTime = DTime;
		this.DWrongsubmits = DWrongsubmits;
		this.ETime = ETime;
		this.EWrongsubmits = EWrongsubmits;
		this.FTime = FTime;
		this.FWrongsubmits = FWrongsubmits;
		this.GTime = GTime;
		this.GWrongsubmits = GWrongsubmits;
		this.HTime = HTime;
		this.HWrongsubmits = HWrongsubmits;
		this.ITime = ITime;
		this.IWrongsubmits = IWrongsubmits;
		this.JTime = JTime;
		this.JWrongsubmits = JWrongsubmits;
		this.KTime = KTime;
		this.KWrongsubmits = KWrongsubmits;
		this.LTime = LTime;
		this.LWrongsubmits = LWrongsubmits;
		this.MTime = MTime;
		this.MWrongsubmits = MWrongsubmits;
		this.NTime = NTime;
		this.NWrongsubmits = NWrongsubmits;
		this.OTime = OTime;
		this.OWrongsubmits = OWrongsubmits;
		this.PTime = PTime;
		this.PWrongsubmits = PWrongsubmits;
		this.QTime = QTime;
		this.QWrongsubmits = QWrongsubmits;
		this.RTime = RTime;
		this.RWrongsubmits = RWrongsubmits;
		this.STime = STime;
		this.SWrongsubmits = SWrongsubmits;
		this.TTime = TTime;
		this.TWrongsubmits = TWrongsubmits;
		this.UTime = UTime;
		this.UWrongsubmits = UWrongsubmits;
		this.VTime = VTime;
		this.VWrongsubmits = VWrongsubmits;
		this.WTime = WTime;
		this.WWrongsubmits = WWrongsubmits;
		this.XTime = XTime;
		this.XWrongsubmits = XWrongsubmits;
		this.YTime = YTime;
		this.YWrongsubmits = YWrongsubmits;
		this.ZTime = ZTime;
		this.ZWrongsubmits = ZWrongsubmits;
	}

	@Id
	@GeneratedValue
	@Column(name = "id")
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "username")
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "contest_id")
	public Integer getContestId() {
		return this.contestId;
	}

	public void setContestId(Integer contestId) {
		this.contestId = contestId;
	}

	@Column(name = "defunct")
	public String getDefunct() {
		return this.defunct;
	}

	public void setDefunct(String defunct) {
		this.defunct = defunct;
	}

	@Column(name = "solved")
	public Integer getSolved() {
		return this.solved;
	}

	public void setSolved(Integer solved) {
		this.solved = solved;
	}

	@Column(name = "score")
	public Integer getScore() {
		return this.score;
	}

	public void setScore(Integer score) {
		this.score = score;
	}

	@Column(name = "penalty")
	public Integer getPenalty() {
		return this.penalty;
	}

	public void setPenalty(Integer penalty) {
		this.penalty = penalty;
	}

	@Column(name = "A_time")
	public Integer getATime() {
		return this.ATime;
	}

	public void setATime(Integer ATime) {
		this.ATime = ATime;
	}

	@Column(name = "A_wrongsubmits")
	public Integer getAWrongsubmits() {
		return this.AWrongsubmits;
	}

	public void setAWrongsubmits(Integer AWrongsubmits) {
		this.AWrongsubmits = AWrongsubmits;
	}

	@Column(name = "B_time")
	public Integer getBTime() {
		return this.BTime;
	}

	public void setBTime(Integer BTime) {
		this.BTime = BTime;
	}

	@Column(name = "B_wrongsubmits")
	public Integer getBWrongsubmits() {
		return this.BWrongsubmits;
	}

	public void setBWrongsubmits(Integer BWrongsubmits) {
		this.BWrongsubmits = BWrongsubmits;
	}

	@Column(name = "C_time")
	public Integer getCTime() {
		return this.CTime;
	}

	public void setCTime(Integer CTime) {
		this.CTime = CTime;
	}

	@Column(name = "C_wrongsubmits")
	public Integer getCWrongsubmits() {
		return this.CWrongsubmits;
	}

	public void setCWrongsubmits(Integer CWrongsubmits) {
		this.CWrongsubmits = CWrongsubmits;
	}

	@Column(name = "D_time")
	public Integer getDTime() {
		return this.DTime;
	}

	public void setDTime(Integer DTime) {
		this.DTime = DTime;
	}

	@Column(name = "D_wrongsubmits")
	public Integer getDWrongsubmits() {
		return this.DWrongsubmits;
	}

	public void setDWrongsubmits(Integer DWrongsubmits) {
		this.DWrongsubmits = DWrongsubmits;
	}

	@Column(name = "E_time")
	public Integer getETime() {
		return this.ETime;
	}

	public void setETime(Integer ETime) {
		this.ETime = ETime;
	}

	@Column(name = "E_wrongsubmits")
	public Integer getEWrongsubmits() {
		return this.EWrongsubmits;
	}

	public void setEWrongsubmits(Integer EWrongsubmits) {
		this.EWrongsubmits = EWrongsubmits;
	}

	@Column(name = "F_time")
	public Integer getFTime() {
		return this.FTime;
	}

	public void setFTime(Integer FTime) {
		this.FTime = FTime;
	}

	@Column(name = "F_wrongsubmits")
	public Integer getFWrongsubmits() {
		return this.FWrongsubmits;
	}

	public void setFWrongsubmits(Integer FWrongsubmits) {
		this.FWrongsubmits = FWrongsubmits;
	}

	@Column(name = "G_time")
	public Integer getGTime() {
		return this.GTime;
	}

	public void setGTime(Integer GTime) {
		this.GTime = GTime;
	}

	@Column(name = "G_wrongsubmits")
	public Integer getGWrongsubmits() {
		return this.GWrongsubmits;
	}

	public void setGWrongsubmits(Integer GWrongsubmits) {
		this.GWrongsubmits = GWrongsubmits;
	}

	@Column(name = "H_time")
	public Integer getHTime() {
		return this.HTime;
	}

	public void setHTime(Integer HTime) {
		this.HTime = HTime;
	}

	@Column(name = "H_wrongsubmits")
	public Integer getHWrongsubmits() {
		return this.HWrongsubmits;
	}

	public void setHWrongsubmits(Integer HWrongsubmits) {
		this.HWrongsubmits = HWrongsubmits;
	}

	@Column(name = "I_time")
	public Integer getITime() {
		return this.ITime;
	}

	public void setITime(Integer ITime) {
		this.ITime = ITime;
	}

	@Column(name = "I_wrongsubmits")
	public Integer getIWrongsubmits() {
		return this.IWrongsubmits;
	}

	public void setIWrongsubmits(Integer IWrongsubmits) {
		this.IWrongsubmits = IWrongsubmits;
	}

	@Column(name = "J_time")
	public Integer getJTime() {
		return this.JTime;
	}

	public void setJTime(Integer JTime) {
		this.JTime = JTime;
	}

	@Column(name = "J_wrongsubmits")
	public Integer getJWrongsubmits() {
		return this.JWrongsubmits;
	}

	public void setJWrongsubmits(Integer JWrongsubmits) {
		this.JWrongsubmits = JWrongsubmits;
	}

	@Column(name = "K_time")
	public Integer getKTime() {
		return this.KTime;
	}

	public void setKTime(Integer KTime) {
		this.KTime = KTime;
	}

	@Column(name = "K_wrongsubmits")
	public Integer getKWrongsubmits() {
		return this.KWrongsubmits;
	}

	public void setKWrongsubmits(Integer KWrongsubmits) {
		this.KWrongsubmits = KWrongsubmits;
	}

	@Column(name = "L_time")
	public Integer getLTime() {
		return this.LTime;
	}

	public void setLTime(Integer LTime) {
		this.LTime = LTime;
	}

	@Column(name = "L_wrongsubmits")
	public Integer getLWrongsubmits() {
		return this.LWrongsubmits;
	}

	public void setLWrongsubmits(Integer LWrongsubmits) {
		this.LWrongsubmits = LWrongsubmits;
	}

	@Column(name = "M_time")
	public Integer getMTime() {
		return this.MTime;
	}

	public void setMTime(Integer MTime) {
		this.MTime = MTime;
	}

	@Column(name = "M_wrongsubmits")
	public Integer getMWrongsubmits() {
		return this.MWrongsubmits;
	}

	public void setMWrongsubmits(Integer MWrongsubmits) {
		this.MWrongsubmits = MWrongsubmits;
	}

	@Column(name = "N_time")
	public Integer getNTime() {
		return this.NTime;
	}

	public void setNTime(Integer NTime) {
		this.NTime = NTime;
	}

	@Column(name = "N_wrongsubmits")
	public Integer getNWrongsubmits() {
		return this.NWrongsubmits;
	}

	public void setNWrongsubmits(Integer NWrongsubmits) {
		this.NWrongsubmits = NWrongsubmits;
	}

	@Column(name = "O_time")
	public Integer getOTime() {
		return this.OTime;
	}

	public void setOTime(Integer OTime) {
		this.OTime = OTime;
	}

	@Column(name = "O_wrongsubmits")
	public Integer getOWrongsubmits() {
		return this.OWrongsubmits;
	}

	public void setOWrongsubmits(Integer OWrongsubmits) {
		this.OWrongsubmits = OWrongsubmits;
	}

	@Column(name = "P_time")
	public Integer getPTime() {
		return this.PTime;
	}

	public void setPTime(Integer PTime) {
		this.PTime = PTime;
	}

	@Column(name = "P_wrongsubmits")
	public Integer getPWrongsubmits() {
		return this.PWrongsubmits;
	}

	public void setPWrongsubmits(Integer PWrongsubmits) {
		this.PWrongsubmits = PWrongsubmits;
	}

	@Column(name = "Q_time")
	public Integer getQTime() {
		return this.QTime;
	}

	public void setQTime(Integer QTime) {
		this.QTime = QTime;
	}

	@Column(name = "Q_wrongsubmits")
	public Integer getQWrongsubmits() {
		return this.QWrongsubmits;
	}

	public void setQWrongsubmits(Integer QWrongsubmits) {
		this.QWrongsubmits = QWrongsubmits;
	}

	@Column(name = "R_time")
	public Integer getRTime() {
		return this.RTime;
	}

	public void setRTime(Integer RTime) {
		this.RTime = RTime;
	}

	@Column(name = "R_wrongsubmits")
	public Integer getRWrongsubmits() {
		return this.RWrongsubmits;
	}

	public void setRWrongsubmits(Integer RWrongsubmits) {
		this.RWrongsubmits = RWrongsubmits;
	}

	@Column(name = "S_time")
	public Integer getSTime() {
		return this.STime;
	}

	public void setSTime(Integer STime) {
		this.STime = STime;
	}

	@Column(name = "S_wrongsubmits")
	public Integer getSWrongsubmits() {
		return this.SWrongsubmits;
	}

	public void setSWrongsubmits(Integer SWrongsubmits) {
		this.SWrongsubmits = SWrongsubmits;
	}

	@Column(name = "T_time")
	public Integer getTTime() {
		return this.TTime;
	}

	public void setTTime(Integer TTime) {
		this.TTime = TTime;
	}

	@Column(name = "T_wrongsubmits")
	public Integer getTWrongsubmits() {
		return this.TWrongsubmits;
	}

	public void setTWrongsubmits(Integer TWrongsubmits) {
		this.TWrongsubmits = TWrongsubmits;
	}

	@Column(name = "U_time")
	public Integer getUTime() {
		return this.UTime;
	}

	public void setUTime(Integer UTime) {
		this.UTime = UTime;
	}

	@Column(name = "U_wrongsubmits")
	public Integer getUWrongsubmits() {
		return this.UWrongsubmits;
	}

	public void setUWrongsubmits(Integer UWrongsubmits) {
		this.UWrongsubmits = UWrongsubmits;
	}

	@Column(name = "V_time")
	public Integer getVTime() {
		return this.VTime;
	}

	public void setVTime(Integer VTime) {
		this.VTime = VTime;
	}

	@Column(name = "V_wrongsubmits")
	public Integer getVWrongsubmits() {
		return this.VWrongsubmits;
	}

	public void setVWrongsubmits(Integer VWrongsubmits) {
		this.VWrongsubmits = VWrongsubmits;
	}

	@Column(name = "W_time")
	public Integer getWTime() {
		return this.WTime;
	}

	public void setWTime(Integer WTime) {
		this.WTime = WTime;
	}

	@Column(name = "W_wrongsubmits")
	public Integer getWWrongsubmits() {
		return this.WWrongsubmits;
	}

	public void setWWrongsubmits(Integer WWrongsubmits) {
		this.WWrongsubmits = WWrongsubmits;
	}

	@Column(name = "X_time")
	public Integer getXTime() {
		return this.XTime;
	}

	public void setXTime(Integer XTime) {
		this.XTime = XTime;
	}

	@Column(name = "X_wrongsubmits")
	public Integer getXWrongsubmits() {
		return this.XWrongsubmits;
	}

	public void setXWrongsubmits(Integer XWrongsubmits) {
		this.XWrongsubmits = XWrongsubmits;
	}

	@Column(name = "Y_time")
	public Integer getYTime() {
		return this.YTime;
	}

	public void setYTime(Integer YTime) {
		this.YTime = YTime;
	}

	@Column(name = "Y_wrongsubmits")
	public Integer getYWrongsubmits() {
		return this.YWrongsubmits;
	}

	public void setYWrongsubmits(Integer YWrongsubmits) {
		this.YWrongsubmits = YWrongsubmits;
	}

	@Column(name = "Z_time")
	public Integer getZTime() {
		return this.ZTime;
	}

	public void setZTime(Integer ZTime) {
		this.ZTime = ZTime;
	}

	@Column(name = "Z_wrongsubmits")
	public Integer getZWrongsubmits() {
		return this.ZWrongsubmits;
	}

	public void setZWrongsubmits(Integer ZWrongsubmits) {
		this.ZWrongsubmits = ZWrongsubmits;
	}
	public Integer getACtime(Integer i) {
		switch(i)
		{
		case 1:
			return ATime;
		case 2:
			return BTime;
		case 3:
			return CTime;
		case 4:
			return DTime;
		case 5:
			return ETime;
		case 6:
			return FTime;
		case 7:
			return GTime;
		case 8:
			return HTime;
		case 9:
			return ITime;
		case 10:
			return JTime;
		case 11:
			return KTime;
		case 12:
			return LTime;
		case 13:
			return MTime;
		case 14:
			return NTime;
		case 15:
			return OTime;
		case 16:
			return PTime;
		case 17:
			return QTime;
		case 18:
			return RTime;
		case 19:
			return STime;
		case 20:
			return TTime;
		case 21:
			return UTime;
		case 22:
			return VTime;
		case 23:
			return WTime;
		case 24:
			return XTime;
		case 25:
			return YTime;
		case 26:
			return ZTime;
		}
		return 0;
	}
	public Integer getwrongsubmits(Integer i) {
		switch(i)
		{
		case 1:
			return AWrongsubmits;
		case 2:
			return BWrongsubmits;
		case 3:
			return CWrongsubmits;
		case 4:
			return DWrongsubmits;
		case 5:
			return EWrongsubmits;
		case 6:
			return FWrongsubmits;
		case 7:
			return GWrongsubmits;
		case 8:
			return HWrongsubmits;
		case 9:
			return IWrongsubmits;
		case 10:
			return JWrongsubmits;
		case 11:
			return KWrongsubmits;
		case 12:
			return LWrongsubmits;
		case 13:
			return MWrongsubmits;
		case 14:
			return NWrongsubmits;
		case 15:
			return OWrongsubmits;
		case 16:
			return PWrongsubmits;
		case 17:
			return QWrongsubmits;
		case 18:
			return RWrongsubmits;
		case 19:
			return SWrongsubmits;
		case 20:
			return TWrongsubmits;
		case 21:
			return UWrongsubmits;
		case 22:
			return VWrongsubmits;
		case 23:
			return WWrongsubmits;
		case 24:
			return XWrongsubmits;
		case 25:
			return YWrongsubmits;
		case 26:
			return ZWrongsubmits;
		}
		return 0;
	}

}