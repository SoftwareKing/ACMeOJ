package com.xujin.oj.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.basic.model.Pager;
import com.xujin.basic.model.SystemContext;
import com.xujin.oj.auth.AuthClass;
import com.xujin.oj.auth.AuthMethod;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.model.UserCmsException;
import com.xujin.oj.model.User;
import com.xujin.oj.ojmodel.Attend;
import com.xujin.oj.ojmodel.Contest;
import com.xujin.oj.ojmodel.ContestProblem;
import com.xujin.oj.service.AttendService;
import com.xujin.oj.service.ContestProblemService;
import com.xujin.oj.service.ContestService;
import com.xujin.oj.service.SolutionService;
import com.xujin.oj.service.UserService;
import com.xujin.oj.utils.DateUtil;

@Controller("contestController")
@AuthClass("login")
public class ContestController {
	
	@Resource(name="contestservice")
	private ContestService contestservice;
	
	@Resource(name="solutionService")
	private SolutionService solutionService;
	
	@Resource(name="contestProblemService")
	private ContestProblemService contestProblemService;
	
	@Resource(name="attendService")
	private AttendService attendService;
	
	@Resource(name="userService")
    private UserService userService;
	
	
	/*根据比赛ID查询问题的status*/
	@RequestMapping(value="/contest/problem/status/{id}",method=RequestMethod.GET)
	public String allSolutionstatus(@PathVariable int id,Model model) {
		model.addAttribute("contest", this.contestservice.load(id));
		SystemContext.setPageSize(100);
		SystemContext.setSort("s.solution_id");
	    SystemContext.setOrder("desc");
		//model.addAttribute("datas",this.solutionService.findSolutionByContestID(id));
	    model.addAttribute("datas",this.solutionService.findSolutionByContestID2(id));
		return "contest/AllStatus";
	}
	
	
	/*根据比赛ID查询问题的status*/
	@RequestMapping(value="/contest/problem/status/{id}",method=RequestMethod.POST)
	public String allSolutionstatus(@PathVariable int id,String username,int pid,int result,int compiler,Model model) {
		SystemContext.setPageSize(100);
		SystemContext.setSort("s.solution_id");
	    SystemContext.setOrder("desc");
	    User user=userService.loadByUsername(username);
	    int uid=0;
	    if(user!=null){
	    	uid=user.getId();
	    }
	    model.addAttribute("contest", this.contestservice.load(id));
	    Pager<SolutionDto> s=this.solutionService.findSolutionAndUserByTermCid(uid, pid, result, compiler,id);
	    model.addAttribute("datas",s);
	    return "contest/AllStatus";
	}
	
	
	@RequestMapping(value="/admin/contest/contests",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String contest(Model model) {
		model.addAttribute("datas",this.contestservice.findContests());
		return "contest/list";
	} 
	//前台一般用户看的比赛列表
	@RequestMapping(value="/contests",method=RequestMethod.GET)
	public String ContestsList(Model model) {
		  Date dt = new Date();
		  SystemContext.setSort("c.startTime");
	      SystemContext.setOrder("desc");
	      SystemContext.setPageSize(50);
		  Pager<Contest> ContestList =this.contestservice.findContestsBystatus();
		  List<Contest> ContestList1=ContestList.getDatas();
		  List<Contest> ContestList2 = new ArrayList<Contest>();
	      for(Contest c:ContestList1){
	    	 
	    	  if(c.getStartTime().getTime()>dt.getTime()){ //Not start
	    		  if(c.getStatus()!=2)
	    		  {  
	    			  Contest ct=this.contestservice.load(c.getContestId());
					ct.setStatus(2);
					this.contestservice.update(ct);
	    		  }
	    		//  System.out.println((c.getStartTime().getTime()-new Date().getTime())/1000);
				c.setLeftTime((c.getStartTime().getTime()-new Date().getTime())/1000);
			  System.out.println(c.getLeftTime());
	    	  }else if(c.getEndTime().getTime()>dt.getTime()){//Running
				
				if(c.getStatus()!=1)
	    		  { 
					Contest ct=this.contestservice.load(c.getContestId());
					ct.setStatus(1);
					this.contestservice.update(ct);
	    		  }
				c.setLeftTime((c.getEndTime().getTime()-new Date().getTime())/1000);
			}else{ //ended
				
				if(c.getStatus()!=3)
	    		  {  
					Contest ct=this.contestservice.load(c.getContestId());
					ct.setStatus(3);
					this.contestservice.update(ct);
	    		  }
				
			}    
	    	  ContestList2.add(c);
	    }
	      
	      ContestList.setDatas(ContestList2);
		  model.addAttribute("datas",ContestList);
		return "contest/contest_list";
	}
   //前台一般用户按比赛状态查询的比赛列表
	@RequestMapping(value="/contests/status/{id}",method=RequestMethod.GET)
	public String findContestsBystatus(@PathVariable int id,Model model) {
		Date dt = new Date();
		SystemContext.setSort("c.startTime");
	    SystemContext.setOrder("desc");
	    SystemContext.setPageSize(50);
	    if(id!=3)
	    {
	    	Pager<Contest> ContestList =this.contestservice.findContestsBystatus();
			  List<Contest> ContestList1=ContestList.getDatas();
			
		      for(Contest c:ContestList1){
		    	 
		    	  if(c.getStartTime().getTime()>dt.getTime()){ //Not start
		    		  if(c.getStatus()!=2)
		    		  {  
		    			  Contest ct=this.contestservice.load(c.getContestId());
						 ct.setStatus(2);
						this.contestservice.update(ct);
		    		  }
		    		 
		    	  }else if(c.getEndTime().getTime()>dt.getTime()){//Running
					
					if(c.getStatus()!=1)
		    		  { 
						Contest ct=this.contestservice.load(c.getContestId());
						ct.setStatus(1);
						this.contestservice.update(ct);
		    		  }
				}else{ //ended
					
					if(c.getStatus()!=3)
		    		  {  
						Contest ct=this.contestservice.load(c.getContestId());
						ct.setStatus(3);
						this.contestservice.update(ct);
		    		  }
					
				}    
		    }
	    	
	    }
		switch(id){
		  case 1://表示running
			  Pager<Contest> runList = this.contestservice.findContestsBystatus(id);
			  List<Contest> runList2 = new ArrayList<Contest>();
			  List<Contest> runList1 =runList.getDatas();
		      for(Contest c:runList1){
					 //c.setDuring(DateUtil.secondToString((c.getEndTime().getTime()-c.getStartTime().getTime())/1000));
					//clb_.setRegistrants(attendService.countContestAttends(c.getContest_id()));
					if(c.getEndTime().getTime()>dt.getTime()){ //没有开始状态的比赛的结束时间大于当前系统的时间
					    if(c.getStatus()!=1) 
					    {
					    	Contest ct=this.contestservice.load(c.getContestId());
							ct.setStatus(1);
							this.contestservice.update(ct);
					    }
						
						 c.setLeftTime((c.getEndTime().getTime()-new Date().getTime())/1000);
					}
					runList2.add(c);
				}
		      runList.setDatas(runList2);
			  model.addAttribute("datas",runList);
			 
			  break;
		  case 2://表示Not Start
			  Pager<Contest> startList = this.contestservice.findContestsBystatus(id);
			  List<Contest> startList2 = new ArrayList<Contest>();
			  List<Contest> startList1 =startList.getDatas();
		      for(Contest c:startList1){
					//c.setDuring(DateUtil.secondToString((c.getEndTime().getTime()-c.getStartTime().getTime())/1000));
					//clb_.setRegistrants(attendService.countContestAttends(c.getContest_id()));
					if(c.getEndTime().getTime()>dt.getTime()){ //没有开始状态的比赛的结束时间大于当前系统的时间
						if(c.getStatus()!=2) 
					     {
							Contest ct=this.contestservice.load(c.getContestId());
							ct.setStatus(2);
							this.contestservice.update(ct);
					     }
						 c.setLeftTime((c.getStartTime().getTime()-new Date().getTime())/1000);
					}
					startList2.add(c);
				}
		      startList.setDatas(startList2);
			  model.addAttribute("datas",startList);
			  break;
		  case 3://表示结束
			 Pager<Contest> endedList =this.contestservice.findContestsBystatus(id);
			  List<Contest> endedList2 = new ArrayList<Contest>();
			  List<Contest> endedList1 =endedList.getDatas();
		      for(Contest c:endedList1){
					//c.setDuring(DateUtil.secondToString((c.getEndTime().getTime()-c.getStartTime().getTime())/1000));
					//clb_.setRegistrants(attendService.countContestAttends(c.getContest_id()));
					if(c.getStatus()!=3) 
				     {
						Contest ct=this.contestservice.load(c.getContestId());
						ct.setStatus(3);
						this.contestservice.update(ct);
				     }
					endedList2.add(c);
				}
		      endedList.setDatas(endedList2);
			  model.addAttribute("datas",endedList);
			  break;
		
		}
		return "contest/contest_list";
		//return "contest/contest_status_list";
	}
	/*增加contestUI页面**/
	@RequestMapping(value="/admin/contest/add",method=RequestMethod.GET)
	@AuthMethod//表示只能管理员访问
	public String contestaddUI(Model model) {
		model.addAttribute("contest",new Contest());
		return "contest/add";
	}
	/*增加contest*/
	@RequestMapping(value="/admin/contest/add",method=RequestMethod.POST)
	@AuthMethod//表示只能管理员访问
	public String contestadd(Contest contest,BindingResult br,Model model,HttpSession session){
        
		if(br.hasErrors()) {
			
			return "contest/add";
		}
		
			String username = new String();
			User loginUser = (User)session.getAttribute("loginUser");
			username=loginUser.getUsername();
			if(username==null){
				return "/login";
			}
			contest.setStartTime(DateUtil.strToDate(contest.getStartTime1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			contest.setEndReg(DateUtil.strToDate(contest.getEndReg1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			contest.setEndTime(DateUtil.strToDate(contest.getEndTime1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			contest.setStartReg(DateUtil.strToDate(contest.getStartReg1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			this.contestservice.save(contest);
			return "redirect:/admin/contest/contests";
	}
	@RequestMapping(value="/admin/contest/update/{id}",method=RequestMethod.GET)
	public String update(@PathVariable int id,Model model) {
		Contest ct=this.contestservice.load(id); 
		ct.setStartTime1(DateUtil.dateTimeToStr(ct.getStartTime(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
		ct.setEndReg1(DateUtil.dateTimeToStr(ct.getEndReg(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
		ct.setEndTime1(DateUtil.dateTimeToStr(ct.getEndTime(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
		ct.setStartReg1(DateUtil.dateTimeToStr(ct.getStartReg(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
		
		model.addAttribute("contestDto",ct);//user,user
		return "contest/update";
	}
	
	@RequestMapping(value="/admin/contest/update/{id}",method=RequestMethod.POST)
	public String update(@PathVariable int id,@Valid Contest contestDto,HttpSession session,BindingResult br) {
		 if(br.hasErrors()) {
			
			return "admin/contest/update";
		}
		   String username = new String();
			User loginUser = (User)session.getAttribute("loginUser");
			username=loginUser.getUsername();
			if(username==null){
				return "/login";
			}
			Contest ct=this.contestservice.load(id);
			ct.setTitle(contestDto.getTitle());
			ct.setDescription(contestDto.getDescription());
			ct.setStartTime(DateUtil.strToDate(contestDto.getStartTime1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			ct.setEndReg(DateUtil.strToDate(contestDto.getEndReg1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			ct.setEndTime(DateUtil.strToDate(contestDto.getEndTime1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			ct.setStartReg(DateUtil.strToDate(contestDto.getStartReg1(),DateUtil.DATE_TIME_FORMAT_YYYY_MM_DD_HH_MI_SS));
			
			/*ct.setStartTime(contestDto.getStartTime());
			ct.setEndReg(contestDto.getEndReg());
			ct.setEndTime(contestDto.getEndTime());
			ct.setStartReg(contestDto.getStartReg());
			if((contestDto.getPassword()!=null))*/
			{
				ct.setPassword(contestDto.getPassword());
			}
			ct.setStatus(contestDto.getStatus());
			ct.setPrivate1(contestDto.getPrivate1());
			ct.setType(contestDto.getType());
		this.contestservice.update(ct);
		return "redirect:/admin/contest/contests";
	}
	
	/*管理员显示比赛内容*/
	@RequestMapping(value="/admin/contest/contests/{id}",method=RequestMethod.GET)
	public String show(@PathVariable int id,Model model) {
		model.addAttribute("contest", this.contestservice.load(id));
		return "contest/show";
	}
	
	//按ID删除
	@RequestMapping(value="/admin/contest/delete/{id}",method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		this.contestservice.delete(id);
		this.contestProblemService.delete(id);
		return "redirect:/admin/contest/contests";
	}
	
	
	
	
/*------------------------------------------用户参加比赛--------------------------------------------------------*/
	@RequestMapping(value="/contest/register/{id}",method=RequestMethod.GET)
	public String registerToContest(@PathVariable int id,Model model,HttpSession session) {
			User loginUser = (User)session.getAttribute("loginUser");
			String username =loginUser.getUsername();
			Contest contest =contestservice.load(id);
			model.addAttribute("attendService", attendService.queryUserAttend(id,username));
			Date nowDate=new Date(); 
			if(username==null){
				return "/user/login";
			}
			else if (attendService.queryUserAttend(id, username) != null ) {
				UserCmsException userCmsException=new UserCmsException("You already took part in the contest! Don't need to repeat the.");
				model.addAttribute("userError",userCmsException);
				//System.out.println("你已经参加了该比赛！无需重复参加！");
				return "/userError";
			}
			else if(nowDate.getTime()<contest.getStartReg().getTime()){
				UserCmsException userCmsException=new UserCmsException("Registration hasn't started.");
				model.addAttribute("userError",userCmsException);
				//model.addAttribute("userError", "Registration hasn't started.");
				//System.out.println("Registration hasn't started.");
				return "/userError";
			}
			else if(nowDate.getTime()>contest.getEndReg().getTime()){
				UserCmsException userCmsException=new UserCmsException("You missed the registration time.");
				model.addAttribute("userError",userCmsException);
				//model.addAttribute("userError", "You missed the registration time.");
				//System.out.println("You missed the registration time.");
				return "/userError";
			}
			Attend attend = new Attend();
			attend.setUsername(loginUser.getUsername());
			attend.setContestId(id);
			attendService.save(attend);	
			//System.out.println("参加比赛成功！");
		    return "redirect:/contests";
	}
	
	
	/*
	 * 跳转到输入密码界面
	 */
	@RequestMapping(value="/contest/inputpwd/{id}",method=RequestMethod.GET)
	public String InputPwd(@PathVariable int id,Model model){
		Contest contest =contestservice.load(id);
		model.addAttribute("contest", contest);
		return "/contest/inputPwd";
	}
	
	/*
	 * 输入密码
	 */
	@RequestMapping(value="/contest/pwdvalidate/{id}",method=RequestMethod.POST)
	public String contestPwdValidate(@PathVariable int id,String password,Model model){
		Contest contest =contestservice.load(id);
		String Cpassword=contest.getPassword();
		if(Cpassword.equals(password)){
			return "redirect:/contests/"+id;
		}
		UserCmsException userCmsException=new UserCmsException("password is error.");
		System.out.println("password is error.");
		model.addAttribute("userError",userCmsException);
		return "/userError";	
			
	}
	
/*-----------------------------------------------------------------------------------------------*/
	
	@RequestMapping(value="/contest/ranklist/{id}",method=RequestMethod.GET)
	public String contestranklist(@PathVariable int id,HttpSession session,Model model) {
		
		List<ContestProblem> cproblemList=new ArrayList<ContestProblem>();
		List<User> userList=new ArrayList<User>();
		List<Integer> rankList = new ArrayList<Integer>();
		Pager<Attend> attendList=new Pager<Attend>();
		Map<String, List<String>> acTimeList = new HashMap<String, List<String>>();
		Map<String, List<Integer>> wrongSubmitsList = new HashMap<String, List<Integer>>();
		Map<String, List<Integer>> acTimeIntList = new HashMap<String, List<Integer>>();
		List<String> penaltyList = new ArrayList<String>();
		try {
				Contest contest = this.contestservice.load(id);
				if(contest==null){
					model.addAttribute("contestId", "No such problem.");
					return "redirect:/contests/"+id;
				}
				model.addAttribute("contest",contest);
				Date nowTime = new Date();
				if(nowTime.getTime() < contest.getStartTime().getTime()){
					contest.setTimeLeft(-1);
					
				}else if(nowTime.getTime() > contest.getEndTime().getTime()){
					
					contest.setTimeLeft(0);
				}else{
					
					contest.setTimeLeft((contest.getEndTime().getTime()-nowTime.getTime())/1000);
				}
				attendList= this.attendService.queryAttends(id);
				List<Attend> attendList_=attendList.getDatas();
				cproblemList = this.contestProblemService.querylistProblems(id);
				for (Attend c : attendList_) {
					List<String> ACtime_ = new ArrayList<String>();
					List<Integer> wrongSubmit_ = new ArrayList<Integer>();
					List<Integer> acTimeInt_ = new ArrayList<Integer>();
					userList.add(userService.loadByUsername(c.getUsername()));
					rankList.add(attendService.getUserRank(c,contest.getType()));
					penaltyList.add(DateUtil.penaltyString(c.getPenalty()));
					for (int i = 1; i <= cproblemList.size(); i++) {
						Integer tInt = c.getACtime(i);
						acTimeInt_.add(tInt);
						ACtime_.add(DateUtil.penaltyString(tInt));
						wrongSubmit_.add(c.getwrongsubmits(i));
					}
					acTimeList.put(c.getUsername(), ACtime_);
					wrongSubmitsList.put(c.getUsername(), wrongSubmit_);
					acTimeIntList.put(c.getUsername(), acTimeInt_);
				}
		} catch (Exception e) {
			// TODO: handle exception
			model.addAttribute("tip", "Unknown error.");
			return "error";
		}	
		model.addAttribute("attendList",attendList);//所有参赛人员用于分页
		model.addAttribute("rankList", rankList);//排名列表
		model.addAttribute("userList", userList);//用户列表
		model.addAttribute("acTimeIntList", acTimeIntList);//AC了几个题
		model.addAttribute("penaltyList", penaltyList);
		model.addAttribute("wrongSubmits", wrongSubmitsList);
		model.addAttribute("cproblemList", cproblemList);//比赛题目序号
		model.addAttribute("acTimeList", acTimeList);//AC每个题所用的时间
		return "contest/ranklist";
		
	}
	
	@RequestMapping(value="/contest/ranklist",method=RequestMethod.GET)
	public String contestranklist2()
	{
		
		return "contest/ranklist";
	}
	

}
