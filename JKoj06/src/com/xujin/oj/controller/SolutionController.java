package com.xujin.oj.controller;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xujin.basic.model.Pager;
import com.xujin.basic.model.SystemContext;
import com.xujin.oj.dto.SolutionDto;
import com.xujin.oj.model.User;
import com.xujin.oj.model.UserCmsException;
import com.xujin.oj.ojmodel.ContestProblem;
import com.xujin.oj.ojmodel.Problem;
import com.xujin.oj.ojmodel.Solution;
import com.xujin.oj.ojmodel.SourceCode;
import com.xujin.oj.service.ContestProblemService;
import com.xujin.oj.service.ProblemService;
import com.xujin.oj.service.SolutionService;
import com.xujin.oj.service.SourceCodeService;
import com.xujin.oj.service.UserService;
import com.xujin.oj.utils.PropertiesUtil;

@Controller
public class SolutionController {

	@Resource(name="solutionService")
	private SolutionService solutionService;
	
	@Resource(name="problemService")
	private ProblemService problemService;
	
	@Resource(name="sourceCodeService")
	private SourceCodeService sourceCodeService;
	
	@Resource(name="contestProblemService")
	private ContestProblemService contestProblemService;
	
	@Resource(name="userService")
	private UserService userService;
	
	
	/*显示所有问题状态*/
	@RequestMapping(value="/allstatus",method=RequestMethod.GET)
	public String allSolutionstatus(Model model) {
		SystemContext.setPageSize(100);
		SystemContext.setSort("solution_id");
	    SystemContext.setOrder("desc");
	    model.addAttribute("SolutionDto",new SolutionDto());
		//model.addAttribute("datas",this.solutionService.findSolutions());
	    model.addAttribute("datas",this.solutionService.findSolutionAndUser());
		return "problem/AllStatus";
	}
	
	
	/*显示所有问题状态*/
	@RequestMapping(value="/allstatus",method=RequestMethod.POST)
	public String allSolutionstatus(String username,int pid,int result,int compiler,Model model) {
		SystemContext.setPageSize(100);
		SystemContext.setSort("solution_id");
	    SystemContext.setOrder("desc");
	    User user=userService.loadByUsername(username);
	    int uid=0;
	    if(user!=null){
	    	uid=user.getId();
	    }
		//model.addAttribute("datas",this.solutionService.findSolutions());
	    Pager<SolutionDto> s=this.solutionService.findSolutionAndUserByTerm(uid, pid, result, compiler);
	    model.addAttribute("datas",s);
		return "problem/AllStatus";
	}
	
	
	/*显示问题状态*/
	@RequestMapping(value="/problem/status/{id}",method=RequestMethod.GET)
	public String problemstauts(@PathVariable int id,Model model) {
		model.addAttribute("problem", this.problemService.load(id));
		SystemContext.setPageSize(100);
		SystemContext.setSort("s.solution_id");
	    SystemContext.setOrder("desc");
		//model.addAttribute("datas", this.solutionService.findSolutionByproblemID(id));
		model.addAttribute("datas", this.solutionService.findSolutionByproblemID2(id));
		return "problem/stauts";
	}
	/*显示问题状态*/
	@RequestMapping(value="/problem/status/{id}",method=RequestMethod.POST)
	public String problemstauts(@PathVariable int id,String username,int result,int compiler,Model model) {
		SystemContext.setPageSize(100);
		SystemContext.setSort("s.solution_id");
	    SystemContext.setOrder("desc");
	    User user=userService.loadByUsername(username);
	    int uid=0;
	    if(user!=null){
	    	uid=user.getId();
	    }
	    model.addAttribute("problem", this.problemService.load(id));
	    Pager<SolutionDto> s=this.solutionService.findSolutionAndUserByTerm(uid, id, result, compiler);
	    model.addAttribute("datas",s);
	    return "problem/stauts";
	}
	
	/*问题--提交问题UI*/
	@RequestMapping(value="/problem/submit/{id}",method=RequestMethod.GET)
	public String problemsubmit(@PathVariable int id,Model model) {
	    Solution solution=new Solution();
	    solution.setProblem_id(id);
		model.addAttribute("solutionDto",solution);
		return "problem/submit";
	}
	
	
	/*提交问题评测*/
	@RequestMapping(value="/problem/submit/{id}",method=RequestMethod.POST)
	public String submitSolution(@PathVariable int id,@Valid Solution solutionDto,Model model, HttpSession session)
	{
		try {
			   String username = new String();
				User loginUser = (User)session.getAttribute("loginUser");
				username=loginUser.getUsername();
				//int userID=loginUser.getId();
				if(username==null){
					return "/login";
				}
				Date dt_prevSubmit = (Date)session.getAttribute("session_submit");
				Date dt = new Date(); 
				if(dt_prevSubmit!=null){
					//System.out.println(dt.getTime()-dt_prevSubmit.getTime());
					if(dt.getTime()-dt_prevSubmit.getTime()<3000){  
						System.out.println(username+" submit twice at 3 second.");
					//	this.addFieldError("tip", "");
						return "/allstatus";
					}
				}
				session.setAttribute("session_submit", dt);
				String source=solutionDto.getSource();
				if(source.length()<10||null==source){
					model.addAttribute("error","Source must at least 10 chars");
					return "problem/submit";
				}
				if(source.length()>65535){
					model.addAttribute("error", "Source must at most 65535 chars.");
					return "problem/submit";
				}
				Problem problem=problemService.load(id);
				if(null==problem){
				//	System.out.println("No such problem");
					model.addAttribute("error", "No such problem.");
					return "problem/submit";
				}
				
				
				//Solution sol = new Solution();
				solutionDto.setUsername(username);
				solutionDto.setProblem_id(id);
				//sol.setLanguage(solutionDto.getLanguage());
				solutionDto.setSubmit_date(dt);
				solutionDto.setCode_length(source.length());
			    solutionService.save(solutionDto);		
				
				if(null==solutionDto.getSolution_id()){
					//Skip the judge
					model.addAttribute("error","Submit failed,please retry.");
					return "problem/submit";
				}
				SourceCode ss = new SourceCode();
				ss.setSolutionId(solutionDto.getSolution_id());
				ss.setSource(source);
				sourceCodeService.save(ss);
				Properties prop = PropertiesUtil.getInstance().load("config");
				String[] cmd={prop.getProperty("OJ_PATH")+"Client.exe",Integer.toString(solutionDto.getSolution_id()),Integer.toString(solutionDto.getLanguage()),prop.getProperty("OJ_INI_PATH")};  
				try {			
					Runtime.getRuntime().exec(cmd);	
				} catch (IOException e) {	
					e.printStackTrace();
				}
		
		} catch (Exception e) {
			// TODO: handle exception
			UserCmsException userCmsException=new UserCmsException("Submit failed,please retry.");
			model.addAttribute("userError", userCmsException.getMessage());
			return "/userError";
		}
		//indexService.generateTopR();//刷新前台topRankList
		return "redirect:/allstatus";
	}
	
	/*比赛问题--提交问题UI*/
	@RequestMapping(value="/contest/problem/submit/{cid}/{num}",method=RequestMethod.GET)
	public String contestproblemsubmit(@PathVariable int cid,Model model) {
		Solution solution=new Solution();
		solution.setProblem_id(cid);
		model.addAttribute("solutionDto",solution);
		return "contest/submit";
	}
	
	/*比赛问题提交问题评测*/
	@RequestMapping(value="/contest/problem/submit/{cid}/{num}",method=RequestMethod.POST)
	public String contestsubmitSolution(@PathVariable int cid, @PathVariable String num, @Valid Solution solutionDto,Model model, HttpSession session)
	{
		try {
			
			User loginUser = (User)session.getAttribute("loginUser");
			String  username=loginUser.getUsername();
			//int userID=loginUser.getId();
			if(username==null){
				return "/login";
			}
			
			
			
			Date dt_prevSubmit = (Date)session.getAttribute("session_submit");
			Date dt = new Date(); 
			if(dt_prevSubmit!=null){
				//System.out.println(dt.getTime()-dt_prevSubmit.getTime());
				if(dt.getTime()-dt_prevSubmit.getTime()<3000){  
				//	System.out.println(username+" submit twice at 3 second.");
					//	this.addFieldError("tip", "");
					return "redirect:/contest/problem/status/"+cid;
				}
			}
			session.setAttribute("session_submit", dt);
			String source=solutionDto.getSource();
			if(source.length()<10||null==source){
				model.addAttribute("error","Source must at least 10 chars");
				return "contest/submit";
			}
			if(source.length()>65535){
				model.addAttribute("error", "Source must at most 65535 chars.");
				return "contest/submit";
			}
			ContestProblem problem=this.contestProblemService.queryProblemByNum(num, cid);
			if(null==problem){
			//	System.out.println("No such problem");
				model.addAttribute("error", "No such problem.");
				return "contest/submit";
			}
			
			
			
			solutionDto.setUsername(username);
			solutionDto.setProblem_id(problem.getProblem_id());
			solutionDto.setContest_id(problem.getContest_id());
			solutionDto.setSubmit_date(new Date());
			solutionDto.setCode_length(source.length());
			solutionService.save(solutionDto);		
			
			if(null==solutionDto.getSolution_id()){
				//Skip the judge
				model.addAttribute("error","Submit failed,please retry.");
				return "contest/submit";
			}
			SourceCode ss = new SourceCode();
			ss.setSolutionId(solutionDto.getSolution_id());
			ss.setSource(source);
			sourceCodeService.save(ss);
			
			Properties prop = PropertiesUtil.getInstance().load("config");
			String[] cmd={prop.getProperty("OJ_PATH")+"Client.exe",Integer.toString(solutionDto.getSolution_id()),Integer.toString(solutionDto.getLanguage()),prop.getProperty("OJ_INI_PATH")};  
			try {			
				Runtime.getRuntime().exec(cmd);	
			} catch (IOException e) {	
				e.printStackTrace();
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			//model.addAttribute("tip", "Submit failed,please retry.");
			UserCmsException userCmsException=new UserCmsException("Submit failed,please retry.");
			model.addAttribute("userError", userCmsException.getMessage());
			return "/userError";
		}
		return "redirect:/contest/problem/status/"+cid;
	}
}
	
